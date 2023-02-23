import Foundation

public struct Ward {
    
    public var sightWardsBought: Int
    
    public var visionWardsBought: Int
}

extension Ward: Decodable {}
