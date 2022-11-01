
import 'package:dio/dio.dart';
import 'package:flutter_app/src/get_sentences/models/character.dart';

class SentenceRepository {

	final Dio dio = Dio();

	Future<List<Character>> getList() async {

    final response = await dio.get('https://hp-api.herokuapp.com/api/characters');

		final data = List.from(response.data);

		final mapList = data.map((e) => Map<String, dynamic>.from(e)).toList();

		return mapList.map((e) => Character.fromMap(e)).toList();

	}


}