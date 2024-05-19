//
//  PostListViewModelTests.swift
//  InjurappTests
//
//  Created by Pablo Ortiz Rodríguez on 19/5/24.
//

import XCTest

@testable import Injurapp

final class PostListViewModelTests: XCTestCase {

    func testInit_screenIsLoaded_mockedPostsHaveCorrectData() {
        let sut = PostListViewModel()
        
        XCTAssertEqual(sut.postViewModels.count, 8)
        
        XCTAssertEqual(sut.postViewModels[0].id, "1")
        XCTAssertEqual(sut.postViewModels[0].title, "Title")
        XCTAssertEqual(sut.postViewModels[0].description, "Description")
        XCTAssertFalse(sut.postViewModels[0].isLoading)
        
        XCTAssertEqual(sut.postViewModels[1].id, "2")
        XCTAssertEqual(sut.postViewModels[1].title, "Title")
        XCTAssertEqual(
            sut.postViewModels[1].description,
            "DescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescription"
        )
        XCTAssertFalse(sut.postViewModels[1].isLoading)
        
        XCTAssertEqual(sut.postViewModels[2].id, "3")
        XCTAssertEqual(sut.postViewModels[2].title, "Title")
        XCTAssertEqual(sut.postViewModels[2].description, "Description")
        XCTAssertFalse(sut.postViewModels[2].isLoading)
        
        XCTAssertEqual(sut.postViewModels[3].id, "4")
        XCTAssertEqual(sut.postViewModels[3].title, "Title")
        XCTAssertEqual(sut.postViewModels[3].description, "Description")
        XCTAssertFalse(sut.postViewModels[3].isLoading)
        
        XCTAssertEqual(sut.postViewModels[4].id, "5")
        XCTAssertEqual(sut.postViewModels[4].title, "Title")
        XCTAssertEqual(sut.postViewModels[4].description, "Description")
        XCTAssertFalse(sut.postViewModels[4].isLoading)
        
        XCTAssertEqual(sut.postViewModels[5].id, "6")
        XCTAssertEqual(sut.postViewModels[5].title, "Title")
        XCTAssertEqual(sut.postViewModels[5].description, "Description")
        XCTAssertFalse(sut.postViewModels[5].isLoading)
        
        XCTAssertEqual(sut.postViewModels[6].id, "7")
        XCTAssertEqual(sut.postViewModels[6].title, "Title")
        XCTAssertEqual(sut.postViewModels[6].description, "Description")
        XCTAssertFalse(sut.postViewModels[6].isLoading)
        
        XCTAssertEqual(sut.postViewModels[7].id, "8")
        XCTAssertEqual(sut.postViewModels[7].title, "Title")
        XCTAssertEqual(sut.postViewModels[7].description, "Description")
        XCTAssertFalse(sut.postViewModels[7].isLoading)
    }
}
