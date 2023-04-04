import 'package:samawa/import/main/all_import.dart';

class RoundedInputNumber extends StatefulWidget {
  const RoundedInputNumber(
      {Key? key,
      this.hintText,
      this.isButton = false,
      this.onTap,
      this.textTitle,
      this.icon,
      this.link,
      this.controller,
      this.isVisible = false,
      this.type = TextInputType.text})
      : super(key: key);

  final String? hintText;
  final bool? isButton;
  final void Function()? onTap;
  final String? textTitle;
  final IconData? icon;
  final void Function(String)? link;
  final TextEditingController? controller;
  final bool? isVisible;
  final TextInputType? type;

  @override
  State<RoundedInputNumber> createState() => _RoundedInputNumberState();
}

class _RoundedInputNumberState extends State<RoundedInputNumber> {
  bool _passwordVisible = false;

  @override
  void initState() {
    _passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.textTitle != null
            ? TextInputTitle(text: widget.textTitle!)
            : Container(),
        Container(
          margin: EdgeInsets.symmetric(vertical: size.height * 0.01),
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
          width: double.infinity,
          decoration: BoxDecoration(
              color: sPrimaryWhiteColor,
              border: Border.all(color: sPrimaryLightGreyColor),
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: sPrimaryGreyColor.withOpacity(0.6),
                    offset: const Offset(0, 0),
                    blurRadius: 4)
              ]),
          child: widget.isButton == true
              ? GestureDetector(
                  onTap: widget.onTap,
                  child: ListTile(
                      minLeadingWidth: 0,
                      horizontalTitleGap: size.width * 0,
                      leading: Transform.translate(
                          offset: Offset(-15, 0),
                          child: Icon(
                            widget.icon,
                            size: size.width * 0.05,
                            color: sPrimaryColor,
                          )),
                      trailing: Icon(
                        Icons.chevron_right,
                        size: size.width * 0.08,
                        color: sPrimaryColor,
                      ),
                      title: Text(
                        "${widget.textTitle}",
                        textAlign: TextAlign.start,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: size.width * 0.045,
                            color: sPrimaryDarkGreyColor),
                      )))
              : TextFormField(
                  controller: widget.controller,
                  onFieldSubmitted: widget.link,
                  keyboardType: widget.type,
                  cursorColor: sPrimaryColor,
                  decoration: InputDecoration(
                      icon: Icon(
                        widget.icon,
                        size: size.width * 0.05,
                        color: sPrimaryColor,
                      ),
                      hintText: widget.hintText,
                      hintStyle: const TextStyle(fontFamily: 'OpenSans'),
                      suffixIcon: widget.isVisible == true
                          ? IconButton(
                              icon: Icon(
                                _passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: sPrimaryColor,
                              ),
                              onPressed: () {
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              },
                            )
                          : null,
                      border: InputBorder.none),
                ),
        )
      ],
    );
  }
}
