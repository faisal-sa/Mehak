import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bottom Overlay Example")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: const Text("Show Bottom Overlay"),
        ),
      ),
    );
  }
}
