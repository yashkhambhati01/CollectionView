//
//  ViewController.swift
//  @App
//
//  Created by R93 on 26/12/23.
//

import UIKit

class ViewController: UIViewController,
                      UICollectionViewDataSource,
                      UICollectionViewDelegate,
                      UICollectionViewDelegateFlowLayout {
    
    
    
    @IBOutlet weak var Cv1: UICollectionView!
    
    @IBOutlet weak var cv2: UICollectionView!
    
    @IBOutlet weak var cv3: UICollectionView!
    
 
    
    var ImgName = ["Free fire","fs 15","god of war","gta 6","Gta5","minecraft","ps2","Pubg","Roblox"]
    var price = ["price : Free ","Price : 150/- ","Price :  2000 /- ","price : 5000/- ","Price : 2000/- ","price : 800/-","Price : 700/-","price : Free","PRice : Free",]
    
    
    var ImgName2 = ["Free fire","fs 15","god of war","gta 6","Gta5","minecraft","ps2","Pubg","Roblox"]
    var price2 = ["price : Free ","Price : 150/- ","Price :  2000 /- ","price : 5000/- ","Price : 2000/- ","price : 800/-","Price : 700/-","price : Free","PRice : Free",]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == Cv1{
            return ImgName.count
        }
        else {
            return ImgName2.count
        }
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        if collectionView == Cv1{
            let cell1 = Cv1.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath) as! MyCollectionViewCell1
            cell1.img.image = UIImage(named: ImgName[indexPath.row])
            cell1.Name.text = ImgName[indexPath.row]
            cell1.Price.text = price[indexPath.row]
            
            return cell1
        }
        else
        {
            let cell2 = cv2.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! MyCollectionViewCell2
            cell2.img2.image = UIImage(named: ImgName2[indexPath.row])
            cell2.Name2.text = ImgName2[indexPath.row]
            cell2.Price2.text = price2[indexPath.row]
            return cell2
        }
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == Cv1 {
            return CGSize(width: 170, height: 170)
        }
        else
        {
            return CGSize(width: 170, height: 170)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == Cv1{
            let neviget = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
            navigationController?.pushViewController(neviget, animated: true)
            
            neviget.img = UIImage(named: ImgName[indexPath.row])!
            neviget.gameName = ImgName[indexPath.row]
            neviget.gamePrice = price[indexPath.row]
        }
        else{
            let neviget2 = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
            navigationController?.pushViewController(neviget2, animated: true)
            
            neviget2.img = UIImage(named: ImgName2[indexPath.row])!
            neviget2.gameName = ImgName2[indexPath.row]
            neviget2.gamePrice = price2[indexPath.row]
            
        }
    }
    

}

