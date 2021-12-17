//
//  PhotoExif.swift
//  YsGallery
//
//  Created by yoon on 2021/12/17.
//

import Foundation

public struct PhotoExif: Codable {

    public let aperture: String
    public let exposureTime: String
    public let focalLength: String
    public let iso: String
    public let make: String
    public let model: String

    private enum CodingKeys: String, CodingKey {
        case aperture
        case exposureTime = "exposure_time"
        case focalLength = "focal_length"
        case iso
        case make
        case model
    }

}
