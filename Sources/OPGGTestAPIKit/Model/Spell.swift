import Foundation

public struct Spell {
    
    public var imageURL: URL
}

extension Spell: Decodable {
    
    enum CodingKeys: String {
        
        case imageURL = "imageUrl"
    }
}

extension Spell.CodingKeys: CodingKey {}
