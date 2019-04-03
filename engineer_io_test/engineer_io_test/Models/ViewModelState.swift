//
//  Stateful.swift
//  MVVM-Amit
//
//  Created by Amit on 18/02/19.
//  Copyright © 2019 MAC104. All rights reserved.
//

import Foundation

enum ViewModelState<T> {
    case loading
    case failure(WebError)
    case finish(Bool)
    case success(T)
}
