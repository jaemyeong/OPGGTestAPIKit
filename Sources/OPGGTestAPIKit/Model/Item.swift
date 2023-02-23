import Foundation

public struct Item {
    
    public var imageURL: URL
}

extension Item: Decodable {
    
    enum CodingKeys: String {
        
        case imageURL = "imageUrl"
    }
}

extension Item.CodingKeys: CodingKey {}

