//
//  ViewController.swift
//  VisualBookManager
//
//  Created by 유저 on 2020/12/28.
//

import UIKit

class ViewController: UIViewController {
    var myBookManager = BookManager()
    
    @IBOutlet weak var  outputTextView: UITextView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var authorTextField: UITextField!
    @IBOutlet weak var genreTextField: UITextField!
    
    @IBOutlet weak var countLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let book1 = Book(name: "사랑과전쟁", genre: "비극", author: "민성홍")

        let book2 = Book(name: "민성홍의 낮져밤이", genre: "에로", author: "민선홍")
        let book3 = Book(name: "홍이와 상이", genre: "코메디", author: "고영상")


        myBookManager.registerBook(bookObject: book1)
        myBookManager.registerBook(bookObject: book2)
        myBookManager.registerBook(bookObject: book3)
        countLable.text = "\(myBookManager.countBooks())"
        
    }
    @IBAction func registerAction(_ sender: Any){
        var bookTemp = Book()
        bookTemp.name = nameTextField.text!
        bookTemp.author = authorTextField.text!
        bookTemp.genre = genreTextField.text!
        
        myBookManager.registerBook(bookObject: bookTemp)
        outputTextView.text = "\(nameTextField.text!)가 등록됐습니다!"
        countLable.text = "\(myBookManager.countBooks())"
    }
    
    @IBAction func searchAction(_ sender: Any){
        let resultBook = myBookManager.searchBook(name: nameTextField.text!)
        if resultBook != nil{
            outputTextView.text = resultBook
        }else{
            outputTextView.text = "너가 찾는 책 없어요!"
        }
    }
    
    @IBAction func removeAction(_ sender:Any){
        myBookManager.removeBook(name: nameTextField.text!)
        outputTextView.text = "\(nameTextField.text!)가 삭제됐습니당!"
        countLable.text = "\(myBookManager.countBooks())"
    }
    
    @IBAction func showAllBooksAction(_ sender: Any){
//        print("showAllBookAction")
        outputTextView.text = myBookManager.showAllBooks()
        
    }
    

}

