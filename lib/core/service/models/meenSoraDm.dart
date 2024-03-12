class MeenSoraDm{
String ?id;
String teamsheet;
String imageurl;
String players;

MeenSoraDm({this.id = '',
  required this.teamsheet,
  required this.imageurl,
  required this.players});

MeenSoraDm.fromjson(Map<String,dynamic> json) :this(
  id: json['id'],
  teamsheet: json['teamsheet'],
  imageurl: json['imageurl'],
  players: json['players']
);

Map<String , dynamic> tojson(){
  return {
    'id' : id,
    'teamsheet': teamsheet,
    'imageurl':imageurl,
    'players':players
  };
}
}