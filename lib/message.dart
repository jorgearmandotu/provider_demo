
import 'package:flutter/cupertino.dart';

class Message extends ChangeNotifier {
  String _message = 'default';

  get message{
    return _message;
  }

  set messageData(String mesg){
    _message = mesg;

    notifyListeners();
  }
}