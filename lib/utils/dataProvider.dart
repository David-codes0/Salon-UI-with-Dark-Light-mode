import 'dart:core';

import 'package:flutter/material.dart';
import 'package:hairsalon_prokit/model/model.dart';
import 'package:nb_utils/nb_utils.dart';

import 'constants.dart';
import 'images.dart';

List<BestSpecialModel> getSpecialList() {
  List<BestSpecialModel> list = [];
  list.add(BestSpecialModel(
      title: 'Joseph Drake',
      subTitle: 'Makeup Artist',
      img: dDashedBoardImage5));
  list.add(BestSpecialModel(
      title: 'Dale Horward', subTitle: 'Hire Stylist', img: dashedBoardImage1));
  list.add(BestSpecialModel(
      title: 'willies carpen', subTitle: 'Barber', img: dashedBoardImage6));
  list.add(BestSpecialModel(
      title: 'Dale Horward',
      subTitle: 'Makeup Artist',
      img: dashedBoardImage3));
  list.add(BestSpecialModel(
      title: 'Joseph Drake',
      subTitle: 'Makeup Artist',
      img: dashedBoardImage3));
  list.add(BestSpecialModel(
      title: 'Dale Horward',
      subTitle: 'Hire Stylist',
      img: dDashedBoardImage5));
  list.add(BestSpecialModel(
      title: 'willies carpen', subTitle: 'Barber', img: dashedBoardImage1));
  list.add(BestSpecialModel(
      title: 'Dale Horward',
      subTitle: 'Makeup Artist',
      img: dashedBoardImage6));

  return list;
}

List<BestSpecialModel> getSpecialNewList() {
  List<BestSpecialModel> list = [];
  list.add(BestSpecialModel(
      title: 'Joseph Drake',
      subTitle: 'Makeup Artist',
      img: dDashedBoardImage5));
  list.add(BestSpecialModel(
      title: 'Dale Horward', subTitle: 'Hire Stylist', img: dashedBoardImage1));
  list.add(BestSpecialModel(
      title: 'willies carpen', subTitle: 'Barber', img: dashedBoardImage6));
  list.add(BestSpecialModel(
      title: 'Dale Horward',
      subTitle: 'Makeup Artist',
      img: dashedBoardImage3));
  list.add(BestSpecialModel(
      title: 'Dale Horward', subTitle: 'Hire Stylist', img: dashedBoardImage2));
  list.add(BestSpecialModel(
      title: 'willies carpen', subTitle: 'Barber', img: dashedBoardImage6));
  return list;
}

List<SpecialOfferModel> getSpecialOfferList() {
  List<SpecialOfferModel> specialOfferList = [];
  specialOfferList.add(SpecialOfferModel(
      img: dDashedBoardImage5,
      title: 'Joseph Salon',
      subtitle: 'Cool Summer Event'));
  specialOfferList.add(SpecialOfferModel(
      img: dashedBoardImage3,
      title: 'Sherman Hair ',
      subtitle: 'Cool Winter Event'));
  specialOfferList.add(SpecialOfferModel(
      img: dashedBoardImage6,
      title: 'Drake Hair Salon',
      subtitle: 'Cool Winter Event'));
  specialOfferList.add(SpecialOfferModel(
      img: dashedBoardImage7,
      title: 'Barber Hair ',
      subtitle: 'Cool Winter Event'));
  specialOfferList.add(SpecialOfferModel(
      img: dashedBoardImage1,
      title: 'Joseph Drake',
      subtitle: 'Cool Winter Event'));
  specialOfferList.add(SpecialOfferModel(
      img: dashedBoardImage6,
      title: 'Joseph Hair ',
      subtitle: 'Cool Winter Event'));
  specialOfferList.add(SpecialOfferModel(
      img: dashedBoardImage6,
      title: 'Drake Hair ',
      subtitle: 'Cool Winter Event'));
  specialOfferList.add(SpecialOfferModel(
      img: dDashedBoardImage5,
      title: 'Joseph Hair',
      subtitle: 'Cool Summer Event'));
  return specialOfferList;
}

List<SpecialOfferModel> getSpecialOfferNewList() {
  List<SpecialOfferModel> specialOfferList = [];
  specialOfferList.add(SpecialOfferModel(
      img: dDashedBoardImage5,
      title: 'Joseph Drake Hair Salon',
      subtitle: 'Cool Summer Event'));
  specialOfferList.add(SpecialOfferModel(
      img: dashedBoardImage3,
      title: 'Sherman Barber Hair Salon',
      subtitle: 'Cool Winter Event'));
  specialOfferList.add(SpecialOfferModel(
      img: dashedBoardImage6,
      title: 'Joseph Drake Hair Salon',
      subtitle: 'Cool Winter Event'));
  specialOfferList.add(SpecialOfferModel(
      img: dashedBoardImage7,
      title: 'Sherman Barber Hair Salon',
      subtitle: 'Cool Winter Event'));
  specialOfferList.add(SpecialOfferModel(
      img: dashedBoardImage1,
      title: 'Joseph Drake Hair Salon',
      subtitle: 'Cool Winter Event'));
  return specialOfferList;
}

List<MessageModel> getMessageList() {
  List<MessageModel> messageList = [];
  messageList.add(MessageModel(
      img: dashedBoardImage3,
      name: 'Sherman Barber Shop',
      message: 'Hi Jackson..',
      lastSeen: 'Now'));
  messageList.add(MessageModel(
      img: dashedBoardImage2,
      name: 'Dale Horward',
      message: 'Thank you.',
      lastSeen: '8:30 AM'));
  messageList.add(MessageModel(
      img: dashedBoardImage6,
      name: 'Norah Beauty Salon',
      message: 'Hello',
      lastSeen: 'Yesterday'));
  return messageList;
}

List<CallModel> getCallList() {
  List<CallModel> callList = [];
  callList.add(
    CallModel(
      img: dashedBoardImage3,
      name: 'Sherman Barber Shop',
      callImg: Icons.call,
      callStatus: 'You call them',
      videoCallIcon: videoCallIcon,
      audioCallIcon: callIcon,
    ),
  );
  callList.add(
    CallModel(
      img: dashedBoardImage4,
      name: 'Dale Horward',
      callImg: Icons.call,
      callStatus: 'You miss call',
      videoCallIcon: videoCallIcon,
      audioCallIcon: callIcon,
    ),
  );
  callList.add(
    CallModel(
      img: dashedBoardImage1,
      name: 'Dale Horward',
      callImg: Icons.call,
      callStatus: 'You miss call',
      videoCallIcon: videoCallIcon,
      audioCallIcon: callIcon,
    ),
  );
  callList.add(
    CallModel(
      img: dashedBoardImage6,
      name: 'Dale Horward',
      callImg: Icons.call,
      callStatus: 'You miss call',
      videoCallIcon: videoCallIcon,
      audioCallIcon: callIcon,
    ),
  );
  return callList;
}

List<GalleryModel> getGalleryList() {
  List<GalleryModel> galleryList = [];
  galleryList.add(GalleryModel(img: dashedBoardImage1));
  galleryList.add(GalleryModel(img: dashedBoardImage2));
  galleryList.add(GalleryModel(img: dashedBoardImage3));
  galleryList.add(GalleryModel(img: dashedBoardImage6));
  galleryList.add(GalleryModel(img: dashedBoardImage2));
  galleryList.add(GalleryModel(img: dashedBoardImage6));
  galleryList.add(GalleryModel(img: dashedBoardImage2));
  galleryList.add(GalleryModel(img: dashedBoardImage3));
  galleryList.add(GalleryModel(img: dashedBoardImage6));
  galleryList.add(GalleryModel(img: dashedBoardImage1));
  galleryList.add(GalleryModel(img: dashedBoardImage3));
  galleryList.add(GalleryModel(img: dashedBoardImage1));
  return galleryList;
}

List<CategoryModel> getCategory() {
  List<CategoryModel> categoryList = [];
  categoryList.add(CategoryModel(img: makeUp, categoryName: 'All'));
  categoryList.add(CategoryModel(img: skinCare, categoryName: 'Skin Care'));
  categoryList.add(CategoryModel(img: makeUp, categoryName: 'Make Up'));
  categoryList.add(CategoryModel(img: hairColor, categoryName: 'Hair Color'));
  categoryList.add(CategoryModel(img: skinCare, categoryName: 'Skin Care'));
  categoryList.add(CategoryModel(img: hairColor, categoryName: 'Hair Color'));

  return categoryList;
}

List<OfferModel> getOfferList() {
  List<OfferModel> offerList = [];
  offerList.add(
    OfferModel(
        img: dashedBoardImage1,
        offerName: 'Personality Girl Event',
        offerDate: 'June 10 - June 26',
        offerOldPrice: 100,
        offerNewPrice: 89),
  );
  offerList.add(
    OfferModel(
        img: dashedBoardImage2,
        offerName: 'Changer Hair Color',
        offerDate: 'May 10 - May 17',
        offerOldPrice: 80,
        offerNewPrice: 70),
  );
  offerList.add(
    OfferModel(
        img: dashedBoardImage3,
        offerName: 'Personality Girl Event',
        offerDate: 'Sep 12 - Sep 14',
        offerOldPrice: 120,
        offerNewPrice: 109),
  );
  offerList.add(
    OfferModel(
        img: dashedBoardImage4,
        offerName: 'Personality Girl Event',
        offerDate: 'Nov 05 - Nov 13',
        offerOldPrice: 150,
        offerNewPrice: 130),
  );
  return offerList;
}

List<ServicesModel> getServicesList() {
  List<ServicesModel> servicesList = [];
  servicesList.add(ServicesModel(
      img: dashedBoardImage4,
      serviceName: 'hair Style',
      time: '45 Min',
      price: 50,
      radioVal: 1));
  servicesList.add(ServicesModel(
      img: dashedBoardImage1,
      serviceName: 'Change Hair Color',
      time: '50 Min',
      price: 100,
      radioVal: 2));
  servicesList.add(ServicesModel(
      img: dashedBoardImage3,
      serviceName: 'hair Cutting',
      time: '60 Min',
      price: 70,
      radioVal: 3));
  servicesList.add(ServicesModel(
      img: dDashedBoardImage5,
      serviceName: 'Skin Care',
      time: '30 Min',
      price: 150,
      radioVal: 4));
  return servicesList;
}

List<IncludeServiceModel> getIncludeServicesList() {
  List<IncludeServiceModel> servicesList = [];
  servicesList.add(IncludeServiceModel(
      serviceImg: dashedBoardImage3,
      serviceName: 'hair Cutting',
      time: '60 Min',
      price: 70));
  servicesList.add(IncludeServiceModel(
      serviceImg: dDashedBoardImage5,
      serviceName: 'Skin Care',
      time: '30 Min',
      price: 150));
  servicesList.add(IncludeServiceModel(
      serviceImg: dashedBoardImage4,
      serviceName: 'hair Style',
      time: '45 Min',
      price: 50));
  servicesList.add(IncludeServiceModel(
      serviceImg: dashedBoardImage1,
      serviceName: 'Change Hair Color',
      time: '50 Min',
      price: 100));
  servicesList.add(IncludeServiceModel(
      serviceImg: dashedBoardImage4,
      serviceName: 'Change Hair Color',
      time: '50 Min',
      price: 100));
  servicesList.add(IncludeServiceModel(
      serviceImg: dashedBoardImage1,
      serviceName: 'Change Hair Color',
      time: '50 Min',
      price: 100));
  servicesList.add(IncludeServiceModel(
      serviceImg: dashedBoardImage6,
      serviceName: 'Change Hair Color',
      time: '50 Min',
      price: 100));
  servicesList.add(IncludeServiceModel(
      serviceImg: dashedBoardImage7,
      serviceName: 'Change Hair Color',
      time: '50 Min',
      price: 100));
  return servicesList;
}

List<ReviewModel> getReviewList() {
  List<ReviewModel> reviewList = [];
  reviewList.add(ReviewModel(
      img: dashedBoardImage1,
      name: 'Carlos Day',
      rating: 4.5,
      day: '4 Day ago',
      review: BHReview));
  reviewList.add(ReviewModel(
      img: userImg,
      name: 'Sherman',
      rating: 2.5,
      day: '10 Day ago',
      review: BHReview));
  reviewList.add(ReviewModel(
      img: userImg,
      name: 'Dale Horward',
      rating: 4,
      day: '1 Day ago',
      review: BHReview));
  reviewList.add(ReviewModel(
      img: userImg,
      name: 'Carlos Day',
      rating: 3.5,
      day: '3 Day ago',
      review: BHReview));
  return reviewList;
}

List<HairStyleModel> getHairStyleList() {
  List<HairStyleModel> hairStyleList = [];
  hairStyleList.add(HairStyleModel(img: dashedBoardImage4, name: 'Carlos Day'));
  hairStyleList
      .add(HairStyleModel(img: dashedBoardImage2, name: 'Carlos Sherman'));
  hairStyleList
      .add(HairStyleModel(img: dashedBoardImage6, name: 'Dale Horward'));
  hairStyleList.add(HairStyleModel(img: dashedBoardImage1, name: 'Sherman'));
  return hairStyleList;
}

List<MakeUpModel> getMakeupList() {
  List<MakeUpModel> makeupList = [];
  makeupList.add(MakeUpModel(img: dashedBoardImage3, name: 'willies carpen'));
  makeupList.add(MakeUpModel(img: dashedBoardImage4, name: 'Carlos Day'));
  makeupList.add(MakeUpModel(img: dDashedBoardImage5, name: 'Dale Horward'));
  makeupList.add(MakeUpModel(img: dashedBoardImage1, name: 'willies carpen'));
  return makeupList;
}

List<NotificationModel> getNotificationList() {
  List<NotificationModel> notificationList = [];
  notificationList.add(NotificationModel(
      img: dashedBoardImage6,
      name: 'Sherman Shop',
      msg: 'Hi Jackson..',
      status: 'Just Now',
      callInfo: callIcon));
  notificationList.add(NotificationModel(
      img: dashedBoardImage2,
      name: 'Dale Horward',
      msg: 'Thank you.',
      status: '8:30 AM',
      callInfo: message));
  notificationList.add(NotificationModel(
      img: dashedBoardImage3,
      name: 'Norah  Salon',
      msg: 'Hello',
      status: 'Yesterday',
      callInfo: callIcon));
  notificationList.add(NotificationModel(
      img: dashedBoardImage4,
      name: 'Norah Beauty',
      msg: 'Sent you a message',
      status: 'Tomorrow',
      callInfo: message));
  return notificationList;
}

List<NotifyModel> getNotifyList() {
  List<NotifyModel> notifyList = [];
  notifyList.add(
    NotifyModel(
        img: dashedBoardImage4,
        name: 'Norah Beauty Salon',
        address: '301 Dorthy walks,chicago,Us.',
        rating: 4.5,
        distance: 7.5),
  );
  notifyList.add(
    NotifyModel(
        img: dashedBoardImage1,
        name: 'Sherman Barber Shop',
        address: 'Dorthy walks,Us.',
        rating: 3.5,
        distance: 14.2),
  );
  notifyList.add(
    NotifyModel(
        img: dashedBoardImage3,
        name: 'willies carpen',
        address: '301 Dorthy walks,chicago,Us.',
        rating: 2.0,
        distance: 10.0),
  );
  notifyList.add(
    NotifyModel(
        img: dDashedBoardImage5,
        name: 'Norah Beauty Salon',
        address: '301 Dorthy walks,chicago,Us.',
        rating: 5.0,
        distance: 17.5),
  );
  notifyList.add(
    NotifyModel(
        img: dashedBoardImage6,
        name: 'Dale Horward',
        address: '301 Dorthy walks,chicago,Us.',
        rating: 3.5,
        distance: 11.0),
  );
  return notifyList;
}

List<MessageModel1> getChatMsgData() {
  List<MessageModel1> list = [];

  MessageModel1 c1 = MessageModel1();
  c1.senderId = BHSender_id;
  c1.receiverId = BHReceiver_id;
  c1.msg = 'Helloo';
  c1.time = '1:43 AM';
  list.add(c1);

  MessageModel1 c2 = MessageModel1();
  c2.senderId = BHSender_id;
  c2.receiverId = BHReceiver_id;
  c2.msg = 'How are you? What are you doing?';
  c2.time = '1:45 AM';
  list.add(c2);

  MessageModel1 c3 = MessageModel1();
  c3.senderId = BHReceiver_id;
  c3.receiverId = BHSender_id;
  c3.msg = 'Helloo...';
  c3.time = '1:45 AM';
  list.add(c3);

  MessageModel1 c4 = MessageModel1();
  c4.senderId = BHSender_id;
  c4.receiverId = BHReceiver_id;
  c4.msg = 'I am good. Can you do something for me? I need your help.';
  c4.time = '1:45 AM';
  list.add(c4);

  MessageModel1 c5 = MessageModel1();
  c5.senderId = BHSender_id;
  c5.receiverId = BHReceiver_id;
  c5.msg = 'I am good. Can you do something for me? I need your help.';
  c5.time = '1:45 AM';
  list.add(c5);

  MessageModel1 c6 = MessageModel1();
  c6.senderId = BHReceiver_id;
  c6.receiverId = BHSender_id;
  c6.msg = 'I am good. Can you do something for me? I need your help.';
  c6.time = '1:45 AM';
  list.add(c6);

  MessageModel1 c7 = MessageModel1();
  c7.senderId = BHSender_id;
  c7.receiverId = BHReceiver_id;
  c7.msg = 'I am good. Can you do something for me? I need your help.';
  c7.time = '1:45 AM';
  list.add(c7);

  MessageModel1 c8 = MessageModel1();
  c8.senderId = BHReceiver_id;
  c8.receiverId = BHSender_id;
  c8.msg = 'I am good. Can you do something for me? I need your help.';
  c8.time = '1:45 AM';
  list.add(c8);

  MessageModel1 c9 = MessageModel1();
  c9.senderId = BHSender_id;
  c9.receiverId = BHReceiver_id;
  c9.msg = 'I am good. Can you do something for me? I need your help.';
  c9.time = '1:45 AM';
  list.add(c9);

  MessageModel1 c10 = MessageModel1();
  c10.senderId = BHReceiver_id;
  c10.receiverId = BHSender_id;
  c10.msg = 'I am good. Can you do something for me? I need your help.';
  c10.time = '1:45 AM';
  list.add(c10);

  MessageModel1 c11 = MessageModel1();
  c11.senderId = BHReceiver_id;
  c11.receiverId = BHSender_id;
  c11.msg = 'I am good. Can you do something for me? I need your help.';
  c11.time = '1:45 AM';
  list.add(c11);

  MessageModel1 c12 = MessageModel1();
  c12.senderId = BHSender_id;
  c12.receiverId = BHReceiver_id;
  c12.msg = 'I am good. Can you do something for me? I need your help.';
  c12.time = '1:45 AM';
  list.add(c12);

  MessageModel1 c13 = MessageModel1();
  c13.senderId = BHSender_id;
  c13.receiverId = BHReceiver_id;
  c13.msg = 'I am good. Can you do something for me? I need your help.';
  c13.time = '1:45 AM';
  list.add(c13);

  MessageModel1 c14 = MessageModel1();
  c14.senderId = BHReceiver_id;
  c14.receiverId = BHSender_id;
  c14.msg = 'I am good. Can you do something for me? I need your help.';
  c14.time = '1:45 AM';
  list.add(c14);

  MessageModel1 c15 = MessageModel1();
  c15.senderId = BHSender_id;
  c15.receiverId = BHReceiver_id;
  c15.msg = 'I am good. Can you do something for me? I need your help.';
  c15.time = '1:45 AM';
  list.add(c15);

  MessageModel1 c16 = MessageModel1();
  c16.senderId = BHReceiver_id;
  c16.receiverId = BHSender_id;
  c16.msg = 'I am good. Can you do something for me? I need your help.';
  c16.time = '1:45 AM';
  list.add(c16);

  MessageModel1 c17 = MessageModel1();
  c17.senderId = BHSender_id;
  c17.receiverId = BHReceiver_id;
  c17.msg = 'I am good. Can you do something for me? I need your help.';
  c17.time = '1:45 AM';
  list.add(c17);

  MessageModel1 c18 = MessageModel1();
  c18.senderId = BHReceiver_id;
  c18.receiverId = BHSender_id;
  c18.msg = 'I am good. Can you do something for me? I need your help.';
  c18.time = '1:45 AM';
  list.add(c18);

  return list;
}

List<LanguageDataModel> languageList() {
  return [
    LanguageDataModel(
        id: 1,
        name: 'English',
        languageCode: 'en',
        fullLanguageCode: 'en-US',
        flag: 'images/flag/ic_us.png'),
    LanguageDataModel(
        id: 2,
        name: 'Hindi',
        languageCode: 'hi',
        fullLanguageCode: 'hi-IN',
        flag: 'images/flag/ic_hi.png'),
    LanguageDataModel(
        id: 3,
        name: 'Arabic',
        languageCode: 'ar',
        fullLanguageCode: 'ar-AR',
        flag: 'images/flag/ic_ar.png'),
    LanguageDataModel(
        id: 4,
        name: 'French',
        languageCode: 'fr',
        fullLanguageCode: 'fr-FR',
        flag: 'images/flag/ic_fr.png'),
  ];
}
