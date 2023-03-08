import Foundation
import RxSwift
import Moya
import RxMoya
import ErrorKit

public final class OPGGTestAPIProvider {
    
    public static let shared: OPGGTestAPIProvider = OPGGTestAPIProvider()
    
    private static let decoder: JSONDecoder = {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .secondsSince1970
        return decoder
    }()
    
    private let provider: MoyaProvider<OPGGTestAPI> = MoyaProvider<OPGGTestAPI>()
    
    @discardableResult
    public func request<T: Decodable>(target: OPGGTestAPI, mappableType: T.Type, completionHandler: @escaping (Result<T, Swift.Error>) -> Void) -> Disposable {
        self.request(target: target, mappableType: mappableType)
            .subscribe { value in
                completionHandler(.success(value))
            } onFailure: { error in
                completionHandler(.failure(error))
            }
    }
    
    public func request<T: Decodable>(target: OPGGTestAPI, mappableType: T.Type) -> Single<T> {
        self.provider
            .rx
            .request(target)
            .map(mappableType, using: Self.decoder)
    }
    
    @discardableResult
    public func download(url: URL, completionHandler: @escaping (Result<URL, Swift.Error>) -> Void) -> Disposable {
        self.download(url: url).subscribe { url in
            completionHandler(.success(url))
        } onFailure: { error in
            completionHandler(.failure(error))
        }
    }
    
    public func download(url: URL) -> Single<URL> {
        Single.create { single in
            let request = URLRequest(url: url)
            
            let downloadTask = URLSession.shared.downloadTask(with: request) { url, response, error in
                if let error = error {
                    single(.failure(error))
                    return
                }
                
                guard let url = url else {
                    single(.failure(NilError()))
                    return
                }
                
                single(.success(url))
            }
            
            downloadTask.resume()
            
            return Disposables.create {
                downloadTask.cancel()
            }
        }
    }
}
