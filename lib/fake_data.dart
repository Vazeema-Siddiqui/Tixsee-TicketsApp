import 'package:flutter/material.dart';
import 'package:tickets_app/models/models.dart';

final List<Image> images = [
  Image.asset("/images/offer.png"),
  Image.asset("/images/offer2.png"),
  Image.asset("/images/offer.png"),
  Image.asset("/images/offer2.png"),
  Image.asset("/images/offer.png"),
  Image.asset("/images/offer2.png"),
];

final List<CardModel> cards = [
  CardModel(
    title: '2011 Super Junior SM Town Live \'10 World Tour New York City',
    description: 'Directly seated and inside for you to enjoy the show.',
    imagePath: '/images/card.png',
  ),
  CardModel(
    title: '2011 Super Junior SM Town Live \'10 World Tour New York City',
    description: 'Directly seated and inside for you to enjoy the show.',
    imagePath: '/images/card.png',
  ),
  CardModel(
    title: '2011 Super Junior SM Town Live \'10 World Tour New York City',
    description: 'Directly seated and inside for you to enjoy the show.',
    imagePath: '/images/card.png',
  ),
  CardModel(
    title: '2011 Super Junior SM Town Live \'10 World Tour New York City',
    description: 'Directly seated and inside for you to enjoy the show.',
    imagePath: '/images/card.png',
  ),
  CardModel(
    title: '2011 Super Junior SM Town Live \'10 World Tour New York City',
    description: 'Directly seated and inside for you to enjoy the show.',
    imagePath: '/images/card.png',
  ),
  CardModel(
    title: '2011 Super Junior SM Town Live \'10 World Tour New York City',
    description: 'Directly seated and inside for you to enjoy the show.',
    imagePath: '/images/card.png',
  ),
].toList();

final List<EventModel> events = [
  EventModel(
      id: 'e01',
      title: '2011 Super Junior SM Town Live \'10 World Tour New York City',
      coverImagePath: 'images/eventCover1.png',
      includes: '👍🏻   Direct interaction with the instructor\n'
          '🖥   Access on mobile and web\n'
          '📽   Session recording after the workshop\n'
          '⌛   1 hour live session',
      about:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r* Section 1.10.32 of "de Finibus Bonorum et Malorum",\r* of Finibus Bonorum et Malorum"de ",\r* 1914 translation by H. Rakham',
      oldPrice: 130,
      newPrice: 100,
      date: '25 Oct 2022',
      time: TimeOfDay(hour: 19, minute: 30),
      duration: '120 min',
      rating: 4.5,
      noOfRatings: 230,
      location: 'Morumbi Stadium, São Paulo, Brazil',
      comments: [
        CommentModel(
          id: 'c01',
          username: 'amyrobson',
          avatar: AssetImage('/images/avatar1.png'),
          comment:
              'Impressive! Though it seems the drag feature could be improved. But overall it looks incredible. You’ve nailed the design and the responsiveness at various breakpoints works really well.',
          whenPosted: '1 month ago',
        ),
        CommentModel(
          id: 'c02',
          username: 'maxblagun',
          avatar: AssetImage('/images/avatar2.png'),
          comment:
              'Woah, your project looks awesome! How long have you been coding for? I’m still new, but think I want to dive into React as well soon. Perhaps you can give me an insight on where I can learn React? Thanks!',
          whenPosted: '2 weeks ago',
        )
      ])
];

// final List<CommentModel> comments = [
//   CommentModel(
//     username: 'amyrobson',
//     avatar: AssetImage('/images/avatar1.png'),
//     comment:
//         'Impressive! Though it seems the drag feature could be improved. But overall it looks incredible. You’ve nailed the design and the responsiveness at various breakpoints works really well.',
//     whenPosted: '1 month ago',
//   ),
//   CommentModel(
//     username: 'maxblagun',
//     avatar: AssetImage('/images/avatar2.png'),
//     comment:
//         'Woah, your project looks awesome! How long have you been coding for? I’m still new, but think I want to dive into React as well soon. Perhaps you can give me an insight on where I can learn React? Thanks!',
//     whenPosted: '2 weeks ago',
//   )
// ];

final List<AttractionToDoModel> attractionsToDos = [
  AttractionToDoModel(
    id: 'a01',
    title: 'New York Dinner Cruise',
    coverImagePath: 'images/attractionToDoCover1.png',
    includes: '👍🏻   Direct interaction with the instructor\n'
        '🖥   Access on mobile and web\n'
        '📽   Session recording after the workshop\n'
        '⌛   1 hour live session',
    about:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r* Section 1.10.32 of "de Finibus Bonorum et Malorum",\r* of Finibus Bonorum et Malorum"de ",\r* 1914 translation by H. Rakham',
    oldPrice: 130,
    newPrice: 110.42,
    openFromDay: 'Monday',
    openTillDay: 'Saturday',
    startTime: TimeOfDay(hour: 10, minute: 30),
    endTime: TimeOfDay(hour: 23, minute: 30),
    duration: '120 min',
    rating: 4.5,
    noOfRatings: 230,
    location: 'Pier 61 Chelsea Piers, 111C 11th Ave, New York, NY 10011, USA',
    comments: [
      CommentModel(
        id: 'c03',
        username: 'amyrobson',
        avatar: AssetImage('/images/avatar1.png'),
        comment:
            'Impressive! Though it seems the drag feature could be improved. But overall it looks incredible. You’ve nailed the design and the responsiveness at various breakpoints works really well.',
        whenPosted: '1 month ago',
      ),
      CommentModel(
        id: 'c04',
        username: 'maxblagun',
        avatar: AssetImage('/images/avatar2.png'),
        comment:
            'Woah, your project looks awesome! How long have you been coding for? I’m still new, but think I want to dive into React as well soon. Perhaps you can give me an insight on where I can learn React? Thanks!',
        whenPosted: '2 weeks ago',
      )
    ],
    gallery: [
      'images/attractionToDoGallery1.png',
      'images/attractionToDoGallery2.png',
      'images/attractionToDoGallery3.png',
      'images/attractionToDoGallery4.png',
      'images/attractionToDoGallery2.png',
      'images/attractionToDoGallery1.png',
      'images/eventCover1.png',
    ],
    reviews: [
      ReviewModel(
        id: 'r01',
        rating: 4.8,
        noOfRatings: 123,
        review:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        userName: 'Ahmed Alam',
      ),
      ReviewModel(
        id: 'r02',
        rating: 4.8,
        noOfRatings: 123,
        review:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        userName: 'Ahmed Alam',
      ),
      ReviewModel(
        id: 'r03',
        rating: 4.8,
        noOfRatings: 123,
        review:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        userName: 'Ahmed Alam',
      ),
      ReviewModel(
        id: 'r04',
        rating: 4.8,
        noOfRatings: 123,
        review:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        userName: 'Ahmed Alam',
      ),
      ReviewModel(
        id: 'r05',
        rating: 4.8,
        noOfRatings: 123,
        review:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        userName: 'Ahmed Alam',
      ),
    ].toList(),
  )
];

List<CityModel> cities = [
  CityModel(
      id: 'c01',
      cityName: 'New York',
      coverImagePath: 'images/cityCover1.png',
      cityDescription:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r* Section 1.10.32 of "de Finibus Bonorum et Malorum",\r* of Finibus Bonorum et Malorum"de ",\r* 1914 translation by H. Rakham',
      attractions: [
        AttractionToDoModel(
          id: 'a01',
          title: 'New York Dinner Cruise',
          coverImagePath: 'images/attractionToDoCover1.png',
          includes: '👍🏻   Direct interaction with the instructor\n'
              '🖥   Access on mobile and web\n'
              '📽   Session recording after the workshop\n'
              '⌛   1 hour live session',
          about:
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r* Section 1.10.32 of "de Finibus Bonorum et Malorum",\r* of Finibus Bonorum et Malorum"de ",\r* 1914 translation by H. Rakham',
          oldPrice: 130,
          newPrice: 110.42,
          openFromDay: 'Monday',
          openTillDay: 'Saturday',
          startTime: TimeOfDay(hour: 10, minute: 30),
          endTime: TimeOfDay(hour: 23, minute: 30),
          duration: '120 min',
          rating: 4.5,
          noOfRatings: 230,
          location:
              'Pier 61 Chelsea Piers, 111C 11th Ave, New York, NY 10011, USA',
          comments: [
            CommentModel(
              id: 'c01',
              username: 'amyrobson',
              avatar: AssetImage('/images/avatar1.png'),
              comment:
                  'Impressive! Though it seems the drag feature could be improved. But overall it looks incredible. You’ve nailed the design and the responsiveness at various breakpoints works really well.',
              whenPosted: '1 month ago',
            ),
            CommentModel(
              id: 'c02',
              username: 'maxblagun',
              avatar: AssetImage('/images/avatar2.png'),
              comment:
                  'Woah, your project looks awesome! How long have you been coding for? I’m still new, but think I want to dive into React as well soon. Perhaps you can give me an insight on where I can learn React? Thanks!',
              whenPosted: '2 weeks ago',
            )
          ],
          gallery: [
            'images/attractionToDoGallery1.png',
            'images/attractionToDoGallery2.png',
            'images/attractionToDoGallery3.png',
            'images/attractionToDoGallery4.png',
            'images/attractionToDoGallery2.png',
            'images/attractionToDoGallery1.png',
            'images/eventCover1.png',
          ],
          reviews: [
            ReviewModel(
              id: 'r01',
              rating: 4.8,
              noOfRatings: 123,
              review:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              userName: 'Ahmed Alam',
            ),
            ReviewModel(
              id: 'r02',
              rating: 4.8,
              noOfRatings: 123,
              review:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              userName: 'Ahmed Alam',
            ),
            ReviewModel(
              id: 'r03',
              rating: 4.8,
              noOfRatings: 123,
              review:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              userName: 'Ahmed Alam',
            ),
            ReviewModel(
              id: 'r04',
              rating: 4.8,
              noOfRatings: 123,
              review:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              userName: 'Ahmed Alam',
            ),
            ReviewModel(
              id: 'r05',
              rating: 4.8,
              noOfRatings: 123,
              review:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              userName: 'Ahmed Alam',
            ),
          ],
        ),
        AttractionToDoModel(
          id: 'a02',
          title: 'New York Dinner Cruise',
          coverImagePath: 'images/attractionToDoCover1.png',
          includes: '👍🏻   Direct interaction with the instructor\n'
              '🖥   Access on mobile and web\n'
              '📽   Session recording after the workshop\n'
              '⌛   1 hour live session',
          about:
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r* Section 1.10.32 of "de Finibus Bonorum et Malorum",\r* of Finibus Bonorum et Malorum"de ",\r* 1914 translation by H. Rakham',
          oldPrice: 130,
          newPrice: 110.42,
          openFromDay: 'Monday',
          openTillDay: 'Saturday',
          startTime: TimeOfDay(hour: 10, minute: 30),
          endTime: TimeOfDay(hour: 23, minute: 30),
          duration: '120 min',
          rating: 4.5,
          noOfRatings: 230,
          location:
              'Pier 61 Chelsea Piers, 111C 11th Ave, New York, NY 10011, USA',
          comments: [
            CommentModel(
              id: 'c05',
              username: 'amyrobson',
              avatar: AssetImage('/images/avatar1.png'),
              comment:
                  'Impressive! Though it seems the drag feature could be improved. But overall it looks incredible. You’ve nailed the design and the responsiveness at various breakpoints works really well.',
              whenPosted: '1 month ago',
            ),
            CommentModel(
              id: 'c06',
              username: 'maxblagun',
              avatar: AssetImage('/images/avatar2.png'),
              comment:
                  'Woah, your project looks awesome! How long have you been coding for? I’m still new, but think I want to dive into React as well soon. Perhaps you can give me an insight on where I can learn React? Thanks!',
              whenPosted: '2 weeks ago',
            )
          ],
          gallery: [
            'images/attractionToDoGallery1.png',
            'images/attractionToDoGallery2.png',
            'images/attractionToDoGallery3.png',
            'images/attractionToDoGallery4.png',
            'images/attractionToDoGallery2.png',
            'images/attractionToDoGallery1.png',
            'images/eventCover1.png',
          ],
          reviews: [
            ReviewModel(
              id: 'r06',
              rating: 4.8,
              noOfRatings: 123,
              review:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              userName: 'Ahmed Alam',
            ),
            ReviewModel(
              id: 'r07',
              rating: 4.8,
              noOfRatings: 123,
              review:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              userName: 'Ahmed Alam',
            ),
            ReviewModel(
              id: 'r08',
              rating: 4.8,
              noOfRatings: 123,
              review:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              userName: 'Ahmed Alam',
            ),
            ReviewModel(
              rating: 4.8,
              id: 'r09',
              noOfRatings: 123,
              review:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              userName: 'Ahmed Alam',
            ),
            ReviewModel(
              id: 'r10',
              rating: 4.8,
              noOfRatings: 123,
              review:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              userName: 'Ahmed Alam',
            ),
          ],
        ),
        AttractionToDoModel(
          id: 'a03',
          title: 'New York Dinner Cruise',
          coverImagePath: 'images/attractionToDoCover1.png',
          includes: '👍🏻   Direct interaction with the instructor\n'
              '🖥   Access on mobile and web\n'
              '📽   Session recording after the workshop\n'
              '⌛   1 hour live session',
          about:
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r* Section 1.10.32 of "de Finibus Bonorum et Malorum",\r* of Finibus Bonorum et Malorum"de ",\r* 1914 translation by H. Rakham',
          oldPrice: 130,
          newPrice: 110.42,
          openFromDay: 'Monday',
          openTillDay: 'Saturday',
          startTime: TimeOfDay(hour: 10, minute: 30),
          endTime: TimeOfDay(hour: 23, minute: 30),
          duration: '120 min',
          rating: 4.5,
          noOfRatings: 230,
          location:
              'Pier 61 Chelsea Piers, 111C 11th Ave, New York, NY 10011, USA',
          comments: [
            CommentModel(
              id: 'c07',
              username: 'amyrobson',
              avatar: AssetImage('/images/avatar1.png'),
              comment:
                  'Impressive! Though it seems the drag feature could be improved. But overall it looks incredible. You’ve nailed the design and the responsiveness at various breakpoints works really well.',
              whenPosted: '1 month ago',
            ),
            CommentModel(
              id: 'c08',
              username: 'maxblagun',
              avatar: AssetImage('/images/avatar2.png'),
              comment:
                  'Woah, your project looks awesome! How long have you been coding for? I’m still new, but think I want to dive into React as well soon. Perhaps you can give me an insight on where I can learn React? Thanks!',
              whenPosted: '2 weeks ago',
            )
          ],
          gallery: [
            'images/attractionToDoGallery1.png',
            'images/attractionToDoGallery2.png',
            'images/attractionToDoGallery3.png',
            'images/attractionToDoGallery4.png',
            'images/attractionToDoGallery2.png',
            'images/attractionToDoGallery1.png',
            'images/eventCover1.png',
          ],
          reviews: [
            ReviewModel(
              id: 'r11',
              rating: 4.8,
              noOfRatings: 123,
              review:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              userName: 'Ahmed Alam',
            ),
            ReviewModel(
              id: 'r12',
              rating: 4.8,
              noOfRatings: 123,
              review:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              userName: 'Ahmed Alam',
            ),
            ReviewModel(
              id: 'r13',
              rating: 4.8,
              noOfRatings: 123,
              review:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              userName: 'Ahmed Alam',
            ),
            ReviewModel(
              id: 'r14',
              rating: 4.8,
              noOfRatings: 123,
              review:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              userName: 'Ahmed Alam',
            ),
            ReviewModel(
              id: 'r15',
              rating: 4.8,
              noOfRatings: 123,
              review:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              userName: 'Ahmed Alam',
            ),
          ],
        ),
        AttractionToDoModel(
          id: 'a04',
          title: 'New York Dinner Cruise',
          coverImagePath: 'images/attractionToDoCover1.png',
          includes: '👍🏻   Direct interaction with the instructor\n'
              '🖥   Access on mobile and web\n'
              '📽   Session recording after the workshop\n'
              '⌛   1 hour live session',
          about:
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r* Section 1.10.32 of "de Finibus Bonorum et Malorum",\r* of Finibus Bonorum et Malorum"de ",\r* 1914 translation by H. Rakham',
          oldPrice: 130,
          newPrice: 110.42,
          openFromDay: 'Monday',
          openTillDay: 'Saturday',
          startTime: TimeOfDay(hour: 10, minute: 30),
          endTime: TimeOfDay(hour: 23, minute: 30),
          duration: '120 min',
          rating: 4.5,
          noOfRatings: 230,
          location:
              'Pier 61 Chelsea Piers, 111C 11th Ave, New York, NY 10011, USA',
          comments: [
            CommentModel(
              id: 'c09',
              username: 'amyrobson',
              avatar: AssetImage('/images/avatar1.png'),
              comment:
                  'Impressive! Though it seems the drag feature could be improved. But overall it looks incredible. You’ve nailed the design and the responsiveness at various breakpoints works really well.',
              whenPosted: '1 month ago',
            ),
            CommentModel(
              id: 'c10',
              username: 'maxblagun',
              avatar: AssetImage('/images/avatar2.png'),
              comment:
                  'Woah, your project looks awesome! How long have you been coding for? I’m still new, but think I want to dive into React as well soon. Perhaps you can give me an insight on where I can learn React? Thanks!',
              whenPosted: '2 weeks ago',
            )
          ],
          gallery: [
            'images/attractionToDoGallery1.png',
            'images/attractionToDoGallery2.png',
            'images/attractionToDoGallery3.png',
            'images/attractionToDoGallery4.png',
            'images/attractionToDoGallery2.png',
            'images/attractionToDoGallery1.png',
            'images/eventCover1.png',
          ],
          reviews: [
            ReviewModel(
              id: 'r16',
              rating: 4.8,
              noOfRatings: 123,
              review:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              userName: 'Ahmed Alam',
            ),
            ReviewModel(
              id: 'r17',
              rating: 4.8,
              noOfRatings: 123,
              review:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              userName: 'Ahmed Alam',
            ),
            ReviewModel(
              id: 'r18',
              rating: 4.8,
              noOfRatings: 123,
              review:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              userName: 'Ahmed Alam',
            ),
            ReviewModel(
              id: 'r19',
              rating: 4.8,
              noOfRatings: 123,
              review:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              userName: 'Ahmed Alam',
            ),
            ReviewModel(
              id: 'r20',
              rating: 4.8,
              noOfRatings: 123,
              review:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              userName: 'Ahmed Alam',
            ),
          ],
        ),
        AttractionToDoModel(
          id: 'a05',
          title: 'New York Dinner Cruise',
          coverImagePath: 'images/attractionToDoCover1.png',
          includes: '👍🏻   Direct interaction with the instructor\n'
              '🖥   Access on mobile and web\n'
              '📽   Session recording after the workshop\n'
              '⌛   1 hour live session',
          about:
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r* Section 1.10.32 of "de Finibus Bonorum et Malorum",\r* of Finibus Bonorum et Malorum"de ",\r* 1914 translation by H. Rakham',
          oldPrice: 130,
          newPrice: 110.42,
          openFromDay: 'Monday',
          openTillDay: 'Saturday',
          startTime: TimeOfDay(hour: 10, minute: 30),
          endTime: TimeOfDay(hour: 23, minute: 30),
          duration: '120 min',
          rating: 4.5,
          noOfRatings: 230,
          location:
              'Pier 61 Chelsea Piers, 111C 11th Ave, New York, NY 10011, USA',
          comments: [
            CommentModel(
              id: 'c11',
              username: 'amyrobson',
              avatar: AssetImage('/images/avatar1.png'),
              comment:
                  'Impressive! Though it seems the drag feature could be improved. But overall it looks incredible. You’ve nailed the design and the responsiveness at various breakpoints works really well.',
              whenPosted: '1 month ago',
            ),
            CommentModel(
              id: 'c12',
              username: 'maxblagun',
              avatar: AssetImage('/images/avatar2.png'),
              comment:
                  'Woah, your project looks awesome! How long have you been coding for? I’m still new, but think I want to dive into React as well soon. Perhaps you can give me an insight on where I can learn React? Thanks!',
              whenPosted: '2 weeks ago',
            )
          ],
          gallery: [
            'images/attractionToDoGallery1.png',
            'images/attractionToDoGallery2.png',
            'images/attractionToDoGallery3.png',
            'images/attractionToDoGallery4.png',
            'images/attractionToDoGallery2.png',
            'images/attractionToDoGallery1.png',
            'images/eventCover1.png',
          ],
          reviews: [
            ReviewModel(
              id: 'r21',
              rating: 4.8,
              noOfRatings: 123,
              review:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              userName: 'Ahmed Alam',
            ),
            ReviewModel(
              id: 'r22',
              rating: 4.8,
              noOfRatings: 123,
              review:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              userName: 'Ahmed Alam',
            ),
            ReviewModel(
              id: 'r23',
              rating: 4.8,
              noOfRatings: 123,
              review:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              userName: 'Ahmed Alam',
            ),
            ReviewModel(
              id: 'r24',
              rating: 4.8,
              noOfRatings: 123,
              review:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              userName: 'Ahmed Alam',
            ),
            ReviewModel(
              id: 'r25',
              rating: 4.8,
              noOfRatings: 123,
              review:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              userName: 'Ahmed Alam',
            ),
          ],
        ),
        AttractionToDoModel(
          id: 'a06',
          title: 'New York Dinner Cruise',
          coverImagePath: 'images/attractionToDoCover1.png',
          includes: '👍🏻   Direct interaction with the instructor\n'
              '🖥   Access on mobile and web\n'
              '📽   Session recording after the workshop\n'
              '⌛   1 hour live session',
          about:
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r* Section 1.10.32 of "de Finibus Bonorum et Malorum",\r* of Finibus Bonorum et Malorum"de ",\r* 1914 translation by H. Rakham',
          oldPrice: 130,
          newPrice: 110.42,
          openFromDay: 'Monday',
          openTillDay: 'Saturday',
          startTime: TimeOfDay(hour: 10, minute: 30),
          endTime: TimeOfDay(hour: 23, minute: 30),
          duration: '120 min',
          rating: 4.5,
          noOfRatings: 230,
          location:
              'Pier 61 Chelsea Piers, 111C 11th Ave, New York, NY 10011, USA',
          comments: [
            CommentModel(
              id: 'c13',
              username: 'amyrobson',
              avatar: AssetImage('/images/avatar1.png'),
              comment:
                  'Impressive! Though it seems the drag feature could be improved. But overall it looks incredible. You’ve nailed the design and the responsiveness at various breakpoints works really well.',
              whenPosted: '1 month ago',
            ),
            CommentModel(
              id: 'c14',
              username: 'maxblagun',
              avatar: AssetImage('/images/avatar2.png'),
              comment:
                  'Woah, your project looks awesome! How long have you been coding for? I’m still new, but think I want to dive into React as well soon. Perhaps you can give me an insight on where I can learn React? Thanks!',
              whenPosted: '2 weeks ago',
            )
          ],
          gallery: [
            'images/attractionToDoGallery1.png',
            'images/attractionToDoGallery2.png',
            'images/attractionToDoGallery3.png',
            'images/attractionToDoGallery4.png',
            'images/attractionToDoGallery2.png',
            'images/attractionToDoGallery1.png',
            'images/eventCover1.png',
          ],
          reviews: [
            ReviewModel(
              id: 'r26',
              rating: 4.8,
              noOfRatings: 123,
              review:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              userName: 'Ahmed Alam',
            ),
            ReviewModel(
              id: 'r27',
              rating: 4.8,
              noOfRatings: 123,
              review:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              userName: 'Ahmed Alam',
            ),
            ReviewModel(
              id: 'r28',
              rating: 4.8,
              noOfRatings: 123,
              review:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              userName: 'Ahmed Alam',
            ),
            ReviewModel(
              id: 'r29',
              rating: 4.8,
              noOfRatings: 123,
              review:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              userName: 'Ahmed Alam',
            ),
            ReviewModel(
              id: 'r30',
              rating: 4.8,
              noOfRatings: 123,
              review:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              userName: 'Ahmed Alam',
            ),
          ],
        ),
      ].toList(),
      events: [
        EventModel(
          id: 'e02',
          title: '2011 Super Junior SM Town Live \'10 World Tour New York City',
          coverImagePath: 'images/eventCover1.png',
          includes: '👍🏻   Direct interaction with the instructor\n'
              '🖥   Access on mobile and web\n'
              '📽   Session recording after the workshop\n'
              '⌛   1 hour live session',
          about:
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r* Section 1.10.32 of "de Finibus Bonorum et Malorum",\r* of Finibus Bonorum et Malorum"de ",\r* 1914 translation by H. Rakham',
          oldPrice: 130,
          newPrice: 100,
          date: '25 Oct 2022',
          time: TimeOfDay(hour: 19, minute: 30),
          duration: '120 min',
          rating: 4.5,
          noOfRatings: 230,
          location: 'Morumbi Stadium, São Paulo, Brazil',
          comments: [
            CommentModel(
              id: 'c15',
              username: 'amyrobson',
              avatar: AssetImage('/images/avatar1.png'),
              comment:
                  'Impressive! Though it seems the drag feature could be improved. But overall it looks incredible. You’ve nailed the design and the responsiveness at various breakpoints works really well.',
              whenPosted: '1 month ago',
            ),
            CommentModel(
              id: 'c16',
              username: 'maxblagun',
              avatar: AssetImage('/images/avatar2.png'),
              comment:
                  'Woah, your project looks awesome! How long have you been coding for? I’m still new, but think I want to dive into React as well soon. Perhaps you can give me an insight on where I can learn React? Thanks!',
              whenPosted: '2 weeks ago',
            )
          ].toList(),
        ),
        EventModel(
          id: 'e03',
          title: '2011 Super Junior SM Town Live \'10 World Tour New York City',
          coverImagePath: 'images/eventCover1.png',
          includes: '👍🏻   Direct interaction with the instructor\n'
              '🖥   Access on mobile and web\n'
              '📽   Session recording after the workshop\n'
              '⌛   1 hour live session',
          about:
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r* Section 1.10.32 of "de Finibus Bonorum et Malorum",\r* of Finibus Bonorum et Malorum"de ",\r* 1914 translation by H. Rakham',
          oldPrice: 130,
          newPrice: 100,
          date: '25 Oct 2022',
          time: TimeOfDay(hour: 19, minute: 30),
          duration: '120 min',
          rating: 4.5,
          noOfRatings: 230,
          location: 'Morumbi Stadium, São Paulo, Brazil',
          comments: [
            CommentModel(
              id: 'c17',
              username: 'amyrobson',
              avatar: AssetImage('/images/avatar1.png'),
              comment:
                  'Impressive! Though it seems the drag feature could be improved. But overall it looks incredible. You’ve nailed the design and the responsiveness at various breakpoints works really well.',
              whenPosted: '1 month ago',
            ),
            CommentModel(
              id: 'c18',
              username: 'maxblagun',
              avatar: AssetImage('/images/avatar2.png'),
              comment:
                  'Woah, your project looks awesome! How long have you been coding for? I’m still new, but think I want to dive into React as well soon. Perhaps you can give me an insight on where I can learn React? Thanks!',
              whenPosted: '2 weeks ago',
            )
          ].toList(),
        ),
        EventModel(
          id: 'e04',
          title: '2011 Super Junior SM Town Live \'10 World Tour New York City',
          coverImagePath: 'images/eventCover1.png',
          includes: '👍🏻   Direct interaction with the instructor\n'
              '🖥   Access on mobile and web\n'
              '📽   Session recording after the workshop\n'
              '⌛   1 hour live session',
          about:
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r* Section 1.10.32 of "de Finibus Bonorum et Malorum",\r* of Finibus Bonorum et Malorum"de ",\r* 1914 translation by H. Rakham',
          oldPrice: 130,
          newPrice: 100,
          date: '25 Oct 2022',
          time: TimeOfDay(hour: 19, minute: 30),
          duration: '120 min',
          rating: 4.5,
          noOfRatings: 230,
          location: 'Morumbi Stadium, São Paulo, Brazil',
          comments: [
            CommentModel(
              id: 'c19',
              username: 'amyrobson',
              avatar: AssetImage('/images/avatar1.png'),
              comment:
                  'Impressive! Though it seems the drag feature could be improved. But overall it looks incredible. You’ve nailed the design and the responsiveness at various breakpoints works really well.',
              whenPosted: '1 month ago',
            ),
            CommentModel(
              id: 'c20',
              username: 'maxblagun',
              avatar: AssetImage('/images/avatar2.png'),
              comment:
                  'Woah, your project looks awesome! How long have you been coding for? I’m still new, but think I want to dive into React as well soon. Perhaps you can give me an insight on where I can learn React? Thanks!',
              whenPosted: '2 weeks ago',
            )
          ].toList(),
        ),
        EventModel(
          id: 'e05',
          title: '2011 Super Junior SM Town Live \'10 World Tour New York City',
          coverImagePath: 'images/eventCover1.png',
          includes: '👍🏻   Direct interaction with the instructor\n'
              '🖥   Access on mobile and web\n'
              '📽   Session recording after the workshop\n'
              '⌛   1 hour live session',
          about:
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r* Section 1.10.32 of "de Finibus Bonorum et Malorum",\r* of Finibus Bonorum et Malorum"de ",\r* 1914 translation by H. Rakham',
          oldPrice: 130,
          newPrice: 100,
          date: '25 Oct 2022',
          time: TimeOfDay(hour: 19, minute: 30),
          duration: '120 min',
          rating: 4.5,
          noOfRatings: 230,
          location: 'Morumbi Stadium, São Paulo, Brazil',
          comments: [
            CommentModel(
              id: 'c21',
              username: 'amyrobson',
              avatar: AssetImage('/images/avatar1.png'),
              comment:
                  'Impressive! Though it seems the drag feature could be improved. But overall it looks incredible. You’ve nailed the design and the responsiveness at various breakpoints works really well.',
              whenPosted: '1 month ago',
            ),
            CommentModel(
              id: 'c22',
              username: 'maxblagun',
              avatar: AssetImage('/images/avatar2.png'),
              comment:
                  'Woah, your project looks awesome! How long have you been coding for? I’m still new, but think I want to dive into React as well soon. Perhaps you can give me an insight on where I can learn React? Thanks!',
              whenPosted: '2 weeks ago',
            )
          ].toList(),
        ),
        EventModel(
          id: 'e06',
          title: '2011 Super Junior SM Town Live \'10 World Tour New York City',
          coverImagePath: 'images/eventCover1.png',
          includes: '👍🏻   Direct interaction with the instructor\n'
              '🖥   Access on mobile and web\n'
              '📽   Session recording after the workshop\n'
              '⌛   1 hour live session',
          about:
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r* Section 1.10.32 of "de Finibus Bonorum et Malorum",\r* of Finibus Bonorum et Malorum"de ",\r* 1914 translation by H. Rakham',
          oldPrice: 130,
          newPrice: 100,
          date: '25 Oct 2022',
          time: TimeOfDay(hour: 19, minute: 30),
          duration: '120 min',
          rating: 4.5,
          noOfRatings: 230,
          location: 'Morumbi Stadium, São Paulo, Brazil',
          comments: [
            CommentModel(
              id: 'c23',
              username: 'amyrobson',
              avatar: AssetImage('/images/avatar1.png'),
              comment:
                  'Impressive! Though it seems the drag feature could be improved. But overall it looks incredible. You’ve nailed the design and the responsiveness at various breakpoints works really well.',
              whenPosted: '1 month ago',
            ),
            CommentModel(
              id: 'c24',
              username: 'maxblagun',
              avatar: AssetImage('/images/avatar2.png'),
              comment:
                  'Woah, your project looks awesome! How long have you been coding for? I’m still new, but think I want to dive into React as well soon. Perhaps you can give me an insight on where I can learn React? Thanks!',
              whenPosted: '2 weeks ago',
            )
          ].toList(),
        ),
      ])
].toList();


