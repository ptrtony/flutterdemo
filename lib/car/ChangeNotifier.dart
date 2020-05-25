//
//
//import 'package:flutter/foundation.dart';
//
//class ChangeNotifier implements Listenable{
//
//  List listeners=[];
//  @override
//  void addListener(listener) {
//    listeners.add(listener);
//  }
//
//  @override
//  void removeListener(listener) {
//    listeners.remove(listener);
//  }
//
//  void notifyListener(){
//    listeners.forEach((element) => element());
//  }
//
//}