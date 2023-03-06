import Foundation

public struct GameChampion {
    
    public var imageURL: URL
    
    public var level: Int
}

extension GameChampion: Decodable {
    
    enum CodingKeys: String {
        
        case imageURL = "imageUrl"
        
        case level
    }
}

extension GameChampion.CodingKeys: CodingKey {}
