//
//  MovieDetailPresenter.swift
//  testRappi
//
//  Created by Miguel Mexicano Herrera on 29/08/21.
//  
//

import Foundation

class MovieDetailPresenter {
    var view: MovieDetailViewProtocol?
    var interactor: MovieDetailInteractorInputProtocol?
    var router: MovieDetailRouterProtocol?
}
extension MovieDetailPresenter: MovieDetailPresenterProtocol {
    func getVideos() {
        interactor?.fetchVideos()
    }
}
extension MovieDetailPresenter: MovieDetailInteractorOutputProtocol {
    func sendVideos(data: VideoList) {
        view?.showVideos(data: data.results)
    }
}