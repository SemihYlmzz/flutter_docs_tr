import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        leading: SizedBox(
          width: 120,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (MediaQuery.of(context).size.width <= 960)
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.menu,
                        size: 32,
                      )),
                ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: SvgPicture.asset(
                  'assets/images/test.svg',
                  width: 90,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          ),
        ),
        leadingWidth: 200,
        actions: !(MediaQuery.of(context).size.width <= 960)
            ? [
                const AppbarTextButton(
                  buttonText: 'Overview',
                  isSelected: true,
                ),
                const AppbarTextButton(
                  buttonText: 'Docs',
                  isSelected: false,
                ),
                const AppbarTextButton(
                  buttonText: 'Community',
                  isSelected: false,
                ),
                const AppbarTextButton(
                  buttonText: 'Try Dart',
                  isSelected: false,
                ),
                const AppbarTextButton(
                  buttonText: 'Get Dart',
                  isSelected: false,
                ),
                const SizedBox(
                  width: 16,
                ),
              ]
            : [],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              MediaQuery.of(context).size.width.toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }
}

class AppbarTextButton extends StatelessWidget {
  final String buttonText;
  final bool isSelected;
  const AppbarTextButton({
    super.key,
    required this.buttonText,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom().copyWith(
              elevation: const MaterialStatePropertyAll(0),
              overlayColor: const MaterialStatePropertyAll(Colors.transparent),
              backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                (states) {
                  return Colors.transparent;
                },
              ),
              foregroundColor: MaterialStateProperty.resolveWith<Color?>(
                (states) {
                  if (states.contains(MaterialState.hovered)) {
                    return Colors.lightBlue;
                  }
                  return Colors.white;
                },
              ),
            ),
            child: Text(
              buttonText,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 370),
          height: 4,
          width: 80,
          color: isSelected == false ? Colors.transparent : Colors.blue,
        )
      ],
    );
  }
}
