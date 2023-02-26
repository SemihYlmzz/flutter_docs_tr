import '../../../../features/features.dart';

class DocumentsView extends StatelessWidget {
  const DocumentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 32),
        width: double.infinity,
        child: const BaseColumn(
          children: [
            WordsMine(),
            SizedBox(height: 32),
            GoToDocument(),
            GoToDocument(),
            GoToDocument(),
          ],
        ),
      ),
    );
  }
}
