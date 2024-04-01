void main() {
  Future.delayed(Duration(seconds: 1), () {
    print("小美收下任務");
  });

//將會在目前事件佇列的末端盡快執行，而不會等待延遲,微任務
  Future.microtask(() => {print("小菜練習flutter應用")});

  print("會議結束");

  Future.microtask(()  {
    return "吃中餐";
    }).then((lastTaskEatLunch) {
      print(lastTaskEatLunch);
      return "訂高鐵票";
    }).then((lastTaskHighRoadway) {
      print(lastTaskHighRoadway);
      return "搭車去高鐵";
    }).then((lastTaskTakeTaxi){
      print(lastTaskTakeTaxi);
    });

xiaoMeiSchedule();
    

    



}

void xiaoMeiSchedule() async{
      String lastTask = await Future.microtask(() {
        return "小美吃中餐";
      });

      if (lastTask == "小美吃中餐"){
        print(lastTask);
        lastTask = "小美訂高鐵票";
      }

      if(lastTask == "小美訂高鐵票"){
        print(lastTask);
        lastTask = "小美搭車去高鐵";
      }

      print(lastTask);



    }

//shift+option+F 整理代碼

