// ignore_for_file: file_names

import 'package:side_by_side/screens/AAccountSetupScreen.dart';
import 'package:flutter/material.dart';
import 'package:side_by_side/utils/AColors.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:side_by_side/main.dart';

class AResetPasswordScreen extends StatefulWidget {
  const AResetPasswordScreen({super.key});

  @override
  State<AResetPasswordScreen> createState() => _AResetPasswordScreenState();
}

class _AResetPasswordScreenState extends State<AResetPasswordScreen> {
  var viewPassword1 = true;
  var viewPassword2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).viewPadding.top),
            InkWell(
              onTap: () => Navigator.pop(context),
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: appStore.isDarkModeOn
                      ? context.cardColor
                      : appetitAppContainerColor,
                ),
                child: const Icon(Icons.arrow_back_ios_outlined,
                    color: appetitBrownColor),
              ),
            ),
            const SizedBox(height: 60),
            const Text('Reset Password',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600)),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                  'Enter your new password twice another for confirmation for this account.'),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: TextFormField(
                textInputAction: TextInputAction.next,
                obscureText: viewPassword1,
                decoration: InputDecoration(
                  filled: true,
                  labelStyle: const TextStyle(color: Colors.grey),
                  fillColor: appStore.isDarkModeOn
                      ? context.cardColor
                      : appetitAppContainerColor,
                  border: InputBorder.none,
                  labelText: 'Enter password',
                  hintText: 'Enter your password',
                  hintStyle: const TextStyle(color: Colors.grey),
                  suffixIcon: IconButton(
                    icon: viewPassword1
                        ? const Icon(Icons.visibility_off_outlined,
                            color: Colors.grey)
                        : const Icon(Icons.visibility, color: Colors.grey),
                    onPressed: () =>
                        setState(() => viewPassword1 = !viewPassword1),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: TextFormField(
                obscureText: viewPassword2,
                decoration: InputDecoration(
                  filled: true,
                  labelStyle: const TextStyle(color: Colors.grey),
                  fillColor: appStore.isDarkModeOn
                      ? context.cardColor
                      : appetitAppContainerColor,
                  border: InputBorder.none,
                  labelText: 'Confirm password',
                  hintText: 'Confirm your password',
                  hintStyle: const TextStyle(color: Colors.grey),
                  suffixIcon: IconButton(
                    icon: viewPassword2
                        ? const Icon(Icons.visibility_off_outlined,
                            color: Colors.grey)
                        : const Icon(Icons.visibility, color: Colors.grey),
                    onPressed: () =>
                        setState(() => viewPassword2 = !viewPassword2),
                  ),
                ),
              ),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                height: 60,
                width: 210,
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content:
                            Text('Your account password reset successfully')));
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AAccountSetupScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange.shade600,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Next', style: TextStyle(fontSize: 18)),
                      SizedBox(width: 8),
                      Icon(Icons.arrow_forward_ios_outlined, size: 15),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
