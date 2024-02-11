import ArgumentParser
@main
struct cl: ParsableCommand {
 @Argument var userInput:String
 mutating func run() throws {
  var todoDictionary:[String:String]=[:]
  var doneList:[String]=["done:"]
  var somedayList:[String]=["someday:"]
  var temporaryString=""
  for character in userInput{
   if character=="\n"{
    switch temporaryString{
     case let x where x.hasPrefix("[x]"):doneList.append(temporaryString)
     case let x where x.hasPrefix("[x]"):somedayList.append(temporaryString)
     default:todoDictionary[temporaryString]="[ ]"
    }
    temporaryString=""
   }else{temporaryString.append(character)}
  }
  for item in (somedayList+doneList){print(item)}
  print("todo")
  for (key,value) in todoDictionary{
   if !key.isEmpty{print(value,key)}
  }
 }
}