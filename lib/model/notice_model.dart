class NoticeDetails {
  final String noticeCategory;
  final String noticeTitle;
  final String noticeDetails;
  final String noticeDate;
  final String? noticeImage;

  NoticeDetails(
      {required this.noticeCategory,
      required this.noticeDate,
      required this.noticeImage,
      required this.noticeDetails,
      required this.noticeTitle});
}

List<NoticeDetails> noticeDetails = [
  NoticeDetails(
      noticeImage: '',
      noticeCategory: '6 Days ago ',
      noticeDate: '18 Feb 2023',
      noticeDetails: """Dear Parents, 
Sunday 15th January 2024 (1st Magh 2079) school will be closed on the occasion of Maghe Sankranti.
Thank you.""",
      noticeTitle: 'Maghe Sankranti'),
  NoticeDetails(
      noticeImage: '',
      noticeCategory: '10 days ago ',
      noticeDate: '15 Jan 2023',
      noticeDetails: """Dear Parents, 
Kindly open the attachment for the SMS fete to be held on Saturday 10th Dec 2022 from 12 noon to 5 pm. 
Note: #Entry through the main gate of the school & Exit through the canteen gate.
       #Sunday 11th Dec.2022 will be a holiday.
Thank you.""",
      noticeTitle: 'Lhosar Festival'),
  NoticeDetails(
      noticeImage: '',
      noticeCategory: '2 weeks ago ',
      noticeDate: '05 May 2023',
      noticeDetails: """Dear Parents, 
We will have the regular class from Monday 2nd Jan 2023(18th poush 2079)
Thank you.""",
      noticeTitle: 'Saturday'),
  NoticeDetails(
      noticeImage: 'assets/images/greeting1.jpg',
      noticeCategory: '6 Days ago ',
      noticeDate: '10 Jan 2023',
      noticeDetails: """Dear Parents, 
Sunday 15th January 2024 (1st Magh 2079) school will be closed on the occasion of Maghe Sankranti.
Thank you.""",
      noticeTitle: 'Class reopen'),
  NoticeDetails(
      noticeImage: '',
      noticeCategory: '10 days ago ',
      noticeDate: '16 Jan 2023',
      noticeDetails: """Dear Parents, 
Sunday 15th January 2024 (1st Magh 2079) school will be closed on the occasion of Maghe Sankranti.
Thank you.""",
      noticeTitle: 'Dashain Vacation'),
  NoticeDetails(
      noticeImage: 'assets/images/greeting.jpg',
      noticeCategory: '2 weeks ago ',
      noticeDate: '20 Jan 2023',
      noticeDetails: """Dear Parents, 
Sunday 15th January 2024 (1st Magh 2079) school will be closed on the occasion of Maghe Sankranti.
Thank you.""",
      noticeTitle: 'Maghe Sankranti'),
  NoticeDetails(
      noticeImage: '',
      noticeCategory: '6 Days ago ',
      noticeDate: '25 Dec 2022',
      noticeDetails: """Dear Parents, 
Sunday 15th January 2024 (1st Magh 2079) school will be closed on the occasion of Maghe Sankranti.
Thank you.""",
      noticeTitle: 'Maghe Sankranti'),
  NoticeDetails(
      noticeImage: '',
      noticeCategory: '10 days ago ',
      noticeDate: '04 Jan 2022',
      noticeDetails: """Dear Parents, 
Sunday 15th January 2024 (1st Magh 2079) school will be closed on the occasion of Maghe Sankranti.
Thank you.""",
      noticeTitle: 'Maghe Sankranti'),
  NoticeDetails(
      noticeImage: '',
      noticeCategory: '2 weeks ago ',
      noticeDate: '08 Jan 2022',
      noticeDetails: """Dear Parents, 
Sunday 15th January 2024 (1st Magh 2079) school will be closed on the occasion of Maghe Sankranti.
Thank you.""",
      noticeTitle: 'Maghe Sankranti'),
];
