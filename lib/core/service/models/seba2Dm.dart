class Seba2Dm{
  String? id;
  String question;
  String answer;

  Seba2Dm({this.id = '',
    required this.question,
    required this.answer});

  Seba2Dm.fromjson(Map<String , dynamic> json) : this(
    answer: json['answer'],
    question: json['question'],
    id: json['id'],
  );

  Map<String , dynamic> tojson(){
    return{
      "id" : id,
      "question" : question,
      "answer" : answer
    };
  }}