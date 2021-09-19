//
//  Category+CoreDataProperties.swift
//  Fact me
//
//  Created by DEV Angelion on 19.09.21.
//
//

import Foundation
import CoreData


extension Category {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Category> {
        return NSFetchRequest<Category>(entityName: "Category")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name_en: String?
    @NSManaged public var name_ru: String?
    @NSManaged public var facts: NSSet?

}

// MARK: Generated accessors for facts
extension Category {

    @objc(addFactsObject:)
    @NSManaged public func addToFacts(_ value: Fact)

    @objc(removeFactsObject:)
    @NSManaged public func removeFromFacts(_ value: Fact)

    @objc(addFacts:)
    @NSManaged public func addToFacts(_ values: NSSet)

    @objc(removeFacts:)
    @NSManaged public func removeFromFacts(_ values: NSSet)

}

extension Category : Identifiable {

}
