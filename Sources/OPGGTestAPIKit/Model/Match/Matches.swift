import Foundation

public struct Matches {
    
    public typealias Champion = MatchChampion
    
    public var summary: Summary
    
    public var positions: [Position]
    
    public var champions: [Champion]
    
    public var games: [Game]
}

extension Matches: Decodable {}
