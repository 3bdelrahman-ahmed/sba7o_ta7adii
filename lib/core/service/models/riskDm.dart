class RiskDm {
  String? id;
  String category;
  String fiveQuest;
  String fiveAns;
  String tenQuest;
  String tenAns;
  String twentQuest;
  String twentAns;
  String fourtQuest;
  String fourtAns;

  RiskDm({this.id = "",
    required this.category,
    required this.fiveQuest, required this.fiveAns,
    required this.tenQuest,  required this.tenAns,
    required this.twentQuest, required this.twentAns,
    required this.fourtQuest, required this.fourtAns});
  RiskDm.fromjson(Map<String , dynamic> json) : this (
    category: json['category'],
    id: json['id'],
      fiveQuest: json['fiveQuest'],
      fiveAns: json['fiveAns'],
    tenQuest: json['tenQuest'],
    tenAns: json['tenAns'],
    twentQuest: json['twentQuest'],
    twentAns: json['twentAns'],
    fourtQuest: json['fourtQuest'],
    fourtAns: json['fourtAns'],
  );

  Map<String , dynamic> tojson(){
    return {
      "id" : id,
      "category" : category,
      "fiveQuest" : fiveQuest,
      "fiveAns" : fiveAns,
    "tenQuest" : tenQuest,
    "tenAns" : tenAns,
    "twentQuest" : twentQuest,
    "twentAns" : twentAns,
    "fourtQuest" : fourtQuest,
    "fourtAns" : fourtAns
    };
  }
}