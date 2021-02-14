class IntroGuide {
  String title;
  String description; 

  IntroGuide({this.title, this.description});

  IntroGuide.fromMap(Map<String, dynamic> map) {
    title = map['title'];
    description = map['description'];
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['description'] = this.description;
    return data;
  }
}