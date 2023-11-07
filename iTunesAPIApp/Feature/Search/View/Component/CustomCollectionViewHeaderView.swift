//
//  CustomCollectionViewHeaderView.swift
//  iTunesAPIApp
//
//  Created by walkerhilla on 11/6/23.
//

import UIKit
import SnapKit

class CustomCollectionViewHeaderView: UICollectionReusableView {
  
  private let titleLabel: UILabel = {
    let view = UILabel()
    view.font = .monospacedSystemFont(ofSize: 22, weight: .bold)
    return view
  }()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    setConstaints()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  private func setConstaints() {
    addSubview(titleLabel)
    titleLabel.snp.makeConstraints { make in
      make.edges.equalToSuperview()
    }
  }
  
  func configureView(_ title: String) {
    titleLabel.text = title
  }
}
