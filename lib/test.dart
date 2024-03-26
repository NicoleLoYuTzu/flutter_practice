
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
}
