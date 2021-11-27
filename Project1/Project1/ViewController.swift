//
//  ViewController.swift
//  Project1
//
//  Created by Dave Spina on 11/16/21.
//

import UIKit

class ViewController: UITableViewController {
    var pictures = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // instantiate the file manager, bundle path and all of the items
        // in the path
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        // retrieve all of the items in the source
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        // loop filtering
        for item in items.sorted() {
            if item.hasPrefix("nssl") {
                pictures.append(item)
            }
        }
        title = "Storm Viewer"
        // show large titles across the app
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    // identifies the number of rows to display
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }

    // handles loading the information into each cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        let modifiedIndex = indexPath.row + 1
        cell.textLabel?.text = "Picture \(modifiedIndex) of \(pictures.count)"
        return cell
    }
    
    // handles selection of the row
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // storyboard and navigationController are properties of the application
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail")  as? DetailViewController {
            vc.selectedImage = pictures[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}

