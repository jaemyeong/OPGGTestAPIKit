import XCTest

@testable import OPGGTestAPIKit

final class OPGGTestAPITests: XCTestCase {
    
    func testSummoner() {
        let expectation = self.expectation(description: #function)
        
        OPGGTestAPIProvider
            .shared
            .request(target: .summoner(name: "genetory")) { (result: Result<Summoner, Error>) in
                if case .failure(let error) = result {
                    XCTFail(String(describing: error))
                }
                expectation.fulfill()
            }
        
        self.waitForExpectations(timeout: 60.0)
    }
    
    func testMatches() {
        let expectation = self.expectation(description: #function)

        OPGGTestAPIProvider
            .shared
            .request(target: .matches(name: "genetory")) { (result: Result<Matches, Error>) in
                if case .failure(let error) = result {
                    XCTFail(String(describing: error))
                }
                expectation.fulfill()
            }

        self.waitForExpectations(timeout: 60.0)
    }

    func testMatchesWithLastMatch() {
        let expectation = self.expectation(description: #function)

        OPGGTestAPIProvider
            .shared
            .request(target: .matches(name: "genetory", lastMatch: 1676852728)) { (result: Result<Matches, Error>) in
                if case .failure(let error) = result {
                    XCTFail(String(describing: error))
                }
                expectation.fulfill()
            }

        self.waitForExpectations(timeout: 60.0)
    }
}
