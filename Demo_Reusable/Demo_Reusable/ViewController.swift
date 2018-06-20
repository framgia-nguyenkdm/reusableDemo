//
//  ViewController.swift
//  Demo_Reusable
//
//  Created by khuc.d.m.nguyen on 6/20/18.
//  Copyright © 2018 khuc.d.m.nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myTableView: UITableView!
    private var models: [People] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        createArr()
        configTableView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func createArr() {
        let cr7 = People(name: "Cristiano Ronaldo", photo: "cr7", job: "Football player")
        let messi = People(name: "Lionel Messi", photo: "messi", job: "Football player")
        let maria = People(name: "Maria Ozawaa", photo: "maria", job: "Artist")
        let kali = People(name: "Kali Roses", photo: "kali", job: "Artist")
        let racingBoy = People(name: "VN Racing Boy", photo: "racing", job: "Trẻ trâu")
        models = [cr7, messi, maria, racingBoy, kali]
    }
    
    func configTableView() {
        myTableView.register(nibName: CustomViewCell.self)
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(CustomViewCell.self)
        cell.configCell(people: models[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}
