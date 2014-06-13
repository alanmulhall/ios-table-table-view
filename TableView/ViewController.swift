//
//  ViewController.swift
//  TableView
//
//  Created by Mulhall, Alan on 6/7/14.
//  Copyright (c) 2014 Mulhall, Alan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView;
    
    let names = ["Jon Snow", "Daenerys Targaryen", "Brandon Stark", "Tyrion Lannister"];
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        
//        let toolbar = UIToolbar(frame: CGRectMake(0, 0, 320, 64));
//        toolbar.barTintColor = UIColor(red: 0.5, green: 0.0, blue: 0.5, alpha: 1.0);
//        self.view.addSubview(toolbar);
        
        let edgeInsets = UIEdgeInsetsMake(64, 0, 0, 0);
        self.tableView.contentInset = edgeInsets;
        self.tableView.scrollIndicatorInsets = edgeInsets;
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return self.names.count;
    }
    
    func numberOfSectionsInTableView(tableView: UITableView!) -> Int {
        return 1;
    }

    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        let cellIdentifier = "cellIdentifer";
        var cell: UITableViewCell? = tableView.dequeueReusableCellWithIdentifier(cellIdentifier) as? UITableViewCell;
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: cellIdentifier);
        }
        cell!.textLabel.text = self.names[indexPath.row];
        
        return cell
    }

}

