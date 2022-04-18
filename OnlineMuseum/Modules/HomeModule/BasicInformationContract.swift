//
//  BasicInformationContract.swift
//  OnlineMuseum
//
//  Created by Tatsiana Marchanka on 16.04.22.
//  
//

import Foundation


// MARK: View Output (Presenter -> View)
protocol PresenterToViewBasicInformationProtocol {
   
}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenterBasicInformationProtocol {
    
    var view: PresenterToViewBasicInformationProtocol? { get set }
    var interactor: PresenterToInteractorBasicInformationProtocol? { get set }
    var router: PresenterToRouterBasicInformationProtocol? { get set }
}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorBasicInformationProtocol {
    
    var presenter: InteractorToPresenterBasicInformationProtocol? { get set }
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterBasicInformationProtocol {
    
}


// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterBasicInformationProtocol {
    
}
