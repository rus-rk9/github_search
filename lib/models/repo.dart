class Repo {
  String name;
  String userName;
  String rate;
  String dt;
  String avaURL;

  Repo({
    this.name,
    this.userName,
    this.rate,
    this.dt,
    this.avaURL,
  });

  factory Repo.fromJSON(Map<String, dynamic> json) {
    return Repo(
      name: json['name'],
      userName: json['owner']['login'],
      rate: json['stargazers_count'],
      dt: json['updated_at'], //"2021-02-03T14:13:28Z"
      avaURL: json['owner']['avatar_url'],
    );
  }
}
