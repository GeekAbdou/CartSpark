import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthViewModel extends GetxController {
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  FirebaseAuth _auth = FirebaseAuth.instance;
  FacebookLogin _facebookLogin = FacebookLogin();


  Future<void> googleSignIn() async {
    final GoogleSignInAccount _googleUser = await _googleSignIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication = await _googleUser.authentication;
    final AuthCredential googleCredential = GoogleAuthProvider.credential(
      idToken: googleSignInAuthentication.idToken,
      accessToken: googleSignInAuthentication.accessToken,
    );
    print(googleSignInAuthentication.accessToken);
    await _auth.signInWithCredential(googleCredential);
  }

  Future<void> facebookSignin() async {
    final FacebookLoginResult _facebookUser = await _facebookLogin.logIn(['email']);
    final accessToken = _facebookUser.accessToken.token;
    if(_facebookUser.status == FacebookLoginStatus.loggedIn){
      final faceCredentail = FacebookAuthProvider.credential(accessToken);
      await _auth.signInWithCredential(faceCredentail);
    }
    else {

    }
  }

}
