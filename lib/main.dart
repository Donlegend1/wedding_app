import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_flutter_app/constants/bottom_bar_unauthorized.dart'; // Ensure the path is correct
import 'package:my_flutter_app/routes/routes.dart';
import 'package:my_flutter_app/features/welcome/screens/home.dart';
import 'package:my_flutter_app/features/support/screens/support.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() {
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
const MyApp({super.key});

@override
Widget build(BuildContext context) {
return MaterialApp.router(
routerConfig: router,
debugShowCheckedModeBanner: false,
title: 'Simple Wedding',
theme: ThemeData(
colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
useMaterial3: true,
),
// home: const MyHomePage(title: 'Wedding app'),
);
}
}

class MyHomePage extends StatefulWidget {
const MyHomePage({super.key, required this.title});

final String title;

@override
State<MyHomePage> createState() => _MyHomePageState();
	}

	class _MyHomePageState extends State<MyHomePage> {
		int _selectedIndex = 0;

		void _onItemTapped(int index) {
		setState(() {
		_selectedIndex = index;
		});
		// Handle navigation logic here if needed
		}

		final List<String> _messages = [];
			final TextEditingController _controller = TextEditingController();

			void _handleSend() {
			if (_controller.text.isNotEmpty) {
			setState(() {
			_messages.add(_controller.text);
			_controller.clear();
			});
			}
			}

			@override
			Widget build(BuildContext context) {
			return Scaffold(
			appBar: AppBar(
			backgroundColor: Colors.black,
			title: AnimatedTextKit(
			animatedTexts: [
			TyperAnimatedText(
			'Welcome Back',
			textStyle: const TextStyle(
			color: Colors.white,
			fontSize: 20.0,
			fontWeight: FontWeight.bold,
			),
			),
			],
			isRepeatingAnimation: true,
			totalRepeatCount: 5,
			),
			),
			body: _selectedIndex == 0
			? const HorizontalCardList()
			: ChatBox(
			messages: _messages,
			messageController: _controller,
			onSend: _handleSend,
			),
			bottomNavigationBar: CustomBottomNavigationBar(
			currentIndex: _selectedIndex,
			onTap: _onItemTapped,
			),
			);
			}
			}
