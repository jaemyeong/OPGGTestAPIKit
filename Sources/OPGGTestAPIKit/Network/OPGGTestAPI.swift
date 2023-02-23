import Foundation
import Moya

/// OP.GG API Test API 명세
public enum OPGGTestAPI {
    
    /// 소환사 정보
    case summoner(name: String)
    
    /// 게임 정보
    case matches(name: String, lastMatch: TimeInterval? = nil)
}

extension OPGGTestAPI: TargetType {
    
    public var baseURL: URL {
        let string = "https://codingtest.op.gg"
        
        assert(URL(string: string) != nil)
        return URL(string: string)!
    }
    
    public var path: String {
        switch self {
        case .summoner(let name):
            return "/api/summoner/\(name)"
        case .matches(let name, _):
            return "/api/summoner/\(name)/matches"
        }
    }
    
    public var method: Moya.Method {
        .get
    }
    
    public var sampleData: Data {
        let name: String
        switch self {
        case .summoner:
            name = "Summoner"
        case .matches(_, nil):
            name = "Matches"
        case .matches(_, _):
            name = "MatchesWithLastMatch"
        }
        
        return Bundle.module.url(forResource: name, withExtension: "json").flatMap { url in
            do {
                return try Data(contentsOf: url)
            } catch {
                logger.error("\(error)")
                return nil
            }
        } ?? Data()
    }
    
    public var task: Task {
        switch self {
        case .summoner:
            return .requestPlain
        case .matches(_, let lastMatch):
            if let lastMatch = lastMatch {
                return .requestParameters(
                    parameters: [
                        "lastMatch": Int(lastMatch.rounded())
                    ],
                    encoding: URLEncoding.queryString
                )
            } else {
                return .requestPlain
            }
        }
    }
    
    public var headers: [String: String]? {
        [
            "Content-Type": "application/json"
        ]
    }
}
