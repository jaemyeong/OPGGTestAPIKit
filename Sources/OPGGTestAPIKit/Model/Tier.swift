import Foundation

/// 티어
public struct Tier {
    
    /// 이름
    public var name: String
    
    /// 티어
    public var tier: String
    
    public var tierDivision: String
    
    public var string: String
    
    public var shortString: String
    
    public var division: String
    
    /// 이미지 URL
    public var imageURL: URL
    
    /// 리그 포인트
    public var lp: Int
    
    public var tierRankPoint: Int
    
    /// 시즌
    public var season: Int
}

extension Tier: Decodable {
    
    enum CodingKeys: String {
        
        case name
        
        case tier
        
        case tierDivision
        
        case string
        
        case shortString
        
        case division
        
        case imageURL = "imageUrl"
        
        case lp
        
        case tierRankPoint
        
        case season
    }
}

extension Tier.CodingKeys: CodingKey {}
