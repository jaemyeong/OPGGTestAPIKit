import Foundation

/// 래더 순위
public struct LadderRank {
    
    /// 순위
    public var rank: Int
    
    /// 분포
    public var rankPercentOfTop: Int
}

extension LadderRank: Decodable {}
