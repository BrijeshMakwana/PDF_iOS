//
//  ViewController.swift
//  Swifty Learn
//
//  Created by Brijesh Makwana on 22/05/1941 Saka.
//  Copyright © 1941 Brijesh Makwana. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    let x = ["0","2","2","Swift Math Operators","2","2","0","0","0","0","0","0","0","0","0","0","0","0","0"]
    var a = 1

    @IBOutlet weak var tableview: UITableView!
    var i = [UIImage(named: "ch0"), UIImage(named: "ch1") ,UIImage(named: "ch2"), UIImage(named: "ch3"),UIImage(named: "ch4"),UIImage(named: "ch5"), UIImage(named: "ch6") ,UIImage(named: "ch7"), UIImage(named: "ch8"),UIImage(named: "ch9"),UIImage(named: "ch10"), UIImage(named: "ch11") ,UIImage(named: "ch12"), UIImage(named: "ch13"),UIImage(named: "ch14"),UIImage(named: "ch15"), UIImage(named: "ch16"), UIImage(named: "ch17"), UIImage(named: "ch18")]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.rowHeight = 136
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        a = x.count
        
        return a
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.img.image = i[indexPath.row]
        
        return cell
    }
    
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //let detail:detailViewController = self.storyboard?.instantiateViewController(withIdentifier: "detail") as! detailViewController
        
        if let url = Bundle.main.url(forResource: x[indexPath.row], withExtension: "pdf") {
            let webView = UIWebView(frame: self.view.frame)
            let urlRequest = URLRequest(url: url)
            webView.loadRequest(urlRequest as URLRequest)
            webView.scalesPageToFit = true
            let pdfVC = UIViewController()
            pdfVC.view.addSubview(webView)
            
            pdfVC.title = x[indexPath.row]
            self.navigationController?.pushViewController(pdfVC, animated: true)
        }

        
        
        
    }
}
