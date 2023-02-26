part of documents.dart;

class DocumentsTablet extends StatelessWidget {
  const DocumentsTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.greenAccent,
          width: 300,
          height: 300,
          child: const Center(child: Text('Tablet View')),
        ),
      ),
    );
  }
}
