//
//  MainViewController.swift
//  Lovely Places
//
//  Created by Илья Перевозкин on 16.03.2021.
//

import UIKit

class MainViewController: UITableViewController {

    let lakes = ["Иткуль","Банное","Сунгуль","Балтым","Старая линза","Шарташ","Верх-Исетский пруд"]
    let seas = ["Чёрное море","Средиземное море","Красное море"]
    let countries = ["Россия","Египет","Турция","Казахстан","Украина"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lakes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = lakes[indexPath.row]
        cell.imageView?.image = UIImage(named: lakes[indexPath.row])
        cell.imageView?.layer.cornerRadius = cell.frame.size.height / 2
        cell.imageView?.clipsToBounds = true

        return cell
    }
    // MARK: - Table View Delegate

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
