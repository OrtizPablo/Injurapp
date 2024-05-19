//
//  PostViewModelTests.swift
//  InjurappTests
//
//  Created by Pablo Ortiz Rodríguez on 13/5/24.
//

import XCTest

@testable import Injurapp

final class PostViewModelTests: XCTestCase {

    func testInit_postValuesAreInjected_OutputsAreTheSame() {
        let sut = PostViewModel(
            title: "Title",
            description: "Description",
            isLoading: false
        )
        
        XCTAssertEqual(sut.title, "Title")
        XCTAssertEqual(sut.description, "Description")
        XCTAssertFalse(sut.isLoading)
    }
}
