import Foundation

public struct Game {
    
    public typealias Champion = GameChampion
    
    public var mmr: Int?
    
    public var champion: Champion
    
    public var spells: [Spell]
    
    public var items: [Item]
    
    public var needRenew: Bool
    
    public var gameID: String
    
    public var createDate: Date
    
    public var gameLength: TimeInterval
    
    public var gameType: String
    
    public var summonerID: String
    
    public var summonerName: String
    
    public var tierRankShort: String
    
    public var stats: Stats
    
    public var peak: [URL]
    
    public var isWin: Bool
}

extension Game: Decodable {
    
    enum CodingKeys: String {
        
        case mmr
        
        case champion
        
        case spells
        
        case items

        case needRenew

        case gameID = "gameId"

        case createDate

        case gameLength

        case gameType

        case summonerID = "summonerId"

        case summonerName

        case tierRankShort
        
        case stats
        
        case peak

        case isWin
    }
}

extension Game.CodingKeys: CodingKey {}
