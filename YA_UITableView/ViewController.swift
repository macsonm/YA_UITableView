//
//  ViewController.swift
//  YA_UITableView
//
//  Created by Maxim M on 19.01.2022.
//

import UIKit

class ViewController: UIViewController {

    var categories = RecipeCategory.allRecipes
    var reuseIdentifier = "recipe cell"
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UINib(nibName: "RecipeTableViewCell", bundle: nil), forCellReuseIdentifier: reuseIdentifier)
        
    }
}
    
extension ViewController: UITableViewDataSource,UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories[section].recipes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! RecipeTableViewCell
//    }
//        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: reuseIdentifier) //извлекаем лишнюю для отображения ячейку
        let recipe = categories[indexPath.section].recipes[indexPath.row]

        cell.iconImageView.image = recipe.image
        cell.recipeTitleLabel.text = recipe.title
        cell.recipeIngredientsLabel.text = recipe.ingredients
        
//        var content = cell.defaultContentConfiguration()
//        content.text = recipe.title
//        content.secondaryText = recipe.ingredients
//        content.image = UIImage(systemName: "soupImage")
//        cell.contentConfiguration = content

//        cell.textLabel?.text = recipe.title
//        cell.textLabel?.numberOfLines = 0
//        cell.detailTextLabel?.text = recipe.ingredients
//        cell.detailTextLabel?.numberOfLines = 0

        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {     //подписываем секции для понимания, что к какой секции относится
        return categories[section].title
    }
}


