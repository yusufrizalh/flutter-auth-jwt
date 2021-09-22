// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import './pixabay-data.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    ImageData.init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pixabay Data'),
      ),
      body: ListView.separated(
        itemBuilder: (_, index) => GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/detail',
                arguments: ImageData.pixabay[index]);
          },
          child: ListTile(
            leading: Hero(
              tag: ImageData.pixabay[index].id,
              child: Image.network(ImageData.pixabay[index].imageUrl),
              transitionOnUserGestures: true,
            ),
            title: Text(ImageData.pixabay[index].title),
            subtitle: Text(ImageData.pixabay[index].author),
          ),
        ),
        separatorBuilder: (context, position) {
          return Divider();
        },
        itemCount: ImageData.pixabay.length,
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final pixabay;
  DetailPage(this.pixabay);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
      ),
      body: Center(
        child: Hero(tag: pixabay.id, child: Image.network(pixabay.imageUrl)),
      ),
    );
  }
}
