import Foundation

public struct General {
    
    public var kill: Int
    
    public var death: Int
    
    public var assist: Int
    
    public var kdaString: String
    
    public var cs: Int
    
    public var csPerMin: Double
    
    public var contributionForKillRate: String
    
    public var goldEarned: Int
    
    public var totalDamageDealtToChampions: Int
    
    public var largestMultiKillString: String
    
    public var opScoreBadge: String
}

extension General: Decodable {}
