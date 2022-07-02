import 'package:flutter/material.dart';

class Practice1 extends StatelessWidget {
  const Practice1({Key? key}) : super(key: key);

  final String coverImageSrc =
      'https://mir-s3-cdn-cf.behance.net/projects/404/53374492086043.Y3JvcCwxMTg0LDkyNiwwLDEzNw.jpg';
  final String description =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";

  final double horizontalPadding = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Practice 1'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: Image.network(coverImageSrc),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              margin: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text('Khatulistiwa'),
                      SizedBox(height: 5),
                      Text('Pontianak, 07 Juli 2022'),
                    ],
                  ),
                  Row(
                    children: const <Widget>[
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                      ),
                      SizedBox(width: 5),
                      Text('41'),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              margin: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Column(
                    children: const [
                      Icon(Icons.call),
                      SizedBox(height: 5),
                      Text('Call'),
                    ],
                  ),
                  const SizedBox(width: 10),
                  Column(
                    children: const [
                      Icon(Icons.route),
                      SizedBox(height: 5),
                      Text('Route'),
                    ],
                  ),
                  const SizedBox(width: 10),
                  Column(
                    children: const [
                      Icon(Icons.share),
                      SizedBox(height: 5),
                      Text('Share'),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              margin: const EdgeInsets.only(bottom: 20),
              child: Text(
                description,
                textAlign: TextAlign.justify,
              ),
            )
          ],
        ),
      ),
    );
  }
}