//
//  ViewNodeDetailViewController.swift
//  KTree(Swift)
//
//  Created by Kyle Burns on 8/21/20.
//  Copyright © 2020 Kyle Burns. All rights reserved.
//

import UIKit

class ViewNodeDetailViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
    func configure(node: TreeNode) {
        let tagLabel = UILabel()
        tagLabel.text = "tag: \(node.tag)"
        let weightLabel = UILabel()
        weightLabel.text = "weight: \(node.weight)"
        let stampLabel = UILabel()
        stampLabel.text = "stamp: \(node.stamp)"
        let stampsLabel = UILabel()
        stampsLabel.text = "node stamps: \(node.stamps)"
        let parentLabel = UILabel()
        parentLabel.text = "parent: \((node.parentNode as? TreeNode) == nil ? "" : String((node.parentNode as! TreeNode).tag))"
        let leftLabel = UILabel()
        leftLabel.text = "left: \((node.left as? TreeNode) == nil ? "" : String((node.left as! TreeNode).tag))"
        let rightLabel = UILabel()
        rightLabel.text = "right: \((node.right as? TreeNode) == nil ? "" : String((node.right as! TreeNode).tag))"
        let subtreeLabel = UILabel()
        subtreeLabel.text = "subTree: \((node.subTree == .left && node.subTree != nil) ? "left" : "right")"
        let subrootLabel = UILabel()
        subrootLabel.text = "subRoot: \((node.subRoot as? TreeNode) == nil ? "" : String((node.subRoot as! TreeNode).tag))"
        let locationLabel = UILabel()
        locationLabel.text = String(format: "location: (%.2f, %.2f)", node.position.x, node.position.y)
        let leftWidthLabel = UILabel()
        leftWidthLabel.text = "leftWidth: \(node.leftWidth)"
        let rightWidthLabel = UILabel()
        rightWidthLabel.text = "rightWidth: \(node.rightWidth)"
        let containerPositionLabel = UILabel()
        containerPositionLabel.text = String(format: "Container position (%.2f, %.2f)", node.parent!.position.x, node.parent!.position.y)
        
        let stackView = UIStackView(arrangedSubviews: [
            tagLabel,
            weightLabel,
            stampLabel,
            stampsLabel,
            parentLabel,
            leftLabel,
            rightLabel,
            subtreeLabel,
            subrootLabel,
            locationLabel,
            leftWidthLabel,
            rightWidthLabel,
            containerPositionLabel
        ])
        
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .leading
        stackView.spacing = 10
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50)
        ])
    }

}
