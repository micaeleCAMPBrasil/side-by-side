import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService extends ChangeNotifier {
  static final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  static String verifyId = "";

  // function logout
  static Future logout() async {
    //await GoogleSignIn().signOut();
    await _firebaseAuth.signOut();
  }

  static gerarUserFirebase() {
    var user = _firebaseAuth.currentUser;
    return user;
  }

  static Future<bool> isLoggedIn() async {
    var user = _firebaseAuth.currentUser;
    return user != null;
  }

  static createUserFirebase(String name, String email, String pass) async {
    try {
      final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: pass,
      );

      await userCredential.user?.updateDisplayName(name);

      return userCredential.user?.uid;
    } on FirebaseAuthException catch (e) {
      debugPrint('firebase erro - ${e.code}');
      return e.code;
    } catch (e) {
      return "Error";
    }
  }

  static login(String email, String pass) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: pass,
      );
      return "Sucess";
    } on FirebaseAuthException catch (e) {
      debugPrint('firebase erro ${e.code}');
      return e.code;
    } catch (e) {
      return e.toString();
    }
  }

  static signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser =
          await GoogleSignIn(
            clientId:
                kIsWeb
                    ? '529664438735-eh639hdmsogic38ddqq15t6d6fqgsmba.apps.googleusercontent.com'
                    : null,
          ).signIn();

      if (googleUser == null) return null;

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      UserCredential userCredential = await _firebaseAuth.signInWithCredential(
        credential,
      );

      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'account-exists-with-different-credential') {
        String email = e.email!;
        List<String> methods = await FirebaseAuth.instance
            .fetchSignInMethodsForEmail(email);

        if (methods.contains('password')) {
          // O email já está cadastrado com email/senha
          // Aqui você mostra um alerta informando
          debugPrint(
            'Este email já possui cadastro usando email e senha. Faça login usando essa opção.',
          );
          return 'ja_existe';
        } else {
          debugPrint('Conta existente com outro provedor: $methods');
          return null;
        }
      } else {
        debugPrint('Erro: ${e.message}');
        return null;
      }
    }
  }

  static resetPassword(String email) async {
    try {
      // Usuário cadastrado com e-mail e senha → pode enviar recuperação
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      return 'Enviamos um e-mail para redefinir sua senha. Caso não o encontre, verifique sua caixa de spam ou confirme se o e-mail digitado está cadastrado.';
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-email') {
        return 'E-mail inválido';
      } else {
        return e.message;
      }
    } catch (e) {
      return e;
    }
  }
}
