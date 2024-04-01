
import 'dart:convert';

void main() {

  String name = "小菜";
  String companyName = "雲育鏈";
  int age = 24;
  print(name);
  print(name+"在"+companyName);
  print(age.toString());

  int returnIntWithoutParameter(){
    int result = 1+20;
    return result;
  }

  double returnDoubleWithParameter(int inputInt){
    double result = inputInt * 100/20;
    return result;
  }

  String returnStringWithParameter(String inputStr){
    String result = inputStr + "是一個字串";
    return result;
  }

  void withoutReturnValueJustExecute(){
    print("object");
  }

  int getIntValueFromFunction = returnIntWithoutParameter();
  print(getIntValueFromFunction);

  double getDoubleFromFunctionParameter1 = returnDoubleWithParameter(5);
  double getDoubleFromFunctionParameter2 = returnDoubleWithParameter(2);
  print(getDoubleFromFunctionParameter1);
  print(getDoubleFromFunctionParameter2);

  String getStringFromFunctionParameter1 = returnStringWithParameter("雲育鏈");
  String getStringFromFunctionParameter2 = returnStringWithParameter("大話AWS");
  print(getStringFromFunctionParameter1);
  print(getStringFromFunctionParameter2);

  List<String> menList = ["王小明","李小菜","雲育鏈"];
  print(menList[0]);
  for(int index = 0; index<menList.length; index++){
    print(menList[index]);
  }

  for (String men in menList){
    print(men+"送早餐給小美");
  }

  Map<String, dynamic> jsonData = {
    "name": "John",
    "age": 30,
    "email": "john@example.com"
  };

  

  for (var entry in jsonData.entries) {
    var key = entry.key;
    var value = entry.value;
    print('$key: $value');
  }

  Map<String, String> positionMap = {
    "generalManager":"bing-hong",
    "humanResource":"xiao-tsia",
    "accounting":"xiao-mei"
  };

  print(positionMap['generalManager']);
  positionMap['partTime'] = "xiao-black";
   print(positionMap['partTime']);

  for(String key in positionMap.keys){
    print("positionMap的key是 $key 時, value為 ${positionMap[key]}");
  }

  positionMap.addAll({"worker":"somebody"});
  print(positionMap);

  Map<String, int> exampleMap = {"key1":1, "key2":2, "key3":3};
  Map<int, int> exampleMap2 = {2:999, 1:333};

  Map<String, dynamic> dynamicMap = {
    "name":"xial-mei",
    "age":18
  };

  print(dynamicMap["name"].runtimeType);
  print(dynamicMap["age"].runtimeType);

  String jsonObjectString = """{"name":"小明", "age":28, "job":"engineer"}""";
  Map<String,dynamic> fromJsonObjectStrToDartMap = jsonDecode(jsonObjectString);
  print(fromJsonObjectStrToDartMap["name"]);
  print(fromJsonObjectStrToDartMap["age"]);
  fromJsonObjectStrToDartMap["sex"]="male";
  String fromDartMapToJsonObjectString = jsonEncode(fromJsonObjectStrToDartMap);
  print(fromDartMapToJsonObjectString);
  print(fromDartMapToJsonObjectString.runtimeType);

  String validNestedJsonObjectString = """{"jsonString":"hello", "age":28, "jsonArray":[1,2,3,4,5],"jsonObject":{
    "stringInJsonObject":"abc", "numberInJsonObject":456,"arrayInJsonObject":[7,9,1,3],"objectInJsonObject":{
      "lastStringField":"cxcxc"}}}""";

        // 解析 JSON 字符串為 Map
  Map<String, dynamic> parsedJson = jsonDecode(validNestedJsonObjectString);

  // 從嵌套的 JSON 對象中取得 "stringInJsonObject" 字段的值
  int numberInJsonObject = parsedJson["jsonObject"]["numberInJsonObject"];
  print(numberInJsonObject); // 印出 "abc"
  print(numberInJsonObject.runtimeType); // 印出 "abc"

  dynamic arrayInJsonObject = parsedJson["jsonObject"]["arrayInJsonObject"];
  print(arrayInJsonObject); 
  print(arrayInJsonObject.runtimeType); 

  String stringOfJsonArray = """[1,2,3,4,5]""";
  List<dynamic> jsonArray = jsonDecode(stringOfJsonArray);
  for(int element in jsonArray){
    print(element);
  }

  jsonArray.add(7);
  String jsonArrayToString = jsonEncode(jsonArray);
  print(jsonArrayToString);

  String jsonArrayStringOfJsonObject = """[{"name":"雲育鏈", "age":18},{"name":"小菜","age":15},{"name":"小美","age":21}]""";

  List<dynamic> jsonArrayOfJsonObject = jsonDecode(jsonArrayStringOfJsonObject);

  print(jsonArrayOfJsonObject[0]['name']);

  for(Map<String,dynamic> jsonObject in jsonArrayOfJsonObject){
    print(jsonObject);
  }
  jsonArrayOfJsonObject.add({"name":"Flutter課程","age":1});

  String jsonArrayOfObjectToString = jsonEncode(jsonArrayOfJsonObject);
  print(jsonArrayOfObjectToString);


}
