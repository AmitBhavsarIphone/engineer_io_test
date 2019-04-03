//
//  PostsViewInteractor.swift
//  engineer_io_test
//
//  Created by Amit on 03/04/19.
//  Copyright © 2019 MAC104. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

struct PostsViewInteractor {
    
    //MARK:- Webservice Methods
    static func getPosts(page: Int) -> Observable<TTResponse> {
        return Webservice.API.sendRequest(.posts(page))
    }
}
