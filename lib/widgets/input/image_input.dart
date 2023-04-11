import 'dart:io';
import 'package:samawa/import/main/all_import.dart';

class ImageInput extends StatefulWidget {
  const ImageInput({
    Key? key,
  }) : super(key: key);

  @override
  State<ImageInput> createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  File? imageFile;

  _getFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

  /// Get from Camera
  _getFromCamera() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }}

      @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
        onTap: () {
          Get.defaultDialog(
            title: 'Pilih Opsi',
            content: Container(
                padding: EdgeInsets.only(right: size.width * 0.01),
                height: size.height * 0.15,
                width: double.maxFinite,
                child: Column(
                  children: [
                    MaterialButton(
                        color: Colors.blue,
                        child: const Text(
                            "Pick Image from Gallery",
                            style: TextStyle(
                                color: Colors.white70, fontWeight: FontWeight.bold
                            )
                        ),
                        onPressed: () {
                          _getFromGallery;
                        }
                    ),
                    MaterialButton(
                        color: Colors.blue,
                        child: const Text(
                            "Pick Image from Camera",
                            style: TextStyle(
                                color: Colors.white70, fontWeight: FontWeight.bold
                            )
                        ),
                        onPressed: () {
                          _getFromCamera;
                        }
                    ),
                  ],
                )),
            onCancel: () {},
          );
        },
        child: Container(
          margin: EdgeInsets.symmetric(
              vertical: size.height * 0.01, horizontal: size.height * 0.003),
          padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.02, vertical: size.width * 0.02),
          width: double.infinity,
          height: size.height / 6,
          decoration: BoxDecoration(
              image: imageFile != null ? DecorationImage(
                image: new FileImage(imageFile!),
                fit: BoxFit.cover,
              ) : null,
              color: sPrimaryWhiteColor,
              border: Border.all(color: sPrimaryLightGreyColor),
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: sPrimaryGreyColor.withOpacity(0.6),
                    offset: const Offset(0, 0),
                    blurRadius: 1)
              ]),
          child: Icon(
            Icons.add,
            size: size.width * 0.06,
            color: sPrimaryColor,
          ),
        ));
  }

}
