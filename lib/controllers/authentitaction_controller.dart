import 'dart:io';

import 'package:cflutter/models/users.dart' as models;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';

import '../constants.dart';

class AuthController extends GetxController {
  Future<String> _uploadToStorage(File image) async{
    
   Reference ref = firebaseStorage.ref().child('ProfilePictures').child(firebase_auth.currentUser!.uid);
  UploadTask uploadTask =  ref.putFile(image);
  TaskSnapshot snap = await uploadTask; 
  String downloadUrl = await snap.ref.getDownloadURL();
  return downloadUrl;
  }
  void registerUser(String username, String email , String password, File? image) async {
    try{
      if(username.isNotEmpty && email.isNotEmpty && password.isNotEmpty && image!=null){
     
      UserCredential cred =   await  firebase_auth.createUserWithEmailAndPassword(email: email,password: password);
      
      
    String downloadUrl=  await  _uploadToStorage(image!);
    models.User user = models.User(name: username, email : email , uid : cred.user!.uid , profilePhoto: downloadUrl);
      }
    }
    catch(e){
      Get.snackbar("Error Occured while creating an account", 
      e.toString());
    }
  }

}
