//
//  NewPlacesTableViewController.swift
//  MyPlaces
//
//  Created by Alexey on 10.06.2020.
//  Copyright © 2020 ByteApp. All rights reserved.
//

import UIKit

class NewPlacesTableViewController: UITableViewController {
    
    @IBOutlet weak var imageOfPlace: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.tableFooterView = UIView() // Removing unnecessary markup
    }
    
    // MARK: - Table View Delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let cameraIcon = #imageLiteral(resourceName: "camera")
        let photoGalleryIcon = #imageLiteral(resourceName: "photo")
        
        if indexPath.row == 0 {
            let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
            
            let camera = UIAlertAction(title: "Camera", style: .default) { _ in
                self.choseImagePicker(source: .camera)
            }
            camera.setValue(cameraIcon, forKey: "image")
            camera.setValue(CATextLayerAlignmentMode.left, forKey: "titleTextAlignment")
            
            let photoGallery = UIAlertAction(title: "Photo Gallery", style: .default) { _ in
                self.choseImagePicker(source: .photoLibrary)
            }
            photoGallery.setValue(photoGalleryIcon, forKey: "image")
            photoGallery.setValue(CATextLayerAlignmentMode.left, forKey: "titleTextAlignment")

            let cancel = UIAlertAction(title: "Cancel", style: .cancel)
            
            actionSheet.addAction(camera)
            actionSheet.addAction(photoGallery)
            actionSheet.addAction(cancel)
            
            present(actionSheet, animated: true)
        } else {
            view.endEditing(true)
        }
    }
    
}

// MARK: - Text Field Delegate

extension NewPlacesTableViewController: UITextFieldDelegate {
    // Hide keyboard by pressing a key "DONE"
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

// MARK: - Work with image

extension NewPlacesTableViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func choseImagePicker(source: UIImagePickerController.SourceType) {
        if UIImagePickerController.isSourceTypeAvailable(source) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.allowsEditing = true // Allows you to edit the selected image
            imagePicker.sourceType = source
            present(imagePicker, animated: true)
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController,
                               didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imageOfPlace.image = info[.editedImage] as? UIImage
        imageOfPlace.contentMode = .scaleAspectFit
        imageOfPlace.clipsToBounds = true
        dismiss(animated: true)
    }
}
