import 'package:flutter/material.dart';
import 'package:survea_app/ui/ui_helper.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UIHelper.init(context);
    return Scaffold(
        body: SafeArea(
          child : Container(
            child : Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  UIHelper.vSpaceXLarge(),UIHelper.vSpaceXLarge(),UIHelper.vSpaceXLarge(),
                  Text('Welcome',
                  style : Theme.of(context).textTheme.display1
                  ),
                  Text('To Survea !',
                      style : Theme.of(context).textTheme.display1
                  ),
                  Text('Sign In',
                      style : Theme.of(context).textTheme.display2.copyWith(color: UIHelper.grayText)
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
        )
      );
    }
  }

