import Foundation

public struct Stats {
    
    public var general: General
    
    public var ward: Ward
}

extension Stats: Decodable {}
