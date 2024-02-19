import ArgumentParser
@main
struct td: ParsableCommand {
 @Argument var userInput:String
//用户输入待办事项列表，已完成的条目用“[x]”标记，以后再做的事用“[?]”标记，当日待办事项不做标记
 mutating func run() throws {
  userInput+="\n"
//程序执行的时候以换行符作为一个标志，用户的输入通常最后一行不带有换行标志，这里加入一个以确保最后一行不会被错过
  var temporaryString=""
  var todoList=[""]
  var todoProgress=""
  var otherProgress=""
  for character in userInput{
   if character=="\n"{
    if !temporaryString.hasPrefix("[x]") && !temporaryString.hasPrefix("[?]") && !temporaryString.isEmpty{
     todoList.append(temporaryString)
     todoProgress+="☐"
    }else{otherProgress+="◼︎"}
    temporaryString=""
   }else{
    temporaryString.append(character)
   }
  }
  print(otherProgress+todoProgress)
//展示进度条
  if todoList.count>1{
   todoList.removeFirst()
   if let randomTodoItem=todoList.randomElement(){print(randomTodoItem)}
//随机展示一条待办事项
  }
 }
}