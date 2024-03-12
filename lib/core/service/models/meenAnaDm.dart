class MeenAnaDm{
  String? id;
  String first;
  String second;
  String third;
  String fourth;
  String fifth;
  String name;

  MeenAnaDm(
  {
    this.id = '',
    required this.first,
    required this.second,
    required this.third,
    required this.fourth,
    required this.fifth,
    required this.name
});
  MeenAnaDm.fromjson(Map<String , dynamic>json) : this(
    id: json['id'],
    first: json['first'],
    second: json['second'],
    third: json['third'],
    fourth: json['fourth'],
    fifth: json['fifth'],
    name: json['name']
  );

  Map<String, dynamic> tojson(){
    return {
      'id' : id,
      'first' : first,
      'second' :second,
      'third' : third,
      'fourth' : fourth,
      'fifth' : fifth,
      'name' : name,

  };
}
}