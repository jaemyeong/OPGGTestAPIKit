import Foundation

/// 리그
public struct League {
    
    /// 무슨 값인지 모르겠음
    public var hasResults: Bool
    
    /// 승리
    public var wins: Int
    
    /// 패배
    public var losses: Int
    
    /// 티어 순위
    public var tierRank: TierRank
}

extension League: Decodable {}
