class SignUpResponse {
  String userName;
  String email;
  String password;
  String mobile;
  String category;
  int token;
  bool isVerified;
  bool allow;
  String updatedAt;
  String createdAt;
  int id;

  SignUpResponse(
      {this.userName,
        this.email,
        this.password,
        this.mobile,
        this.category,
        this.token,
        this.isVerified,
        this.allow,
        this.updatedAt,
        this.createdAt,
        this.id});

  SignUpResponse.fromJson(Map<String, dynamic> json) {
    userName = json['userName'];
    email = json['email'];
    password = json['password'];
    mobile = json['mobile'];
    category = json['category'];
    token = json['token'];
    isVerified = json['isVerified'];
    allow = json['allow'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userName'] = this.userName;
    data['email'] = this.email;
    data['password'] = this.password;
    data['mobile'] = this.mobile;
    data['category'] = this.category;
    data['token'] = this.token;
    data['isVerified'] = this.isVerified;
    data['allow'] = this.allow;
    data['updated_at'] = this.updatedAt;
    data['created_at'] = this.createdAt;
    data['id'] = this.id;
    return data;
  }
}