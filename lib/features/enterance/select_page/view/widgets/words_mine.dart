import '../../../../features.dart';

class CreaterWords extends StatelessWidget {
  const CreaterWords({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          EnteranceStrings.wordsMineLine1,
          style: GoogleFonts.openSans(fontSize: 20),
          textAlign: TextAlign.center,
        ),
        Text(
          EnteranceStrings.wordsMineLine2,
          style: GoogleFonts.openSans(fontSize: 24),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        Text(
          EnteranceStrings.wordsMineLine3,
          style: GoogleFonts.openSans(fontSize: 30),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
