//
//  Fact+CoreDataProperties.swift
//  Fact me
//
//  Created by DEV Angelion on 19.09.21.
//
//

import Foundation
import CoreData


extension Fact {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Fact> {
        return NSFetchRequest<Fact>(entityName: "Fact")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var text_ru: String?
    @NSManaged public var wasReaded: Bool
    @NSManaged public var text_en: String?
    @NSManaged public var category: Category?

}

extension Fact : Identifiable {

}
