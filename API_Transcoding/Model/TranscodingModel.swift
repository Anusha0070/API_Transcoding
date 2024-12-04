//
//  TranscodingModel.swift
//  API_Transcoding
//
//  Created by Anusha Raju on 12/3/24.
//


struct TranscodingModel: Codable {
    let duration: Double
    let imageId: Int?
    let plays: Int
    let created_at: String
    let size: Int
    let transcodings: [Transcodings]
    let title: String
    let updated_at: String
    let account_id: String
    let progress: Int
    let original_movie: Movie
    let tags: [String]
    let id: String
    let aspect_ratio_multiplier: Double
    let screenshot: Screenshot
    let state: String
}

struct Transcodings: Codable{
    let id: String
    let rtmp_stream_uri: String
    let size: Int
    let http_uri: String
    let title: String
    let progress: Int
    let rtmp_base_uri: String
    let bitrate: Int
    let height: Int
    let rtmp_uri: String
    let state: String
    let width: Int
}

struct Movie: Codable{
    let http_uri: String
    let size: Int
}

struct Screenshot: Codable{
    let normal: String
    let thumb: String
    let original: String
}
