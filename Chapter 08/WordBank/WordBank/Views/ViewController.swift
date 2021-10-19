//
//  ViewController.swift
//  WordBank
//
//  Created by Gaurang on 31/03/2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, WordDelegate {
    
    @IBOutlet weak var wordsTableView: UITableView!
    var wordsArray: [Word] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "My Word Bank"
        wordsTableView.delegate = self
        wordsTableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.wordsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        cell.textLabel?.text = wordsArray[indexPath.row].word + " | " + (wordsArray[indexPath.row].translation ?? "")
        cell.detailTextLabel?.text = wordsArray[indexPath.row].example
        
        if let image = wordsArray[indexPath.row].image {
            cell.imageView?.image =  image
        } else {
            cell.imageView?.image =  UIImage(imageLiteralResourceName: "Camera")
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "updateWord", sender: wordsArray[indexPath.row])
    }
    
    func didSaveWord(word savedWord: Word) {
        self.wordsArray.append(savedWord)
        self.wordsTableView.reloadData()
    }
    
    func didUpdateWord(word updatedWord: Word) {
        //TO:DO
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addNewWord" {
            let secondView = segue.destination as! SecondViewController
            secondView.delegate = self
        } else if segue.identifier == "updateWord" {
            let secondView = segue.destination as! SecondViewController
            secondView.delegate = self
            secondView.word = sender as? Word
        }
    }

}

