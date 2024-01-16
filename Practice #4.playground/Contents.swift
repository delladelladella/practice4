import UIKit

struct Group {
    let name: String
    var members: [String]
    var membershipPlans: [String: Int]
    
    init(name: String, members: [String], membershipPlans: [String:Int]){
        self.name = name
        self.members = members
        self.membershipPlans = membershipPlans
    }
    
    mutating func addMembershipPlans(){
        membershipPlans["Annual"] = 499
    }
    
    mutating func addMember(newMember: String){
        members.append(newMember)
    }
}

var myGroup = Group(name: "The Morning MeetUp", members: ["Stacy", "Will", "Sara"], membershipPlans: ["Monthly":49])

print(myGroup.membershipPlans)
myGroup.addMembershipPlans()
print(myGroup.membershipPlans)

myGroup.addMember(newMember: "Richard")
print(myGroup.members)

var myFavoriteCities : [String:String] = ["New York" : "New York", "Miami" : "Florida", "Atlanta" : "Georgia"]
print(myFavoriteCities)

var companies : [String: Int] = ["Nike":1000000, "Addias":100000, "Porsche":100000]

var contacts : [Int : String] = [4438021004: "Mike Jones", 231432232: "Rapunzel", 43423414:"Lola"]
print(contacts)


contacts.removeValue(forKey: 4438021004)
print(contacts)
