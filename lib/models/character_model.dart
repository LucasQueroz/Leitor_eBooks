class Character {
  int id = 0;
  String title = "";
  String author = "";
  String cover_url = "";
  String download_url = "";

  Character(this.id, this.title, this.author, this.cover_url, this.download_url);

  Character.fromJson(Map<String, dynamic> json){
    id = json['id'];
    title = json['title'];
    author = json['author'];
    cover_url = json['cover_url'];
    download_url = json['download_url'];
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['author'] = author;
    data['cover_url'] = cover_url;
    data['download_url'] = download_url;

    return data;
  }
}