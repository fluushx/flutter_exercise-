import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  String url =
      'https://thumbs.dreamstime.com/z/violet-fairies-forest-dream-woods-violet-fairies-forest-dream-woods-203818608.jpg';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AvatarPage'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://i.pinimg.com/originals/d5/ed/61/d5ed61b27e8e1bde035f0bd9ebc4cb7f.jpg'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.red,
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            image: NetworkImage(url)),
      ),
    );
  }
}
