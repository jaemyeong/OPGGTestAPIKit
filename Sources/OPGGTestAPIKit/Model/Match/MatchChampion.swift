import Foundation

public struct MatchChampion {
    
    public var id: Int
    
    public var key: String
    
    public var name: String
    
    public var imageURL: URL
    
    public var games: Int
    
    public var kills: Int
    
    public var deaths: Int
    
    public var assists: Int
    
    public var wins: Int
    
    public var losses: Int
}

extension MatchChampion: Decodable {
    
    enum CodingKeys: String {
        
        case id

        case key

        case name

        case imageURL = "imageUrl"

        case games

        case kills

        case deaths

        case assists

        case wins

        case losses
    }
}

extension MatchChampion.CodingKeys: CodingKey {}
