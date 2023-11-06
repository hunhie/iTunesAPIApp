//
//  iTunesSearchView.swift
//  iTunesAPIApp
//
//  Created by walkerhilla on 11/6/23.
//

import UIKit
import SnapKit

final class iTunesSearchView : UIView {
  
  let mockupData = ["다방앱", "알바", "유튜브 앱", "위플레이", "잡코리", "가요앱"]
  
  let collectionView: UICollectionView = {
    let view = UICollectionView()
    return view
  }()
  
  typealias DataSource = UICollectionViewDiffableDataSource<Section, Item>
  var dataSource: DataSource?
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    setCollectionView()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func setCollectionView() {
    addSubview(collectionView)
    
    collectionView.snp.makeConstraints { make in
      make.top.equalToSuperview()
      make.horizontalEdges.equalToSuperview()
    }
  }
  
  func setDatasource() {
    dataSource = 
  }
}

extension iTunesSearchView {
  enum Section {
    case newApp
    case recommended
  }
  
  enum Item: Hashable {
    case newAppItem(String)
    case recommended(AppPreview)
  }
}
