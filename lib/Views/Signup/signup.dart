import 'package:develop_design_system/DesignSystem/Components/Buttons/ActionButton/action_button.dart';
import 'package:develop_design_system/DesignSystem/Components/Buttons/ActionButton/action_button_view_model.dart';
import 'package:develop_design_system/DesignSystem/Components/InputField/input_text.dart';
import 'package:develop_design_system/DesignSystem/Components/InputField/input_text_view_model.dart';
import 'package:develop_design_system/DesignSystem/Components/LinkedLabel/linked_label.dart';
import 'package:develop_design_system/DesignSystem/Components/LinkedLabel/linked_label_view_model.dart';
import 'package:develop_design_system/Views/Login/login.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool acceptedTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 32),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
              ),
              clipBehavior: Clip.hardEdge,
              child: Image.asset(
                'assets/148x148.png',
                fit: BoxFit.cover,
              )
            ),
            const SizedBox(height: 64,),
            StyledInputField.instantiate(
              viewModel: InputTextViewModel(
                controller: emailController,
                placeholder: 'E-mail',
                password: false,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Esse campo é obrigatório';
                  } else if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                    return 'Somente letras são permitidas!';
                  }
                  return null;
                }
              ),
            ),
            const SizedBox(height: 16),
            StyledInputField.instantiate(
              viewModel: InputTextViewModel(
                controller: passwordController,
                placeholder: 'Password',
                password: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Esse campo é obrigatório';
                  } else if (value.length < 6) {
                    return 'A senha deve ter no mínimo 6 caracteres';
                  }
                  return null;
                }
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  value: acceptedTerms,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  checkColor: Colors.transparent,
                  onChanged: (value) {
                    setState(() {
                      acceptedTerms = value!;
                    });
                  }
                ),
                LinkedLabel.instantiate(
                  viewModel: LinkedLabelViewModel(
                    fullText: 'I have read and agree Terms & Services',
                    linkedText: 'Terms & Services',
                    onLinkTap: () {
                      print('Tudo liberado!');
                    }
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            ActionButton.instantiate(
              viewModel: ActionButtonViewModel(
                style: ActionButtonStyle.primary,
                size: ActionButtonSize.large,
                text: 'Sign Up',
                onPressed: () {
                  print('Cadastrado!');
                }
              )
            ),
            const SizedBox(height: 96),
            const Text(
              'Already Have An Account?',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w600
              ),
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: 73,
              child: ActionButton.instantiate(
                viewModel: ActionButtonViewModel(
                  style: ActionButtonStyle.primary,
                  size: ActionButtonSize.small,
                  text: 'Login',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginPage())
                    );
                  }
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}