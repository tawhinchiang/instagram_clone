import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 250),
            child: Center(
              child: ColorFiltered(
                colorFilter: const ColorFilter.mode(
                  Color(0xFF262626),
                  BlendMode.srcIn,
                ),
                child: Image.asset('assets/images/InstagramLogo.png'),
              ),
            ),
          ),
          const SizedBox(height: 30),
          const Column(
            children: [
              CircleAvatar(
                radius: 45,
                backgroundImage: AssetImage('assets/images/user.jpeg'),
              ),
              SizedBox(height: 10),
              Text(
                '@yochiang', // Nome de usuário
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {
              // Lógica do botão
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF3797EF),
              minimumSize: const Size(307, 44),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text(
              'Log in',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 35.0),
            child: Text(
              'Switch accounts',
              style: TextStyle(
                  color: Color(0xFF3797EF), fontWeight: FontWeight.w600),
            ),
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.only(bottom: 20.0),
            child: Divider(
              color: Color.fromRGBO(60, 60, 67, 0.29),
              thickness: 1,
              indent: 0,
              endIndent: 0,
              height: 18,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Don’t have an account? ',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.4),
                        fontSize: 14,
                      ),
                    ),
                    const TextSpan(
                      text: 'Sign up.',
                      style: TextStyle(
                        color: Color(0xFF262626), // Cor #262626
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
