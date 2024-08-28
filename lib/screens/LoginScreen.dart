import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState()=>_LoginScreenState();
  }

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String _username = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Usuario'),
                onSaved: (value){
                  _username=value!;
                },
                validator: (value){
                  if(value == null || value.isEmpty){
                    return 'Por favor Ingrese el usuario';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Contraseña'),
                onSaved: (value){
                  _password=value!;
                },
                validator: (value){
                  if(value == null || value.isEmpty){
                    return 'Por favor Ingrese la contraseña';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: _submit,
                  child: Text('Login'))
            ],
          ),),

      ),

    );
  }
  void _submit(){
    if(_formKey.currentState!.validate()){
      _formKey.currentState!.save();
      // Aquí realizarías la llamada a la API para autenticar al usuario
    }
  }

}