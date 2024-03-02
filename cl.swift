import ArgumentParser
@main
struct td: ParsableCommand {
@Argument var userInput:String
//用户输入待办事项列表，已完成的条目用“[x]”标记，以后再做的事用“[?]”标记，当日待办事项不做标记
 mutating func run() throws {
  var temporaryString=""
  var todoList=[String]()
//userInput一定会有内容，所以这个列表不会是空的
  var doneProgress=""
  var todoProgress=""
  userInput+="\n"
//程序执行的时候以换行符作为一个标志，用户的输入通常最后一行不带有换行标志，这里加入一个以确保最后一行不会被错过
  for character in userInput{
   if character=="\n"{
    if !temporaryString.isEmpty{
     if !temporaryString.hasPrefix("[?]"){
      switch temporaryString.hasPrefix("[x]"){
       case true:doneProgress+="◼︎"
       case false:
        todoList.append(temporaryString)
        todoProgress+="☐"
      }
     }
     temporaryString=""
    }
   }else{temporaryString.append(character)}
  }
  let progressbar=doneProgress+todoProgress
  if progressbar.count>2{print(progressbar)}
//如果有超过两个条目，展示进度条。否则只有一个或两个小方块，非常像乱码
  if let randomTodo=todoList.randomElement(){print(randomTodo)}
//随机展示一条待办事项
 }
}