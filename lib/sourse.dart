class Source{
int? id;
String? name;
Source.fromMap(Map<String, dynamic> map){
  id = map['id'];
  name = map['name'];
}

}