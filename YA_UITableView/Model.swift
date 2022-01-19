import UIKit


struct RecipeCategory {
    
    var title : String
    var recipes: [Recipe]
    
}

struct Recipe {
    
    var image: UIImage?
    var title: String
    var ingredients: String
    
}

extension RecipeCategory {
    static var allRecipes: [RecipeCategory] {
        return [
            RecipeCategory(title: "soup", recipes: [
                Recipe(image: UIImage(named: "soupImage"),
                       title: "куриный",
                       ingredients: "курица, перец, морковь"),
                Recipe(image: nil,
                       title: "грибной",
                       ingredients: "грибы")
            ])
        ]
    }
}
