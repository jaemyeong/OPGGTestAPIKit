import Foundation
import Moya
import RxMoya

public final class OPGGTestAPIProvider {
    
    public static let shared: OPGGTestAPIProvider = OPGGTestAPIProvider()
    
    private static let decoder: JSONDecoder = {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .secondsSince1970
        return decoder
    }()
    
    private let provider: MoyaProvider<OPGGTestAPI> = MoyaProvider<OPGGTestAPI>(stubClosure: { target in
        #if DEBUG
        return .immediate
        #else
        return .never
        #endif
    })
    
    public func request<T: Decodable>(target: OPGGTestAPI, completionHandler: @escaping (Result<T, Error>) -> Void) {
        _ = self.provider
            .rx
            .request(target)
            .map(T.self, using: Self.decoder)
            .debug()
            .subscribe { value in
                completionHandler(.success(value))
            } onFailure: { error in
                completionHandler(.failure(error))
            }
    }
}
