//
//  ImageSaver.swift
//  Instafilter
//
//  Created by Baptiste Cadoux on 02/03/2022.
//

import UIKit
import PhotosUI

class ImageSaver: NSObject {
    func writeToPhotoAlbum(image: UIImage) {
        UIImageWriteToSavedPhotosAlbum(
            image,
            self,
            #selector(saveCompleted),
            nil
        )
    }
    
    @objc func saveCompleted(_ image: UIImage,
                             didFinishSavingWithError error: Error?,
                             contextInfo: UnsafeRawPointer) {
        print("Save finished!")
    }
}
