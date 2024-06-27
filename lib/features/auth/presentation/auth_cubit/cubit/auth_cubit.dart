import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  String? firstName;
  String? lastName;
  String? emailAddress;
  String? password;
  GlobalKey<FormState> signupFormKey = GlobalKey();
  GlobalKey<FormState> signInFormKey = GlobalKey();
  bool? termsAndConditionCheckBoxValue = false;
  bool? obscurePasswordTextValue = true;

  Future<void> signUpUserWithEmailAndPassword() async {
    emit(AuthSignUpLoadingState());
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      verifyEmail();
      emit(AuthSignUpSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(AuthSignUpFailureState(
            errMessage: 'The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        emit(AuthSignUpFailureState(
            errMessage: 'The account already exists for that email.'));
      } else if (e.code == 'invalid-email') {
        emit(AuthSignUpFailureState(errMessage: 'The email is invalid.'));
      } else {
        emit(AuthSignUpFailureState(errMessage: e.code));
      }
    } catch (e) {
      emit(AuthSignUpFailureState(errMessage: e.toString()));
    }
  }

  void updateTermsAndConditionCheckBox({required bool? newValue}) {
    if (newValue != null) {
      termsAndConditionCheckBoxValue = newValue;
      emit(TermsAndConditionUpdateState());
    }
  }

  Future<void> verifyEmail() async {
    await FirebaseAuth.instance.currentUser!.sendEmailVerification();
  }

  void obscurePasswordText() {
    if (obscurePasswordTextValue == true) {
      obscurePasswordTextValue = false;
    } else {
      obscurePasswordTextValue = true;
    }
    emit(ObscurePasswordTextUpdateState());
  }

  Future<void> signInWithEmailAndPassword() async {
    emit(AuthSignInLoadingState());
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      emit(AuthSignInSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(AuthSignInFailureState(
            errMessage: 'No user found for that email.'));
      } else if (e.code == 'wrong-password') {
        emit(AuthSignInFailureState(
            errMessage: 'Wrong password provided for that user.'));
      } else {
        emit(AuthSignInFailureState(
            errMessage: 'Check your Email and password!'));
      }
    } catch (e) {
      emit(AuthSignInFailureState(errMessage: e.toString()));
    }
  }
}
