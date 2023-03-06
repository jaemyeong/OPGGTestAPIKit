import Foundation

public struct Summary {
    
    public var wins: Int
    
    public var losses: Int
    
    public var kills: Int
    
    public var deaths: Int
    
    public var assists: Int
}

extension Summary: Decodable {}
