import Foundation

public struct Position {
    
    public var games: Int
    
    public var wins: Int
    
    public var losses: Int
    
    public var position: String
    
    public var positionName: String
}

extension Position: Decodable {}
