//
//  iTunesSearchViewController.swift
//  iTunesAPIApp
//
//  Created by walkerhilla on 11/6/23.
//

import UIKit

final class iTunesSearchViewController: BaseViewController {
  
  let mainView = iTunesSearchView()
  
  override func loadView() {
    super.loadView()
    
    view = mainView
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()

    setnavigationItem()
  }
  
  func setnavigationItem() {
    let searchController = UISearchController(searchResultsController: nil)
    searchController.searchBar.translatesAutoresizingMaskIntoConstraints = false
    searchController.searchBar.placeholder = "게임, 앱, 스토리 등"
    searchController.searchResultsUpdater = self
    
    navigationItem.title = "검색"
    navigationItem.hidesSearchBarWhenScrolling = false
    navigationItem.largeTitleDisplayMode = .always
    navigationItem.searchController = searchController
  }
}

extension iTunesSearchViewController: UISearchResultsUpdating {
  func updateSearchResults(for searchController: UISearchController) {
    
  }
}
