import 'package:flutter/material.dart';
import 'package:meal/models/categories.dart';
import 'package:meal/models/meal.dart';

class MockData {
  static final List<Meal> _meals = [
    Meal(
    id: 'm1',
    categories: [
    'c1',
    'c2',
    ],
    title: 'Спагетти в томатном соусе',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
    'https://i.pinimg.com/originals/7c/1b/90/7c1b9036dba084cd9b5d9ee09d7f7d58.jpg',
    duration: 20,
    ingredients: [
    '4 Томата',
    '1 ст. л. растительного масла',
    '1 луковица',
    '250г спагетти',
    'Специи',
    'Сыр (по желанию)'
    ],
    steps: [
    'Нарежьте томаты на мелкие куски.',
    'Вскипятите немного воды - добавьте соли чтобы это произошло быстрее.',
    'Положите спагетти в кипящую воду - они будут вариться 10-12 минут.',
    'В это время на разогретую сковороду налейте немного растительного масла и добавьте к нему нарезанный лук.',
    'Обжарьте в течение двух минут, после чего добавьте в сковороду кусочки томатов, соль, перец и другие Ваши любимые специи',
    'Соус будет готов вместе со спагетти',
    'Добавьте спагетти в соус, посыпьте тёртым сыром и можно есть.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm2',
    categories: [
    'c2',
    ],
    title: 'Гавайский тост',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
    'https://i.pinimg.com/originals/a8/d4/2a/a8d42a2b20f26d23f222aa3ac44d79a7.jpg',
    duration: 10,
    ingredients: [
    '1 ломтик белого хлеба',
    '1 ломтик ветчины',
    '1 кружок ананаса',
    '1-2 ломтика сыра',
    'Butter'
    ],
    steps: [
    'Положите один ломтик белого хлеба',
    'На него слоями положите ветчину, ананас и',
    'Запекайте тост в разогретой до 200°C духовке в течение 10 минут'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm3',
    categories: [
    'c2',
    'c3',
    ],
    title: 'Классический гамбургер',
    affordability: Affordability.Pricey,
    complexity: Complexity.Simple,
    imageUrl:
    'https://i.pinimg.com/originals/b6/c1/52/b6c152276624801236593db53ce43858.jpg',
    duration: 45,
    ingredients: [
      "300 г рубленого мяса крупного рогатого скота",
      "1 помидор", 
      "1 огурец", 
      "1 луковица",
      "Кетчуп",
      "2 булочки для бургеров"
    ], 
  steps: [
    "Сформовать 2 котлеты",
    "Обжаривайте котлеты примерно по 4 минуты с каждой стороны",
    "Быстро обжаривайте булочки примерно по 1 минуте с каждой стороны",
    "Сдобрите булочки кетчупом",
    "Подавайте бургер с помидорами, огурцами и луком"
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm4',
    categories: [
    'c4',
    ],
    title: 'Венский шницель',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Challenging,
    imageUrl:
    'https://i.pinimg.com/originals/04/41/75/044175a6113d69307c623dade4ee5f5f.jpg',
    duration: 60,
    ingredients: [
      "8 телячьих котлет", 
      "4 Яйца", 
      "200 г панировочных сухарей", 
      "100 г муки",
      "300 мл сливочного масла", 
      "100 г растительного масла",
      "Соль",
      "Ломтики лимона"
    ], 
  steps: [
      "Размягчите телятину примерно на 2-4 мм и посолите с обеих сторон",
      "На плоской тарелке слегка размешайте яйца вилкой", 
      "Слегка обваляйте котлеты в муке, затем обмакните в яйцо и, наконец, обваляйте в панировочных сухарях", 
      "Разогрейте сливочное масло в большой сковороде (дайте жиру сильно нагреться) и обжарьте шницели до золотистой корочки с обеих сторон", 
      "Обязательно регулярно переворачивайте сковороду, чтобы шницели были покрыты маслом, а крошка стала 'пушистой'", 
      "Выньте и обсушите на кухонной бумаге. Обжарьте петрушку в оставшемся масле и слейте воду.", 
      "Выложите шницели на подогретое блюдо и подавайте, украсив петрушкой и ломтиками лимона",
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm5',
    categories: [
    'c2'
    'c5',
    'c10',
    ],
    title: 'Салат с копчёным лососем',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'https://i.pinimg.com/originals/0d/91/8c/0d918c38971d5c4abbc5fe1adc5c9589.jpg',
    duration: 15,
    ingredients: [
      "Руккола",
      "Салат-латук из баранины",
      "Петрушка",
      "Фенхель",
      "200 г копченого лосося",
      "Горчица", 
      "Бальзамический уксус",
      "Оливковое масло",
      "Соль и перец"
    ], 
    steps: [
      "Вымойте и нарежьте салат и зелень", 
      "Лосось нарежьте кубиками",
      "Смешайте горчицу, уксус и оливковое масло в блендере",
      "Приготовить салат",
      "Добавить кубики лосося и заправку"
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm6',
    categories: [
    'c6',
    'c10',
    ],
    title: 'Восхитительный апельсиновый мусс',
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
    'https://i.pinimg.com/originals/cc/9e/73/cc9e736af31b62e76096bad41efe162d.jpg',
    duration: 240,
    ingredients: [
    "4 листа желатина",
    "150 мл апельсинового сока",
    "80 г сахара",
    "300 г йогурта",
    "200 г сливок",
    "Апельсиновая цедра", 
  ], 
  steps: [
    "Растворите желатин в кастрюле",
    "Добавьте апельсиновый сок и сахар",
    "Снимите кастрюлю с плиты",
    "Добавьте 2 столовые ложки йогурта",
    "Перемешайте желатин с оставшимся йогуртом",
    "Остудите все в холодильнике",
    "Взбейте сливки и приподнимите их над апельсиновой массой",
    "Снова остудите не менее 4 часов",
    "Подавайте с апельсиновой цедрой",
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm7',
    categories: [
    'c7',
    ],
    title: 'Блинчики',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
    'https://i.pinimg.com/originals/14/dc/84/14dc84ad737ad808b9ab3c9882e2a6d0.jpg',
    duration: 20,
    ingredients: [
      "1,5 Стакана муки общего назначения",
      "3,5 чайных ложки разрыхлителя", 
      "1 чайная ложка соли",
      "1 столовая ложка белого сахара",
      "1 1/4 стакана молока",
      "1 яйцо",
      "3 столовые ложки растопленного сливочного масла", 
  ], 
  steps: [
      "В большую миску просейте вместе муку, разрыхлитель, соль и сахар", 
      "Сделайте углубление в центре и влейте молоко, яйцо и растопленное сливочное масло; перемешайте до получения однородной массы", 
      "Разогрейте слегка смазанную маслом сковороду на средне-высоком огне.", 
      "Вылейте тесто на сковороду, используя примерно по 1/4 стакана на каждый блинчик. Подрумяньте с обеих сторон и подавайте горячим"
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm8',
    categories: [
    'c8',
    ],
    title: 'Сливочный куриный карри по-индийски',
    affordability: Affordability.Pricey,
    complexity: Complexity.Challenging,
    imageUrl:
    'https://i.pinimg.com/originals/bd/07/9a/bd079a13bce5b1e48cc9a5861c77aa64.jpg',
    duration: 35,
    ingredients: [
    "4 куриные грудки", 
  "1 Луковица",
    "2 зубчика чеснока",
    "1 кусочек имбиря",
    "4 столовые ложки миндаля", 
  "1 Чайная ложка кайенского перца",
    "500 мл кокосового молока", 
  ], 
  steps: [
    "Нарежьте и обжарьте куриную грудку",
    "Измельчите лук, чеснок и имбирь в пасту и обжарьте все",
    "Добавьте специи и обжаривайте, помешивая",
    "Добавьте куриную грудку + 250 мл воды и готовьте все в течение 10 минут",
    "Добавьте кокосовое молоко",
    "Подавайте с рисом"
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm9',
    categories: [
    'c9',
    ],
    title: 'Шоколодное суфле',
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
    'https://i.pinimg.com/originals/bb/d7/d7/bbd7d7a4492019dde2c64c3760de7959.jpg',
    duration: 45,
    ingredients: [
      "1 Чайная ложка растопленного сливочного масла",
      "2 столовые ложки белого сахара",
      "2 унции 70%-ного темного шоколада, разломанного на кусочки", 
      "1 столовая ложка сливочного масла", 
      "1 столовая ложка муки общего назначения",
      "4 1/3 столовых ложки холодного молока",
      "1 щепотка соли",
      "1 Щепотка кайенского перца", 
      "1 Большой яичный желток",
      "2 больших яичных белка", 
      "1 Щепотка винного камня",
      "1 столовая ложка белого сахара", 
  ], 
  steps: [ 
  'Разогреть духовку до 190 °C. Противень с краями застелите пергаментной бумагой.', 
  "Смажьте дно и бортики 2 формочек слегка 1 чайной ложкой растопленного сливочного масла; покройте дно и бортики до самого края.", 
  "Добавьте в формочки 1 столовую ложку белого сахара. Переворачивайте формочки, пока сахар не покроет всю поверхность.", 
  "Положите кусочки шоколада в металлическую миску для смешивания.", 
  "Поставьте миску на сковороду с примерно 3 стаканами горячей воды на слабый огонь.", 
  "Растопите 1 столовую ложку сливочного масла в сковороде на среднем огне. Посыпьте мукой. Взбивайте, пока мука не смешается с маслом и смесь не загустеет.", 
  "Взбивайте с холодным молоком, пока смесь не станет однородной и не загустеет. Переложите смесь в миску с растопленным шоколадом.", 
  "Добавьте соль и кайенский перец. Тщательно перемешайте. Добавьте яичный желток и тщательно перемешайте.", 
  "Оставьте миску над горячей (не кипящей) водой, чтобы шоколад оставался теплым, пока вы взбиваете яичные белки", 
  "Взбейте 2 яичных белка в миске для смешивания; добавьте винный камень. Взбивайте, пока смесь не начнет густеть, а капельки от взбивания останутся на поверхности около 1 секунды, прежде чем раствориться в смеси.", 
  "Добавьте 1/3 сахара и взбейте. Взбивайте еще немного сахара около 15 секунд.",
  "Взбейте оставшийся сахар. Продолжайте взбивать, пока смесь не станет примерно такой же густой, как крем для бритья, и не образует мягких пиков, от 3 до 5 минут.", 
  "Переложите чуть меньше половины яичных белков в шоколад.", 
  "Перемешивайте, пока яичные белки полностью не впитаются в шоколад.", 
  "Добавьте остальные яичные белки; аккуратно вмешайте в шоколад лопаточкой, поднимая со дна и переворачивая.", 
  "Прекратите взбивать после того, как яичный белок исчезнет. Распределите смесь по 2 подготовленным формочкам. Выложите формочки на подготовленный противень.", 
  "Выпекайте в предварительно разогретой духовке, пока коржи не распушатся и не поднимутся над верхушками бортиков, от 12 до 15 минут.",
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm10',
    categories: [
    'c2',
    'c5',
    'c10',
    ],
    title: 'Салат из спаржи с помидорами черри',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'https://i.pinimg.com/originals/ef/36/6a/ef366ad124cbd67d16e461d7a6cd70f2.jpg',
    duration: 30,
    ingredients: [
      "Белая и зеленая спаржа",
      "30 г кедровых орешков", 
      "300 г помидоров черри",
      "Салат",
      "Соль, перец и оливковое масло"
    ], 
  steps: [
      "Вымойте, очистите и нарежьте спаржу",
      "Приготовьте в подсоленной воде",
      "Посолите и поперчите спаржу", 
      "Обжарьте кедровые орешки", 
      "Помидоры разрежьте пополам",
      "Смешайте со спаржей, салатом и заправкой",
      "Подавайте с багетом"
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
    ),
  ];
  static final List<Meal> _favourite = [];
  static bool isGlutenFree = false;
  static bool isLactoseFree = false;
  static bool isVegan = false;
  static bool isVegetarian = false;



  static List<Category> get getCategories => [
    Category(
      id: "c1", 
      name: "Итальянская", 
      color: Colors.tealAccent,
    ),
    Category(
      id: "c2", 
      name: "Быстрая и простая", 
      color: Colors.amber,
    ),
    Category(
      id: "c3", 
      name: "Гамбургеры", 
      color: Colors.blue,
    ),
    Category(
      id: "c4", 
      name: "Немецкая", 
      color: Colors.pink,
    ),
    Category(
      id: "c5", 
      name: "Легкая", 
      color: Colors.deepOrange,
    ),
    Category(
      id: "c6", 
      name: "Экзотическая", 
      color: Colors.lime,
    ),
    Category(
      id: "c7", 
      name: "Французская", 
      color: Colors.blueGrey,
    ),
    Category(
      id: "c8", 
      name: "Азиатская", 
      color: Colors.green,
    ),
    Category(
      id: "c9", 
      name: "На завтрак",
      color: Colors.deepPurpleAccent,
    ),
    Category(
      id: "c10", 
      name: "Летняя", 
      color: Colors.cyanAccent,
    ),
  ];

  static List<Meal> get getMeals => _meals
  .where(
    (meal) => 
      (!isGlutenFree || meal.isGlutenFree == isGlutenFree) && 
      (!isLactoseFree || meal.isLactoseFree == isLactoseFree) && 
      (!isVegan || meal.isVegan == isVegan) &&
      (!isVegetarian || meal.isVegetarian == isVegetarian)
  ).toList();

  static List<Meal> get getFavourite => _favourite;

  static void addToFavouriteMeals (Meal meal) {
    _favourite.add(meal);
  }

  static void removeFromFavouriteMeals (Meal meal) {
    _favourite.remove(meal);
  }

}