import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

class Externo{
  void convertir() async{
    try{
      String a = 'a';
      int.parse(a);
    }catch(e,s){
      if(!kIsWeb){
        await FirebaseCrashlytics.instance.recordError(e, s, reason: 'Error en el paquete externo');
      }
    }
  }
}