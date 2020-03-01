import 'Authors.dart';

class ResponseAuthors {
  int count;
  int page;
  int items;
  String sort;
  List<Authors> authors;


  ResponseAuthors(this.count, this.page, this.items, this.sort, this.authors);

  ResponseAuthors.fromJsonMap(Map<String, dynamic> map)
      : count = map["count"],
        page = map["page"],
        items = map["items"],
        sort = map["sort"],
        authors = List<Authors>.from(
            map["authors"].map((it) => Authors.fromJsonMap(it)));

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = count;
    data['page'] = page;
    data['items'] = items;
    data['sort'] = sort;
    data['authors'] =
        authors != null ? this.authors.map((v) => v.toJson()).toList() : null;
    return data;
  }
}
