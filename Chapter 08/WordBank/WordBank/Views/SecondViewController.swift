//
//  SecondViewController.swift
//  WordBank
//
//  Created by Gaurang on 02/04/2021.
//

import UIKit

class SecondViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var wordTextField: UITextField!
    @IBOutlet weak var translationTextField: UITextField!
    @IBOutlet weak var exampleTextField: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var imageButton: UIButton!
    @IBOutlet weak var wordImageView: UIImageView!
    var delegate: WordDelegate?
    var word: Word?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = word == nil ? "Add new word": "Word details"
        
        if let word = word {
            wordTextField.text = word.word
            translationTextField.text = word.translation
            exampleTextField.text = word.example
            wordImageView.image = word.image
        }
    }
    
    @IBAction func imageButtonClicked(_ sender: Any) {
        let pickerController = UIImagePickerController()
        pickerController.delegate = self
        pickerController.allowsEditing = true
        pickerController.mediaTypes = ["public.image", "public.movie"]
        pickerController.sourceType =  UIImagePickerController.isSourceTypeAvailable(.camera) == true ? .camera : .photoLibrary
        self.present(pickerController, animated: true, completion: nil)
    }
    
    
    @IBAction func saveButtonClicked(_ sender: Any) {
        
        if let delegate = self.delegate {
            if word != nil {
                word?.word = wordTextField.text
                word?.translation = translationTextField.text
                word?.example = exampleTextField.text
                word?.image = wordImageView.image
                delegate.didUpdateWord(word: word!)
            } else {
                let savedWord = Word(word: self.wordTextField.text, translation: self.translationTextField.text, example: self.exampleTextField.text, image: wordImageView.image)
                delegate.didSaveWord(word: savedWord)
            }
        }
        self.navigationController?.popViewController(animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        let capturedImage = info[UIImagePickerController.InfoKey.editedImage]
                                                        as? UIImage
          if let image = capturedImage {
            wordImageView.image = image
          }

          dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
}
