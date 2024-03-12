class LabsDm {
  String? id;
  String question;
  String answers;

  LabsDm({this.id = '',
    required this.question,
    required this.answers});

  LabsDm.fromjson(Map<String , dynamic> json) : this(
    answers: json['answers'],
    question: json['question'],
    id: json['id'],
  );

  Map<String , dynamic> tojson(){
    return{
      "id" : id,
      "question" : question,
      "answers" : answers
    };
  }
}
