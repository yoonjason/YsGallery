//
//  ImageDetailViewController.swift
//  YsGallery
//
//  Created by yoon on 2021/12/16.
//

import UIKit

class ImageDetailViewController: UIViewController {
    
    var coordinator: ImageDetailCoordinator!

    override func viewDidLoad() {
        super.viewDidLoad()
        print("test")
        setupViews()
    }
    
    func setupViews(){
        view.backgroundColor = .white
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
