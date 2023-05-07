import 'dart:convert';

void main() {
  String someJson = """{
   "iceCreams": [
      {
         "flavor": "raspberry",
         "color": "red"
      },
      {
         "flavor": "banana",
         "color": "yellow"
      }
   ]
  }""";

  var json = jsonDecode(someJson) as Map<String, List<Map<String, String>>>;

  // (Part 2) should print raspberry
  print(json["iceCreams"]![0]["flavor"]);

  // (Part 3) how is this evcen possible?
  print(json["iceCreams"]![0]["flavor"]!.toUpperCase());
}
