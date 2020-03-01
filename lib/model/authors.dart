import 'package:sinta_app/model/affiliation.dart';

class Authors {

  String id;
  String nidn;
  String fullname;
  String google_id;
  String scopus_id;
  String sinta_score;
  String sinta_score_3;
  String sinta_score_v2;
  String sinta_score_v2_3y;
  String scopus_hindex;
  String google_hindex;
  Affiliation affiliation;

	Authors.fromJsonMap(Map<String, dynamic> map): 
		id = map["id"],
		nidn = map["nidn"],
		fullname = map["fullname"],
		google_id = map["google_id"],
		scopus_id = map["scopus_id"],
		sinta_score = map["sinta_score"],
		sinta_score_3 = map["sinta_score_3"],
		sinta_score_v2 = map["sinta_score_v2"],
		sinta_score_v2_3y = map["sinta_score_v2_3y"],
		scopus_hindex = map["scopus_hindex"],
		google_hindex = map["google_hindex"],
		affiliation = Affiliation.fromJsonMap(map["affiliation"]);

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = id;
		data['nidn'] = nidn;
		data['fullname'] = fullname;
		data['google_id'] = google_id;
		data['scopus_id'] = scopus_id;
		data['sinta_score'] = sinta_score;
		data['sinta_score_3'] = sinta_score_3;
		data['sinta_score_v2'] = sinta_score_v2;
		data['sinta_score_v2_3y'] = sinta_score_v2_3y;
		data['scopus_hindex'] = scopus_hindex;
		data['google_hindex'] = google_hindex;
		data['affiliation'] = affiliation == null ? null : affiliation.toJson();
		return data;
	}
}

