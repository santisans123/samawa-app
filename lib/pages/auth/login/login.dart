import 'package:samawa/import/main/all_import.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: sPrimaryPinkPastelColor,
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Upside(
                  imgUrl: "assets/intro/login.png",
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: size.height / 2,
                  ),
                  child: Container(
                    width: double.infinity,
                    height: size.height / 2,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: size.width * 0.08,
                          vertical: size.width * 0.04
                        ),
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: size.width * 0.015),
                          child: const Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'OpenSans',
                                fontSize: 25,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        const Text(
                          "Masukkan Email dan Password",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'OpenSans',
                              fontSize: 13,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Form(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RoundedInputNumber(
                                  // controller: usernameController,
                                  hintText: "Nomor Telepon",
                                  icon: Icons.call),
                              RoundedInputNumber(
                                hintText: "Password",
                                // controller: passwordController,
                              ),
                              Container(
                                height: size.width * 0.07,
                                child: switchListTile(),
                              ),
                              // loginButton(),
                              SizedBox(
                                height: size.height * 0.01,
                              ),
                              UnderPart(
                                title: "Don't have an account?",
                                navigatorText: "Register here",
                                onTap: () {},
                              ),
                              UnderPart(
                                navigatorText: "Forgot password?",
                                onTap: () {},
                              ),
                            ],
                          ),
                        )
                      ],
                    )),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

class switchListTile extends StatefulWidget {
  @override
  State<switchListTile> createState() => _switchListTileState();
}

class _switchListTileState extends State<switchListTile> {
  bool isSwitched = false;

  void _onSwitchChanged(bool value) {
    isSwitched = value;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 50, right: 40),
      child: SwitchListTile(
        visualDensity: VisualDensity(horizontal: 0, vertical: -4),
        dense: true,
        title: Text(
          'Remember Me',
          style: TextStyle(fontSize: 16, fontFamily: 'OpenSans'),
        ),
        value: isSwitched,
        activeColor: sPrimaryColor,
        onChanged: (bool value) {
          setState(() {
            _onSwitchChanged(value);
          });
        },
      ),
    );
  }
}
