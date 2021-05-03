class Tweet {
  static Tweet? _instace;
  static Tweet get instance {
    if (_instace != null) return _instace!;
    _instace = Tweet._init();
    return _instace!;
  }

  Tweet._init();

  //* Page name
  final List<String> tweetTitle = [
    'Tek Yol FENER',
    'hiç etik degil',
    'Fenerbahçe SK',
    'Fener Ajans',
    'no context Aziz Yıldırım',
    'shitpost',
    'TC Futbolu',
    'DarkWeb Haber',
    'Spotify',
    'BBO Sports'
  ];

  //* User Name
  final List<String> userName = [
    '@TekYolFener',
    '@hicetikdegill',
    '@Fenerbahce',
    '@ajansfenercom',
    '@benazizbasgan',
    '@shitpostr',
    '@TcFutbolu',
    '@darkwebhaberr',
    '@spotifysozleri',
    '@bbosports'
  ];

  //* Time
  final List<String> time = [
    '5m',
    '25m',
    '45m',
    '3h',
    '7h',
    '9h',
    '12h',
    '15h',
    '18h',
    '22h',
  ];

  //* A sign
  final String sign = '•';

  //* Tweet content
  final List<String> tweetContent = [
    'Altay Bayındır: "Önümüzdeki haftalarda da en iyi şekilde\n'
        'Fenerbahçemizi temsil edeceğiz.İyice o formayı terle\n'
        'teceğiz, iyice terleteceğiz ki her şeyi yapabildik diyelim.\n'
        'Ne olursa olsun kötü mücadele diye bir şey olamaz."\n',
    'puahahuuha',
    'Üyelerimizin dikkatine; 2021 yılı Genel Kurul\n'
        'Toplantısının olağan tarihinde yapılması\n'
        ' halinde hazirun listesinde yer alıp almadığı-\n'
        ' nızı kontrol etmek için: https://bit.ly/3uqUjh0',
    'ÇİZGİMİZ BUDUR! #BirleşFenerbahçeli',
    'Tek konuşmasıyla ;\n\n'
        'Gs 3 puan kaybetti\n'
        'Bjk 3 puan kaybetti\n'
        'Fenerbahçe 3  puan aldı\n\n'
        'Winner',
    'EGKEWEOKFEWKOGKEROHKOTK',
    'hoaydaaa',
    'Türkiye Coronavirüs Risk Haritası',
    '"Ama sen korkaksın hiç bulaşma."',
    '"Daha iyisi yok, var farkına."',
  ];

  final List<String> images = [
    'https://pbs.twimg.com/media/EyXog-7XMAINORQ?format=jpg&name=small',
    'https://pbs.twimg.com/media/EyYL10eWQAwVhYK?format=png&name=small',
    'https://pbs.twimg.com/media/EyRb57yWQAAyZDQ?format=jpg&name=small',
    'https://pbs.twimg.com/media/EyYnCL0XAAgi7n-?format=jpg&name=small',
    'https://pbs.twimg.com/media/EyOq2nMXMAwmjvf?format=jpg&name=small',
    'https://pbs.twimg.com/media/EyHBHbiWgAA0Rxc?format=jpg&name=small',
    'https://pbs.twimg.com/media/EySBltdWEAAnp_J?format=jpg&name=small',
    'https://pbs.twimg.com/media/EyEZPSWWEAQyupB?format=jpg&name=small',
    'https://pbs.twimg.com/media/Er316vpXcAEkehy?format=jpg&name=small',
    'https://pbs.twimg.com/media/EySdGXkXIAMdZao?format=jpg&name=small'
  ];

  final List<int> commentCount = [
    124,
    56,
    1765,
    42,
    66,
    25,
    54,
    175,
    11,
    224
  ];

  final List<int> retweetCount = [
    89,
    43,
    1306,
    34,
    59,
    17,
    44,
    153,
    8,
    189
  ];

  final List<int> favCount = [
    565,
    387,
    8631,
    178,
    258,
    55,
    321,
    267,
    51,
    432
  ];
}
