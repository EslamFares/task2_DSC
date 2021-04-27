import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  List data = [
    {
      'imgUrl':
          'https://images.pexels.com/photos/374870/pexels-photo-374870.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'name': 'img 1'
    },
    {
      'imgUrl':
          'https://images.pexels.com/photos/1563256/pexels-photo-1563256.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'name': 'img 2'
    },
    {
      'imgUrl':
          'https://images.pexels.com/photos/2100018/pexels-photo-2100018.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'name': 'img 3'
    },
    {
      'imgUrl':
          'https://images.pexels.com/photos/2246476/pexels-photo-2246476.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'name': 'img 4'
    },
    {
      'imgUrl':
          'https://images.pexels.com/photos/681335/pexels-photo-681335.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'name': 'img 5'
    },
    {
      'imgUrl':
          'https://images.pexels.com/photos/586687/pexels-photo-586687.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'name': 'img 6'
    },
    {
      'imgUrl':
          'https://images.pexels.com/photos/373974/pexels-photo-373974.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'name': 'img 7'
    },
    {
      'imgUrl':
          'https://images.pexels.com/photos/3573382/pexels-photo-3573382.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'name': 'img 8'
    },
    {
      'imgUrl':
          'https://images.pexels.com/photos/1121782/pexels-photo-1121782.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'name': 'img 9'
    },
    {
      'imgUrl':
          'https://images.pexels.com/photos/2422461/pexels-photo-2422461.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'name': 'img 10'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Background Images'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.teal[900],
      ),
      body: SingleChildScrollView(
              child: Column(
          children: [
            Row(children: [imgName(context, 0), imgName(context, 1)]),
            Row(children: [imgName(context, 2), imgName(context, 3)]),
            Row(children: [imgName(context, 4), imgName(context, 5)]),
            Row(children: [imgName(context, 6), imgName(context, 7)]),
            Row(children: [imgName(context, 8), imgName(context, 9)]),
          ],
        ),
      ),
    );
  }

  Widget imgName(context, index) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * .5 - 10,
          height: 150,
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.teal[900],
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
                image: NetworkImage('${data[index]['imgUrl']}'),
                fit: BoxFit.cover),
           
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * .5 - 10,
          margin: EdgeInsets.only(bottom: 15),
          child: Center(
            child: Text(
              '${data[index]['name']}',
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ],
    );
  }
}
