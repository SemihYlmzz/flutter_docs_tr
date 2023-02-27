import '../../../../features.dart';

class WordsMine extends StatelessWidget {
  const WordsMine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Web sitelerini olabildiğince Türkçeye çevirmeye çalıştım.',
          style: GoogleFonts.openSans(fontSize: 20),
          textAlign: TextAlign.center,
        ),
        Text(
          'Umarım işinize yarar.',
          style: GoogleFonts.openSans(fontSize: 24),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        Text(
          'İyi Çalışmalar',
          style: GoogleFonts.openSans(fontSize: 30),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
