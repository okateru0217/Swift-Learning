//
//  ViewController.swift
//  ShoppingMemo
//
//  Created by 岡澤輝明 on 2021/03/28.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var addMemoTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // ナビゲーションバーの背景色を変更する
        changeNavigationBarLook()
        // キーボードを開いた時、テキストフィールドを一緒に上へ上げる処理
        keyboardWillChangeFrameNotification()
        // キーボードを閉じた時、テキストフィールドを一緒に下へ下げる処理
        keyboardWillHideNotification()
        // タップでキーボードを閉じる処理
        closeInTap()
        // Do any additional setup after loading the view.
    }
    
    // ナビゲーションバーの背景色を変更する
    func changeNavigationBarLook() {
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 0.28, green: 0.53, blue: 0.75, alpha: 1.0)
    }

}

