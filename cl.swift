import ArgumentParser
@main
struct td: ParsableCommand {
 @Argument var userInput:String
 mutating func run() throws {
  var todoDictionary:[String:String]=[:]
  var somedayList=["以后："]
  var doneList=["已完成："]
  var temporaryString=""
  for character in userInput{
   if character=="\n"{
    switch temporaryString{
     case let x where x.hasPrefix("[x]"):doneList.append(temporaryString)
     case let x where x.hasPrefix("[?]"):somedayList.append(temporaryString)
     default:todoDictionary[temporaryString]="[ ]"
    }
    temporaryString=""
   }else{temporaryString.append(character)}
  }
  for item in (somedayList+doneList){print(item)}
  print("待办：")
  for (key,value) in todoDictionary{
   print(value,key)
  }
 }
}