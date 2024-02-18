import ArgumentParser
@main
struct td: ParsableCommand {
@Argument var userInput:String
 mutating func run() throws {
  var temporaryString=""
  var somedayList=["未来某天："]
  var doneList=["已完成："]
  var todoList=["待办："]
  for character in userInput{
   if character=="\n"{
    switch temporaryString{
     case let x where x.hasPrefix("[?]"):somedayList.append(temporaryString)
     case let x where x.hasPrefix("[x]"):doneList.append(temporaryString)
     default:todoList.append("[ ] "+temporaryString)
    }
    temporaryString=""
   }else{temporaryString.append(character)}
  }
  for item in (somedayList+doneList+todoList){print(item)}
  if todoList.count>1{
   todoList.removeFirst()
   print("下一件：")
   if let nextRandom=todoList.randomElement(){print(nextRandom)}
  }
 }
}