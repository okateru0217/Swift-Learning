//
//  TextFieldController.swift
//  ShoppingMemo
//
//  Created by 岡澤輝明 on 2021/03/28.
//

import UIKit
import Foundation

// キーボードを開いた時、テキストフィールドを一緒に上へ上げる処理
extension ViewController: UITextFieldDelegate {
    
    func keyboardWillChangeFrameNotification() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillChangeFrameNotification, object: nil)
    }

    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y == 0 {
                self.view.frame.origin.y -= keyboardSize.height
            } else {
                let suggestionHeight = self.view.frame.origin.y + keyboardSize.height
                self.view.frame.origin.y -= suggestionHeight
            }
        }
    }
    
}

// キーボードを閉じた時、テキストフィールドを一緒に下へ下げる処理
extension ViewController {
    
    func keyboardWillHideNotification() {
        self.addMemoTextField.delegate = self
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc func keyboardWillHide() {
        if self.view.frame.origin.y != 0 {
            self.view.frame.origin.y = 0
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
}

// タップでキーボードを閉じる処理
extension ViewController {
    
    func closeInTap() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
                self.view.addGestureRecognizer(tapGesture)
    }
    
    @objc func dismissKeyboard() {
        self.view.endEditing(true)
    }
    
}
