import Foundation

public struct Match {
    
    public typealias Champion = MatchChampion
    
    public var summary: Summary
    
    public var positions: [Position]
    
    public var champions: [Champion]
    
    public var games: [Game]
}

extension Match: Decodable {}
