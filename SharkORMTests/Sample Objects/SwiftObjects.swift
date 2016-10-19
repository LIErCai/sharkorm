//
//  SwiftTest.swift
//  SharkORM
//
//  Copyright © 2016 SharkSync. All rights reserved.
//

import Foundation

class PersonSwift : SRKObject {
    
    internal dynamic var Name: String!
    internal dynamic var age: NSNumber = 39
    internal dynamic var department: DepartmentSwift?
    
}

class SmallPersonSwift : PersonSwift {
    
    dynamic var height: NSNumber?
    
}

class DepartmentSwift : SRKObject {
    
    dynamic var name: String?
    
}

class SwiftTestClass : SRKObject {
	
	dynamic var SwiftTestString : String?
	dynamic var SwiftTestNumber : NSNumber?
	dynamic var lowercaseField : String?
    dynamic var isdeleted : Bool = false
	var nonDynamicVariable : String?
    var testVar : Int?
    
    override init() {
        super.init()
    }
    
    init(defaultString: String?) {
        super.init()
        self.SwiftTestString = defaultString;
        self.nonDynamicVariable = defaultString;
    }
	
	func testThyself() {
		
        let l = PersonSwift()
        l.Name = "adrian";
        l.commit()
        
        let q = PersonSwift.query().fetch();
        print(q[0]);
        
        print((q[0] as! PersonSwift).Name)
        
	}
	
	class PrivateSwiftClass: SRKObject {
		
		dynamic var SwiftTestString : String!
		dynamic var SwiftTestNumber : NSNumber!
		
		func testThyself() {
		
            
		}
    
		
	}
	
}