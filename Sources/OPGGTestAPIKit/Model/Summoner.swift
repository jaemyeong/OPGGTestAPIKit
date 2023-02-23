import Foundation

/// 소환사
public struct Summoner {
    
    /// 소환사 이름
    public var name: String
    
    /// 소환사 레벨
    public var level: Int
    
    /// 전체 URL
    public var url: URL
    
    /// 프로필 이미지 URL
    public var profileImageURL: URL
    
    /// 프로필 테두리 이미지 URL
    public var profileBorderImageURL: URL
    
    /// 프로필 배경 이미지 URL
    public var profileBackgroundImageURL: URL
    
    /// 래더 순위
    public var ladderRank: LadderRank
    
    /// 리그
    public var leagues: [League]
    
    /// 이전 티어
    public var previousTiers: [Tier]
}

extension Summoner: Decodable {
    
    enum ContainerCodingKeys: String {
        
        case summoner
    }
    
    enum SummonerCodingKeys: String {
        
        case name
        
        case level
        
        case url
        
        case profileImageURL = "profileImageUrl"
        
        case profileBorderImageURL = "profileBorderImageUrl"
        
        case profileBackgroundImageURL = "profileBackgroundImageUrl"
        
        case ladderRank
        
        case leagues
        
        case previousTiers
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: ContainerCodingKeys.self).nestedContainer(keyedBy: SummonerCodingKeys.self, forKey: .summoner)
        
        self.name = try container.decode(String.self, forKey: .name)
        self.level = try container.decode(Int.self, forKey: .level)
        self.url = try container.decode(URL.self, forKey: .url)
        self.profileImageURL = try container.decode(URL.self, forKey: .profileImageURL)
        self.profileBorderImageURL = try container.decode(URL.self, forKey: .profileBorderImageURL)
        self.profileBackgroundImageURL = try container.decode(URL.self, forKey: .profileBackgroundImageURL)
        self.ladderRank = try container.decode(LadderRank.self, forKey: .ladderRank)
        self.leagues = try container.decode([League].self, forKey: .leagues)
        self.previousTiers = try container.decode([Tier].self, forKey: .previousTiers)
    }
}

extension Summoner.ContainerCodingKeys: CodingKey {}

extension Summoner.SummonerCodingKeys: CodingKey {}
