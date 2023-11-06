//
//  iTunesSearchResultsViewController.swift
//  iTunesAPIApp
//
//  Created by walkerhilla on 11/6/23.
//

import UIKit
import SnapKit
import RxSwift

final class iTunesSearchResultViewController: BaseViewController {
  
  let disposeBag = DisposeBag()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let search = iTunesAPIManager.shared.fetchData()
    
    search
      .subscribe(with: self) { owner, value in
        dump(value)
      }
      .disposed(by: disposeBag)
  }
}
