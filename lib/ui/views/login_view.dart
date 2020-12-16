import 'package:flutter/material.dart';
import 'package:survea_app/ui/ui_helper.dart';


class Login extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();
  String _password;
  String _username;

  @override
  Widget build(BuildContext context) {
    UIHelper.init(context);
    return Scaffold(
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              Container(
                child : Padding(
                  padding: const EdgeInsets.symmetric(vertical :10.0,horizontal: 25.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        UIHelper.vSpaceXLarge(),UIHelper.vSpaceXLarge(),UIHelper.vSpaceXLarge(),UIHelper.vSpaceXSmall(),UIHelper.vSpaceXSmall(),
                        Text('Welcome',
                            style : Theme.of(context).textTheme.display1
                        ),
                        Text('To Survea !',
                            style : Theme.of(context).textTheme.display1
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 2.0),
                          child: Text('Sign In',
                              style : Theme.of(context).textTheme.display2.copyWith(color: UIHelper.grayText)
                          ),
                        ),
                        TextFormField(
                          onSaved: (value) => _username = value,    // <= NEW
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              contentPadding: new EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
                              labelText: 'Username'
                          ),
                        ),
                        TextFormField(
                          onSaved: (value) => _password = value,
                          obscureText: true,
                          decoration: InputDecoration(
                              contentPadding: new EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
                              labelText: 'Password'
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 0.0),
                          child: ButtonTheme(
                              minWidth: 320.0,
                              child: RaisedButton(
                                color : UIHelper.surveaBlue,
                                child: Text('Sign In', textAlign: TextAlign.center, style: Theme.of(context).textTheme.display3,
                                ),
                                onPressed: (){},
                              )),
                        ),
                        ButtonTheme(
                          minWidth: 320.0,
                          child: RaisedButton(
                              onPressed: () {},
                              color : UIHelper.surveaBlue,
                              child: Text('Dont Have Account? Sign Up Here!', textAlign: TextAlign.center, style: Theme.of(context).textTheme.display3,)
                          ),
                        ),],
                    ),
                  ),
                ),
                height: 692,
                width: 375,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/image/login/bg.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ],
          )

        )
      );
    }
  }

