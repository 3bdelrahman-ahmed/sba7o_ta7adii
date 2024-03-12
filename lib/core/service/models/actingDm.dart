
class ActingDm {
  String? id;
  String name;

  ActingDm({
     required this.name,
    this.id = ""
  });

  ActingDm.fromjson(Map<String , dynamic>json) : this (
    id: json['id'],
    name: json['name']
  );

  Map<String , dynamic> tojson (){
    return {
      'id' : id,
      'name' : name,
    };
  }
}
