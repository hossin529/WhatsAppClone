class ConversationModel {
  String fullName;
  String image;
  String message;
  String date;
  int messageCout;

  ConversationModel(
      {this.fullName, this.image, this.message, this.date, this.messageCout});

  ConversationModel.fromJson(Map<String, dynamic> json) {
    fullName = json['full_name'];
    image = json['image'];
    message = json['message'];
    date = json['date'];
    messageCout = json['message_cout'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['full_name'] = this.fullName;
    data['image'] = this.image;
    data['message'] = this.message;
    data['date'] = this.date;
    data['message_cout'] = this.messageCout;
    return data;
  }
}


List<ConversationModel> conversations =[

  ConversationModel(fullName: 'Hossin Ghazli',image: 'https://www.w3schools.com/howto/img_avatar.png',message: 'hi',date: 'yesterday',messageCout: 2),
  ConversationModel(fullName: 'ayoub moumin',image: 'https://www.epay.com/en/templates/Epay.en/assets/images/avatar.jpg',message: 'gheda nmchiw l b7ar',date: '3 days ago',messageCout: 0),
  ConversationModel(fullName: 'rachi test',image: 'https://guidanceandcounsellingui.org/images/testimonials/avatar2.png',message: 'a feen',date: '12:00 AM',messageCout: 4),
  ConversationModel(fullName: 'yassine yassine',image: 'https://thumbs.dreamstime.com/b/profile-icon-male-avatar-portrait-casual-person-silhouette-face-flat-design-vector-illustration-58249439.jpg',message: 'hi',date: '11:48 AM',messageCout:0),
  ConversationModel(fullName: 'soufiane trick',image: 'https://images.vexels.com/media/users/3/145908/preview2/52eabf633ca6414e60a7677b0b917d92-male-avatar-maker.jpg',message: 'hi',date: 'yesterday',messageCout: 0),
  ConversationModel(fullName: 'soben aleson',image: 'https://www.doesport.co.uk/wp-content/uploads/2017/11/profile-icon-male-avatar-portrait-casual-person-silhouette-face-flat-design-vector-illustration-58249394.jpg',message: 'hi',date: '17:48 PM',messageCout: 0),
  ConversationModel(fullName: 'jamal mourad',image: 'https://cdn.pixabay.com/photo/2016/08/20/05/38/avatar-1606916_960_720.png',message: 'salam ',date: 'yesterday',messageCout: 0),
];