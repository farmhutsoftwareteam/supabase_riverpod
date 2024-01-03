import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter/material.dart';
import 'package:memories_app/core/core.dart';

Future<void> main() async {
  await Supabase.initialize(
    url: 'https://rskpzniuukktaitpkwog.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJza3B6bml1dWtrdGFpdHBrd29nIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDIzNzM5NjcsImV4cCI6MjAxNzk0OTk2N30.EJHdxGLaXLjOKdpZF3XiVg8ZH_8ejpLesB-_PLeNK_g',
  );

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routes = ref.read(routeProvider);
    return MaterialApp.router(
      title: 'Test Supabase App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      routerConfig: routes,
    );
  }
}
