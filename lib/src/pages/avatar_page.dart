import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
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
            image: NetworkImage(
                'https://lh3.googleusercontent.com/proxy/gpCtVGb_29DL7rFAlK9NtUvAkirim0GEhvTj2HvqcaIbXtK5LGnkaMbio7nmlMVCyo-bgE1QyC6L_woQkz0j6mFeNoVRTpjxwXCChbv6e96cVMnnOY9YPoXC2o1JYZ14M7YDLtcaD93-HbrvOqlnICdQR8i3f6xBjTx-OpFeHNZzvlriU1AHhfRRrg9rpjzQGmk2urd5miLjgdeudMYRyjEhEYDTnG2EV071UZosWnd2mwI')),
      ),
    );
  }
}
