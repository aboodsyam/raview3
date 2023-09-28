import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogenScaeern extends StatefulWidget {
  const LogenScaeern({super.key});

  @override
  State<LogenScaeern> createState() => _LogenScaeernState();
}

class _LogenScaeernState extends State<LogenScaeern> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  bool _obscure = true;

  late TapGestureRecognizer _tapGestureRecognizer;

  String? _emailErrer;
  String? _passErrer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _tapGestureRecognizer = TapGestureRecognizer();
    _tapGestureRecognizer.onTap = createNewAccount;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _emailController.dispose();
    _passwordController.dispose();
    _tapGestureRecognizer = TapGestureRecognizer();
    super.dispose();
  }


  void createNewAccount(){
    print('createNewAccount');
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'SING IN',
          style: GoogleFonts.nunito(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'SING IN',
              style: GoogleFonts.nunito(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Hilow afrdibude iam kil me hom.>',
              style: GoogleFonts.nunito(
                color: Color(0xff716f87),
                height: 1,
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _emailController,
              style: GoogleFonts.nunito(),
              onTap: () => print('Tapped'),
              onChanged: (String value) => print('$value'),
              readOnly: false,
              enabled: true,

              minLines: 1,
              maxLines: 1,

              // minLines: null,
              // maxLines: null,
              // expands: true,

              ///     maxLength: 25,

              textAlign: TextAlign.start,
              textDirection: TextDirection.ltr,
              onSubmitted: (String value) => print(value),
              keyboardType: TextInputType.emailAddress,
              textCapitalization: TextCapitalization.none,
              decoration: InputDecoration(
                constraints: BoxConstraints(
                  minHeight: 50,
                  maxHeight: _emailErrer == null ? 50 : 75,
                ),
                errorText: _emailErrer,
                errorStyle: GoogleFonts.nunito(),
                errorMaxLines: 1,

                ///         contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                hintText: 'Email',
                helperStyle: GoogleFonts.nunito(),
                hintMaxLines: 1,
                hintTextDirection: TextDirection.ltr,
                prefixIcon: Icon(Icons.email),

                // border: OutlineInputBorder(
                //   borderSide:
                // )

                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey, width: 1),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.pink.shade300, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.pink.shade900, width: 1),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.red.shade300, width: 1),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.grey.shade300,
                    width: 1,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: _passwordController,
              style: GoogleFonts.nunito(),
              onTap: () => print('Tapped'),
              onChanged: (String value) => print('$value'),
              readOnly: false,
              enabled: true,

              obscureText: _obscure,

              minLines: 1,
              maxLines: 1,

              // minLines: null,
              // maxLines: null,
              // expands: true,

              ///     maxLength: 25,

              textAlign: TextAlign.start,
              textDirection: TextDirection.ltr,
              onSubmitted: (String value) => print(value),
              keyboardType: TextInputType.emailAddress,
              textCapitalization: TextCapitalization.none,
              decoration: InputDecoration(
                errorText: _passErrer,
                errorStyle: GoogleFonts.nunito(),
                errorMaxLines: 1,
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _obscure = !_obscure;
                    });
                  },
                  icon:
                      Icon(_obscure ? Icons.visibility : Icons.visibility_off),
                ),
                constraints: BoxConstraints(
                    minHeight: 50, maxHeight: _passErrer == null ? 50 : 75),

                ///         contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                hintText: 'Password',
                helperStyle: GoogleFonts.nunito(),
                hintMaxLines: 1,
                hintTextDirection: TextDirection.ltr,
                prefixIcon: Icon(Icons.lock),

                // border: OutlineInputBorder(
                //   borderSide:
                // )

                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey, width: 1),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.pink.shade300, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.pink.shade900, width: 1),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.red.shade300, width: 1),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.grey.shade300,
                    width: 1,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => performLogin(),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              child: Text('LOGIN'),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: RichText(
                text: TextSpan(
                  text: 'Don\t have an account',
                  style: GoogleFonts.nunito(color: Colors.grey.shade700
                  ),
                  children: [
                    TextSpan(text: ' '),
                    TextSpan(text: 'Create Now!.',
                    recognizer: _tapGestureRecognizer,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      decorationStyle: TextDecorationStyle.solid,
                      decoration: TextDecoration.underline
                    ),),
                  ],
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }

  void performLogin() {
    if (checkData()) {
      login();
    }
  }

  bool checkData() {
    if (_emailController.text.isNotEmpty &&
        _passwordController.text.isNotEmpty) {
      _controlError();
      return true;
    }
    _controlError();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Ererr , enter reuier data'),
        backgroundColor: Colors.red,
        duration: Duration(seconds: 3),
        dismissDirection: DismissDirection.horizontal,
      ),
    );

    return false;
  }

  void _controlError() {
    setState(() {
      _emailErrer = _emailController.text.isEmpty ? 'Enter email' : null;
      _passErrer = _passwordController.text.isEmpty ? 'Enter password' : null;
    });
  }

  void login() {
    Navigator.pushReplacementNamed(context, '/CategoriesScreen');
  }
}
