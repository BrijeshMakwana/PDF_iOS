//
//  CViewController.swift
//  Swifty Learn
//
//  Created by Brijesh Makwana on 22/05/1941 Saka.
//  Copyright © 1941 Brijesh Makwana. All rights reserved.
//

import UIKit

class CViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    var a = 0
    
    @IBOutlet weak var cview: UICollectionView!
    let x = ["0","2","2","Swift Math Operators","2","2","0","0","0","0","0","0","0","0","0","0","0","0","0"]

    var i = [UIImage(named: "ch0"), UIImage(named: "ch1") ,UIImage(named: "ch2"), UIImage(named: "ch3"),UIImage(named: "ch4"),UIImage(named: "ch5"), UIImage(named: "ch6") ,UIImage(named: "ch7"), UIImage(named: "ch8"),UIImage(named: "ch9"),UIImage(named: "ch10"), UIImage(named: "ch11") ,UIImage(named: "ch12"), UIImage(named: "ch13"),UIImage(named: "ch14"),UIImage(named: "ch15"), UIImage(named: "ch16"), UIImage(named: "ch17"), UIImage(named: "ch18")]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        a = i.count
        
        return a
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cview.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.img.image = i[indexPath.row]
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
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
        // self.navigationController?.pushViewController(detail, animated: true)
        
        
        
    }
   

}
