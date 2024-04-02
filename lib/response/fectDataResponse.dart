class FetchdataResponse {
Profile? profile;
List<Rewards>? rewards;
List<Packs>? packs;

FetchdataResponse({this.profile, this.rewards, this.packs});

FetchdataResponse.fromJson(Map<String, dynamic> json) {
profile =
json['profile'] != null ? new Profile.fromJson(json['profile']) : null;
if (json['rewards'] != null) {
rewards = <Rewards>[];
json['rewards'].forEach((v) {
rewards!.add(new Rewards.fromJson(v));
});
}
if (json['packs'] != null) {
packs = <Packs>[];
json['packs'].forEach((v) {
packs!.add(new Packs.fromJson(v));
});
}
}

Map<String, dynamic> toJson() {
final Map<String, dynamic> data = new Map<String, dynamic>();
if (this.profile != null) {
data['profile'] = this.profile!.toJson();
}
if (this.rewards != null) {
data['rewards'] = this.rewards!.map((v) => v.toJson()).toList();
}
if (this.packs != null) {
data['packs'] = this.packs!.map((v) => v.toJson()).toList();
}
return data;
}
}

class Profile {
String? name;
String? photo;
String? phone;
int? coins;
String? membership;

Profile({this.name, this.photo, this.phone, this.coins, this.membership});

Profile.fromJson(Map<String, dynamic> json) {
name = json['name'];
photo = json['photo'];
phone = json['phone'];
coins = json['coins'];
membership = json['membership'];
}

Map<String, dynamic> toJson() {
final Map<String, dynamic> data = new Map<String, dynamic>();
data['name'] = this.name;
data['photo'] = this.photo;
data['phone'] = this.phone;
data['coins'] = this.coins;
data['membership'] = this.membership;
return data;
}
}

class Rewards {
String? icon;
String? title;
String? summary;
int? coins;

Rewards({this.icon, this.title, this.summary, this.coins});

Rewards.fromJson(Map<String, dynamic> json) {
icon = json['icon'];
title = json['title'];
summary = json['summary'];
coins = json['coins'];
}

Map<String, dynamic> toJson() {
final Map<String, dynamic> data = new Map<String, dynamic>();
data['icon'] = this.icon;
data['title'] = this.title;
data['summary'] = this.summary;
data['coins'] = this.coins;
return data;
}
}

class Packs {
String? icon;
int? coins;

Packs({this.icon, this.coins});

Packs.fromJson(Map<String, dynamic> json) {
icon = json['icon'];
coins = json['coins'];
}

Map<String, dynamic> toJson() {
final Map<String, dynamic> data = new Map<String, dynamic>();
data['icon'] = this.icon;
data['coins'] = this.coins;
return data;
}
}
