import 'package:samawa/import/main/all_import.dart';

class TwoOptions extends StatefulWidget {
  const TwoOptions({
    Key? key,
    required this.title,
    required this.text1,
    required this.text2,
    this.icon1,
    this.icon2,
  }) : super(key: key);
  final String title;
  final String text1;
  final String text2;
  final IconData? icon1;
  final IconData? icon2;

  @override
  State<TwoOptions> createState() => _TwoOptionsState();
}

class _TwoOptionsState extends State<TwoOptions> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextInputTitle(text: widget.title),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: SmallRoundedIcon(
                  icon: widget.icon1 == null ? null : widget.icon1,
                  textTitle: widget.text1,
                ),
              ),
              Expanded(
                child: SmallRoundedIcon(
                  icon: widget.icon2 == null ? null : widget.icon2,
                  textTitle: widget.text2,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
