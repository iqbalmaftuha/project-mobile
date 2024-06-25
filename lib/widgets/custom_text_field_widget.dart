part of 'widgets.dart';

class CustomTextFieldWidget extends StatefulWidget {
  final String title;
  final String label;
  final bool obscureText;
  late bool isVisible;
  final VoidCallback? onTap;
  final TextEditingController? controller;

  CustomTextFieldWidget({
    super.key,
    required this.label,
    this.obscureText = true,
    this.isVisible = true,
    this.onTap,
    this.controller,
    required this.title,
  });

  @override
  State<CustomTextFieldWidget> createState() => _CustomTextFieldWidgetState();
}

class _CustomTextFieldWidgetState extends State<CustomTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: blackTextStyle.copyWith(fontSize: 14, fontWeight: semiBold),
          ),
          SizedBox(
            height: 8,
          ),
          TextFormField(
            controller: widget.controller,
            obscureText:
                widget.isVisible ? widget.obscureText : widget.isVisible,
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide(color: greyColor, width: 1),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide(color: greyColor, width: 1),
                ),
                hintText: widget.label,
                hintStyle:
                    greyTextStyle.copyWith(fontSize: 12, fontWeight: reguler),
                suffixIcon: widget.obscureText
                    ? GestureDetector(
                        onTap: () {
                          if (widget.isVisible == false) {
                            setState(() {
                              widget.isVisible = true;
                            });
                          } else {
                            setState(() {
                              widget.isVisible = false;
                            });
                          }
                        },
                        child: Icon(widget.isVisible
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined))
                    : null),
          ),
        ],
      ),
    );
  }
}
