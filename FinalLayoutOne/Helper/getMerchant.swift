//
//  getMerchant.swift
//  FinalLayoutOne
//
//  Created by Sukhrob Bekmuratov on 5/10/25.
//

//import Foundation
//
//func getChannel() async throws -> YouTubeChannel {
//    let channelId = "UCo-lLj2s7JByZ0WuPZkyIlw"  // replace with your channel ID
//    let apiKey    = "AIzaSyB_R4L0h8aDCXVjI0uRePhQhFU0Y-9PcaQ"
//    let urlString = "https://www.googleapis.com/youtube/v3/channels?part=snippet&id=\(channelId)&key=\(apiKey)"
//    
//    guard let url = URL(string: urlString) else {throw YTError.invalidUrl}
//    
//    let (data, response) = try await URLSession.shared.data(from: url)
//    
//    guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
//        throw YTError.invalidResponse
//    }
//    do {
//        let result = try JSONDecoder().decode(YTResponse.self, from: data)
//        guard let first = result.items.first else {throw YTError.noData}
//        return first
//    }
//    catch{
//        throw YTError.decodingError
//    }
//}
