//
//  ViewController.swift
//  UIScrollViewLesson01
//
//  Created by UrataHiroki on 2021/10/11.
//

import UIKit


class ViewController: UIViewController {
    
//    let scrollView = UIScrollView()
    
    let tableView = UITableView()
    
    var cellContentsArray = ["UIKit","SwiftUI","MapKit","ARKit","CoreML","WebKit","Foundation","LocalAuthentication","CoreGraphics","Combine"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        tableView.frame = CGRect(x: view.frame.minX, y: view.frame.minY, width: view.frame.width, height: view.frame.height)
        tableView.isEditing = true
        view.addSubview(tableView)
        
        tableView.dataSource = self
        
        
//        scrollView.frame = CGRect(x: view.frame.minX, y: view.frame.minY, width: view.frame.width, height: view.frame.height)
//        scrollView.contentSize = CGSize(width: view.frame.width , height: view.frame.height * 3)
//        scrollView.isPagingEnabled = true
//        scrollView.backgroundColor = .systemIndigo
//        view.addSubview(scrollView)
//
//        let topLabel = UILabel(frame: CGRect(x: scrollView.frame.maxX / 4, y: scrollView.frame.maxY / 10, width: scrollView.frame.width / 2, height: scrollView.frame.height / 20))
//        topLabel.text = "Top"
//        topLabel.font = UIFont.boldSystemFont(ofSize: 25)
//        topLabel.textColor = .white
//        topLabel.textAlignment = .center
//        scrollView.addSubview(topLabel)
//
//        let centerLabel = UILabel(frame: CGRect(x: scrollView.frame.maxX / 4, y: scrollView.frame.maxY + scrollView.frame.maxY / 10, width: scrollView.frame.width / 2, height: scrollView.frame.height / 20))
//        centerLabel.text = "Center"
//        centerLabel.font = UIFont.boldSystemFont(ofSize: 25)
//        centerLabel.textColor = .white
//        centerLabel.textAlignment = .center
//        scrollView.addSubview(centerLabel)
//
//        let bottomLabel = UILabel(frame: CGRect(x: scrollView.frame.maxX / 4, y: (scrollView.frame.maxY * 2) + scrollView.frame.maxY / 10, width: scrollView.frame.width / 2, height: scrollView.frame.height / 20))
//        bottomLabel.text = "Bottom"
//        bottomLabel.font = UIFont.boldSystemFont(ofSize: 25)
//        bottomLabel.textColor = .white
//        bottomLabel.textAlignment = .center
//        scrollView.addSubview(bottomLabel)
    }


}

extension ViewController:UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return cellContentsArray.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = cellContentsArray[indexPath.row]
     
        return cell
    }
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        
        return true
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        
        let cellContent = cellContentsArray[sourceIndexPath.row]
        print(cellContentsArray.count)
        cellContentsArray.remove(at: sourceIndexPath.row)
        print(cellContentsArray.count)
        cellContentsArray.insert(cellContent, at: destinationIndexPath.row)
        print(cellContentsArray.count)
    }
    
}
