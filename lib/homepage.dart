import 'package:flutter/material.dart';
import 'package:flutter_restapi/api.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Api api =Api();

  var task =[];

  @override
  void initState(){
    getData();
    super.initState();
  }

  getData()async{

    task =await api.getAlbum();
    print(task);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API'),
      ),
    );
  }
}
