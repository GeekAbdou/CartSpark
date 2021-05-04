import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthViewModel extends GetxController {
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  FirebaseAuth _auth = FirebaseAuth.instance;


  void googleSignInMethod() async {
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication = await googleUser.authentication;
    print(googleUser);
    final AuthCredential credential = GoogleAuthProvider.credential(
      idToken: googleSignInAuthentication.accessToken,
      accessToken: googleSignInAuthentication.accessToken,
    );

    await _auth.signInWithCredential(credential);
  }
}
