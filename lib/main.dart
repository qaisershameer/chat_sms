import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:chat_sms/screens/welcome_screen.dart';
import 'package:chat_sms/screens/login_screen.dart';
import 'package:chat_sms/screens/registration_screen.dart';
import 'package:chat_sms/screens/chat_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: 'AIzaSyAZoQ-bzEPF27axDNf9-kjsrWLaNRW8DEU',
        appId: '1:43107260101:android:8e74197a288984b865c2ac',
        messagingSenderId: '43107260101',
        projectId: 'chatsms-9d1ae',
        storageBucket: 'myapp-b9yt18.appspot.com',
      )
  );
  runApp(const FlashChat());
}

class FlashChat extends StatelessWidget {
  const FlashChat({super.key});
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: WelcomeScreen.id,
        routes: {
          WelcomeScreen.id: (context) => const WelcomeScreen(),
          LoginScreen.id: (context) => const LoginScreen(),
          RegistrationScreen.id: (context) => const RegistrationScreen(),
          ChatScreen.id: (context) => const ChatScreen(),
        },
    );
  }
}
