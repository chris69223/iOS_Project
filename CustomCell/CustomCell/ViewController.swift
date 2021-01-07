
//  ViewController.swift
//  CustomCell
//
//  Created by 유저 on 2021/01/07.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    var itemlist = [[String:String]]()
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let item1 = ["name":"사과", "image":"apple.jpeg", "amount":"6", "value":"3000원"]
        let item2 = ["name":"블루베리", "image":"blueberry.jpg", "amount":"10", "value":"4000원"]
        let item3 = ["name":"당근", "image":"carrot.jpg", "amount":"13", "value":"7000원"]
        let item4 = ["name":"체리", "image":"cherry.png", "amount":"1", "value":"5000원"]
        let item5 = ["name":"포도", "image":"grape.jpg", "amount":"13", "value":"8000원"]
        let item6 = ["name":"키위", "image":"kiwi.png", "amount":"2", "value":"9000원"]
        let item7 = ["name":"레몬", "image":"lemon.png", "amount":"3", "value":"500원"]
        let item8 = ["name":"라임", "image":"lime.jpg", "amount":"4", "value":"400원"]
        let item9 = ["name":"고기", "image":"meat.jpg", "amount":"7", "value":"1000원"]
        let item10 = ["name":"딸기", "image":"strawberry.jpg", "amount":"8", "value":"2500원"]
        let item11 = ["name":"토마토", "image":"tomato.png", "amount":"2", "value":"34000원"]
        let item12 = ["name":"야채", "image":"vegetable.jpg", "amount":"3", "value":"13000원"]
        let item13 = ["name":"멜론", "image":"watermelon.png", "amount":"4", "value":"23000원"]
        
        itemlist = [item1,item2,item3,item4,item5,item6,item7,item8,item9,item10,item11,item12,item13]
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemlist.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomCell
        
        cell.backgroundColor = UIColor.clear
        
        let dicTemp = itemlist[indexPath.row]
        cell.nameLabel.text = dicTemp["name"]
        cell.amountLabel.text = dicTemp["amount"]
        cell.valueLabel.text = dicTemp["value"]
        
        cell.imgView.image = UIImage(named:dicTemp["image"]!)
        
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //세그웨이가 눌러서 화면 바뀌면 이게 실행된다!
        if segue.identifier == "showDetail"{
            (segue.destination as! DetailViewController).detaildata = itemlist[tableView.indexPathForSelectedRow!.row]
        }
    }
}

