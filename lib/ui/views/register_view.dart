import 'package:flutter/material.dart';
import 'package:survea_app/ui/ui_helper.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UIHelper.init(context);
    return Scaffold(
        body: SafeArea(
          child : ListView(
            children: <Widget>[
              Container(
                child : Padding(
                  padding: const EdgeInsets.symmetric(vertical :10.0,horizontal: 25.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      UIHelper.vSpaceXLarge(),UIHelper.vSpaceXLarge(),UIHelper.vSpaceMedium(),UIHelper.vSpaceMedium(),UIHelper.vSpaceXSmall(),UIHelper.vSpaceXSmall(),
                      Text('Welcome',
                          style : Theme.of(context).textTheme.display1
                      ),
                      Text('To Survea !',
                          style : Theme.of(context).textTheme.display1
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 2.0),
                        child: Text('Sign Up',
                            style : Theme.of(context).textTheme.display2.copyWith(color: UIHelper.grayText)
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            contentPadding: new EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
                            labelText: 'Email'
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            contentPadding: new EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
                            labelText: 'Username'
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            contentPadding: new EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
                            labelText: 'Password'
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            contentPadding: new EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
                            labelText: 'Re-Type Password'
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                        child: ButtonTheme(
                            minWidth: 320.0,
                            child: RaisedButton(
                              color : UIHelper.surveaBlue,
                              child: Text('Sign Up', textAlign: TextAlign.center, style: Theme.of(context).textTheme.display3,
                              ),
                              onPressed: (){},
                            )),
                      ),
                    ],
                  ),
                ),
                height: 692,
                width: 375,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/image/register/bg.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ],

          ),
        )
    );
  }
}
