//
//  ViewController.swift
//  Fact me
//
//  Created by DEV Angelion on 19.09.21.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    var context: NSManagedObjectContext = {
        return AppDelegate().persistentContainer.viewContext
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let newCategory = Category(context: context)
        newCategory.name_en = "Anime"
        newCategory.name_ru = "Аниме"
        
        let newFact = Fact(context: context)
        newFact.category = newCategory
        newFact.text_ru = "Самый кассовый аниме-фильм всех времен - \"Kimi no Na Wa\" (\"Твоё Имя\")."
        newFact.text_en = "The highest-grossing anime film of all time is \"Kimi no Na Wa\" (\"Your Name\")."
        newFact.wasReaded = false
        do {
           try context.save()
        } catch {
            print("Somethin was wrong")
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        do {
            let fetchRequest: NSFetchRequest<Fact> = Fact.fetchRequest()
            let objects = try context.fetch(fetchRequest)
            let fact = objects[0] as Fact
            
            let alert = UIAlertController(title: fact.text_ru, message: fact.text_en, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                switch action.style{
                    case .default:
                    print("default")
                    
                    case .cancel:
                    print("cancel")
                    
                    case .destructive:
                    print("destructive")
                    
                }
            }))
            self.present(alert, animated: true, completion: nil)
        } catch {
            print("Somethin was wrong")
        }
        
        
    }
}

