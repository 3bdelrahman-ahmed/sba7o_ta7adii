class BankDm{
  String? id;
  String question;
  String answer;

  BankDm({this.id = '',
    required this.question,
    required this.answer});

  BankDm.fromjson(Map<String , dynamic> json) : this(
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
  }
}