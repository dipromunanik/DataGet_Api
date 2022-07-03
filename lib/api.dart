import 'dart:convert';

import 'package:http/http.dart' as Http;
class Api{

  final url= 'jsonplaceholder.typicode.com';

  Future getAlbum() async{
    var response = await Http.get(Uri.https('$url', 'photos'));

    if(response.statusCode ==200){
      return jsonDecode(response.body);
    }else{

      throw Exception('Error to data load');
    }

  }

}