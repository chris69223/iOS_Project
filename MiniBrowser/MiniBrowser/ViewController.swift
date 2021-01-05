//
//  ViewController.swift
//  MiniBrowser
//
//  Created by 유저 on 2021/01/05.
//

import UIKit
import WebKit

class ViewController: UIViewController, UITextFieldDelegate, WKNavigationDelegate {

    @IBOutlet weak var bookMarkSegmentContorl: UISegmentedControl!
    @IBOutlet weak var urlTextField: UITextField!
    @IBOutlet weak var mainWebView: WKWebView!
    @IBOutlet weak var spinActivity: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //초기화  - 처음에 페이스북이 초기화 되도록
        let initialURL = "https://www.facebook.com"
        let myURL = URL(string:initialURL)
        let myRequest = URLRequest(url:myURL!)
        mainWebView.load(myRequest)
        urlTextField.text = initialURL
        mainWebView.navigationDelegate = self
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        var urlString = "\(urlTextField.text!)"
        if !urlString.hasPrefix("https://"){
            urlString = "https://\(urlTextField.text!)"
        }
        urlTextField.text = urlString
        mainWebView.load(URLRequest(url: URL(string: urlString)!))
        return true
    }
    @IBAction func bookMarkAction(_ sender: Any) {
        let bookMarkURL = bookMarkSegmentContorl.titleForSegment(at: bookMarkSegmentContorl.selectedSegmentIndex)
        let urlString = "https://www.\(bookMarkURL!).com"
        urlTextField.text = urlString
        mainWebView.load(URLRequest(url: URL(string: urlString)!))
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation){
        spinActivity.startAnimating()
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation){
        spinActivity.stopAnimating()
    }
    
    @IBAction func goBackAction(_ sender: Any) {
        mainWebView.goBack()
    }
    @IBAction func goForwarAction(_ sender: Any) {
        mainWebView.goForward()
    }
    @IBAction func stopLoadingAction(_ sender: Any) {
        mainWebView.stopLoading()
    }
    @IBAction func reloadAction(_ sender: Any) {
        mainWebView.reload()
    }
    
}

