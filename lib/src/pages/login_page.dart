import 'package:app_fluxolivre/src/widgets/input_login_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/img_fundologin.png"),
            fit: BoxFit.cover)
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                child: Image(
                  image: AssetImage("assets/images/et.png"),
                  height: 300,
                  width: 300,
                  ),
              ),
              InputLoginWidget(
                icon: Icons.person_2_outlined, 
                hint: 'User', 
                obscure: false,
                ),
                const SizedBox(height: 15),
                InputLoginWidget(
                  icon: Icons.password_outlined, 
                  hint: 'Password', 
                  obscure: true,
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 230, 0),
                      minimumSize: Size(double.infinity, 60),
                      padding: EdgeInsets.all(1.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14)
                      ),
                    ),
                    onPressed:(){
                      Navigator.of(context).pushNamed('/home');
                    }, 
                    child: const Text(
                      "Entrar",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 0, 42, 180),
                      ),
                      ),
                      ),
                    const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/cadastro');
                      },
                      
                      child: const Text(
                        'Cadastrar',
                        style: TextStyle(decoration: TextDecoration.underline, decorationColor: Color.fromARGB(255, 255, 255, 255), color: Color.fromARGB(255, 255, 255, 255), fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
