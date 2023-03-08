import XCTest

@testable import OPGGTestAPIKit

public final class OPGGTestAPITests: XCTestCase {
    
    public func testSummoner() {
        let expectation = self.expectation(description: #function)
        
        OPGGTestAPIProvider
            .shared
            .request(target: .summoner(name: "genetory"), mappableType: Summoner.self) { result in
                if case .failure(let error) = result {
                    XCTFail(String(describing: error))
                }
                expectation.fulfill()
            }
        
        self.waitForExpectations(timeout: 60.0)
    }
    
    public func testMatches() {
        let expectation = self.expectation(description: #function)

        OPGGTestAPIProvider
            .shared
            .request(target: .matches(name: "genetory"), mappableType: Matches.self) { result in
                if case .failure(let error) = result {
                    XCTFail(String(describing: error))
                }
                expectation.fulfill()
            }

        self.waitForExpectations(timeout: 60.0)
    }

    public func testMatchesWithLastMatch() {
        let expectation = self.expectation(description: #function)

        OPGGTestAPIProvider
            .shared
            .request(target: .matches(name: "genetory", lastMatch: 1676852728), mappableType: Matches.self) { result in
                if case .failure(let error) = result {
                    XCTFail(String(describing: error))
                }
                expectation.fulfill()
            }

        self.waitForExpectations(timeout: 60.0)
    }
    
    public func testImageResources() {
        let expectation = self.expectation(description: #function)
        
        OPGGTestAPIProvider.shared.request(target: .summoner(name: "진재명"), mappableType: Summoner.self) { result in
            
        }
        
        expectation.fulfill()
        
        self.waitForExpectations(timeout: 60.0)
    }
}
