new TextFormField(
decoration: new InputDecoration(
labelText: "Enter Email",
fillColor: Colors.white,
border: new OutlineInputBorder(
borderRadius: new BorderRadius.circular(25.0),
borderSide: new BorderSide(
),
),
//fillColor: Colors.green
),
validator: (val) {
if(val.length==0) {
return "Email cannot be empty";
}else{
return null;
}
},
keyboardType: TextInputType.emailAddress,
style: new TextStyle(
fontFamily: "Poppins",
),
),