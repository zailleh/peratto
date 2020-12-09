# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Vocabulary.delete_all

n5_vocab = [
	["会う","あう","to meet","5"],
	["青","あお","blue","5"],
	["青い","あおい","blue","5"],
	["赤","あか","red","5"],
	["赤い","あかい","red","5"],
	["明い","あかるい","bright","5"],
	["秋","あき","autumn","5"],
	["開く","あく","to open, to become open","5"],
	["開ける","あける","to open","5"],
	["上げる","あげる","to give","5"],
	["朝","あさ","morning","5"],
	["朝御飯","あさごはん","breakfast","5"],
	["","あさって","day after tomorrow","5"],
	["足","あし","foot, leg","5"],
	["明日","あした","tomorrow","5"],
	["","あそこ","over there","5"],
	["遊ぶ","あそぶ","to play, to make a visit","5"],
	["暖かい","あたたかい","warm","5"],
	["頭","あたま","head","5"],
	["新しい","あたらしい","new","5"],
	["","あちら","there","5"],
	["厚い","あつい","kind, deep, thick","5"],
	["暑い","あつい","hot","5"],
	["熱い","あつい","hot to the touch","5"],
	["","あっち","over there","5"],
	["後","あと","afterwards","5"],
	["","あなた","you","5"],
	["兄","あに","(humble) older brother","5"],
	["姉","あね","(humble) older sister","5"],
	["","あの","that over there","5"],
	["","あの","um...","5"],
	["","アパート","apartment","5"],
	["","あびる","to bathe, to shower","5"],
	["危ない","あぶない","dangerous","5"],
	["甘い","あまい","sweet","5"],
	["","あまり","not very","5"],
	["雨","あめ","rain","5"],
	["飴","あめ","candy","5"],
	["洗う","あらう","to wash","5"],
	["","ある","to be,to have (used for inanimate objects)","5"],
	["歩く","あるく","to walk","5"],
	["","あれ","that","5"],
	["","いい/よい","good","5"],
	["","いいえ","no","5"],
	["言う","いう","to say","5"],
	["家","いえ","house","5"],
	["","いかが","how","5"],
	["行く","いく","to go","5"],
	["","いくつ","how many?,how old?","5"],
	["","いくら","how much?","5"],
	["池","いけ","pond","5"],
	["医者","いしゃ","medical doctor","5"],
	["","いす","chair","5"],
	["忙しい","いそがしい","busy, irritated","5"],
	["痛い","いたい","painful","5"],
	["一","いち","one","5"],
	["一日","いちにち","first of the month","5"],
	["","いちばん","best, first","5"],
	["","いつ","when","5"],
	["五日","いつか","five days, fifth day","5"],
	["一緒","いっしょ","together","5"],
	["五つ","いつつ","five","5"],
	["","いつも","always","5"],
	["犬","いぬ","dog","5"],
	["今","いま","now","5"],
	["意味","いみ","meaning","5"],
	["妹","いもうと","(humble) younger sister","5"],
	["嫌","いや","unpleasant","5"],
	["入口","いりぐち","entrance","5"],
	["居る","いる","to be, to have (used for people and animals)","5"],
	["要る","いる","to need","5"],
	["入れる","いれる","to put in","5"],
	["色","いろ","colour","5"],
	["","いろいろ","various","5"],
	["上","うえ","on top of","5"],
	["後ろ","うしろ","behind","5"],
	["薄い","うすい","thin,weak","5"],
	["歌","うた","song","5"],
	["歌う","うたう","to sing","5"],
	["生まれる","うまれる","to be born","5"],
	["海","うみ","sea","5"],
	["売る","うる","to sell","5"],
	["煩い","うるさい","noisy, annoying","5"],
	["上着","うわぎ","jacket","5"],
	["絵","え","picture","5"],
	["映画","えいが","movie","5"],
	["映画館","えいがかん","cinema","5"],
	["英語","えいご","English language","5"],
	["","ええ","yes","5"],
	["駅","えき","station","5"],
	["","エレベーター","elevator","5"],
	["鉛筆","えんぴつ","pencil","5"],
	["","おいしい","delicious","5"],
	["多い","おおい","many","5"],
	["大きい","おおきい","big","5"],
	["大きな","おおきな","big","5"],
	["大勢","おおぜい","great number of people","5"],
	["お母さん","おかあさん","(honorable) mother","5"],
	["お菓子","おかし","sweets, candy","5"],
	["お金","おかね","money","5"],
	["起きる","おきる","to get up","5"],
	["置く","おく","to put","5"],
	["奥さん","おくさん","(honorable) wife","5"],
	["お酒","おさけ","alcohol, rice wine","5"],
	["お皿","おさら","plate, dish","5"],
	["伯父/叔父","おじいさん","grandfather, male senior citizen","5"],
	["教える","おしえる","to teach, to tell","5"],
	["伯父/叔父","おじさん","uncle, middle aged gentleman","5"],
	["押す","おす","to push, to stamp something","5"],
	["遅い","おそい","late, slow","5"],
	["お茶","おちゃ","green tea","5"],
	["お手洗い","おてあらい","bathroom","5"],
	["お父さん","おとうさん","(honorable) father","5"],
	["弟","おとうと","younger brother","5"],
	["男","おとこ","Man","5"],
	["男の子","おとこのこ","Boy","5"],
	["一昨日","おととい","day before yesterday","5"],
	["一昨年","おととし","year before last","5"],
	["大人","おとな","Adult","5"],
	["","おなか","stomach","5"],
	["同じ","おなじ","same","5"],
	["お兄さん","おにいさん","(honorable) older brother","5"],
	["お姉さん","おねえさん","(honorable) older sister","5"],
	["","おばあさん","grandmother, female senior-citizen","5"],
	["伯母さん/叔母さん","おばさん","Aunt","5"],
	["お風呂","おふろ","Bath","5"],
	["お弁当","おべんとう","boxed lunch","5"],
	["覚える","おぼえる","to remember","5"],
	["","おまわりさん","friendly term for policeman","5"],
	["重い","おもい","Heavy","5"],
	["","おもしろい","Interesting","5"],
	["泳ぐ","およぐ","to swim","5"],
	["降りる","おりる","to get off, to descend","5"],
	["終る","おわる","to finish","5"],
	["音楽","おんがく","Music","5"],
	["女","おんな","Woman","5"],
	["女の子","おんなのこ","Girl","5"],
	["外国","がいこく","foreign country","5"],
	["外国人","がいこくじん","Foreigner","5"],
	["会社","かいしゃ","Company","5"],
	["階段","かいだん","Stairs","5"],
	["買い物","かいもの","Shopping","5"],
	["買う","かう","to buy","5"],
	["返す","かえす","to return something","5"],
	["帰る","かえる","to go back","5"],
	["","かかる","to take time or money","5"],
	["","かぎ","Key","5"],
	["書く","かく","to write","5"],
	["学生","がくせい","Student","5"],
	["","かける","to call by phone","5"],
	["傘","かさ","Umbrella","5"],
	["貸す","かす","to lend","5"],
	["風","かぜ","Wind","5"],
	["風邪","かぜ","a cold","5"],
	["家族","かぞく","Family","5"],
	["方","かた","person, way of doing","5"],
	["学校","がっこう","School","5"],
	["","カップ","Cup","5"],
	["家庭","かてい","Household","5"],
	["角","かど","a corner","5"],
	["","かばん","bag, basket","5"],
	["花瓶","かびん","a vase","5"],
	["紙","かみ","paper","5"],
	["","カメラ","camera","5"],
	["火曜日","かようび","Tuesday","5"],
	["辛い","からい","Spicy","5"],
	["体","からだ","Body","5"],
	["借りる","かりる","to borrow","5"],
	["軽い","かるい","Light","5"],
	["","カレー","Curry","5"],
	["","カレンダー","calendar","5"],
	["川/河","かわ","River","5"],
	["","かわいい","Cute","5"],
	["漢字","かんじ","Chinese character","5"],
	["木","き","tree, wood","5"],
	["黄色","きいろ","yellow","5"],
	["黄色い","きいろい","yellow","5"],
	["消える","きえる","to disappear","5"],
	["聞く","きく","to hear, to listen to, to ask","5"],
	["北","きた","North","5"],
	["","ギター","Guitar","5"],
	["汚い","きたない","Dirty","5"],
	["喫茶店","きっさてん","coffee lounge","5"],
	["切手","きって","postage stamp","5"],
	["切符","きっぷ","Ticket","5"],
	["昨日","きのう","Yesterday","5"],
	["九","きゅう / く","Nine","5"],
	["牛肉","ぎゅうにく","Beef","5"],
	["牛乳","ぎゅうにゅう","Milk","5"],
	["今日","きょう","Today","5"],
	["教室","きょうしつ","Classroom","5"],
	["兄弟","きょうだい","(humble) siblings","5"],
	["去年","きょねん","last year","5"],
	["嫌い","きらい","Hate","5"],
	["切る","きる","to cut","5"],
	["着る","きる","to put on from the shoulders down","5"],
	["","きれい","pretty, clean","5"],
	["","キロ/キログラム","Kilogram","5"],
	["","キロ/キロメートル","Kilometer","5"],
	["銀行","ぎんこう","Bank","5"],
	["金曜日","きんようび","Friday","5"],
	["薬","くすり","medicine","5"],
	["","ください","Please","5"],
	["果物","くだもの","Fruit","5"],
	["口","くち","mouth, opening","5"],
	["靴","くつ","Shoes","5"],
	["靴下","くつした","Socks","5"],
	["国","くに","Country","5"],
	["曇り","くもり","cloudy weather","5"],
	["曇る","くもる","to become cloudy, to become dim","5"],
	["暗い","くらい","Gloomy","5"],
	["","クラス","Class","5"],
	["","グラム","Gram","5"],
	["来る","くる","to come","5"],
	["車","くるま","car, vehicle","5"],
	["黒","くろ","Black","5"],
	["黒い","くろい","black","5"],
	["警官","けいかん","policeman","5"],
	["今朝","けさ","this morning","5"],
	["消す","けす","to erase, to turn off power","5"],
	["結構","けっこう","splendid, enough","5"],
	["結婚","けっこん","Marriage","5"],
	["月曜日","げつようび","Monday","5"],
	["玄関","げんかん","entry hall","5"],
	["元気","げんき","health, vitality","5"],
	["五","ご","Five","5"],
	["","コート","coat, tennis court","5"],
	["","コーヒー","Coffee","5"],
	["公園","こうえん","Park","5"],
	["交差点","こうさてん","intersection","5"],
	["紅茶","こうちゃ","black tea","5"],
	["交番","こうばん","police box","5"],
	["声","こえ","Voice","5"],
	["","ここ","Here","5"],
	["午後","ごご","afternoon","5"],
	["九日","ここのか","nine days, ninth day","5"],
	["九つ","ここのつ","Nine","5"],
	["午前","ごぜん","morning","5"],
	["答える","こたえる","to answer","5"],
	["","こちら","this person or way","5"],
	["","こっち","this person or way","5"],
	["","コップ","a glass","5"],
	["今年","ことし","this year","5"],
	["言葉","ことば","word, language","5"],
	["子供","こども","Child","5"],
	["","この","This","5"],
	["御飯","ごはん","cooked rice, meal","5"],
	["","コピーする","to copy","5"],
	["困る","こまる","to be worried","5"],
	["","これ","This","5"],
	["今月","こんげつ","this month","5"],
	["今週","こんしゅう","this week","5"],
	["","こんな","Such","5"],
	["今晩","こんばん","this evening","5"],
	["","さあ","well…","5"],
	["財布","さいふ","Wallet","5"],
	["魚","さかな","Fish","5"],
	["先","さき","the future, previous","5"],
	["咲く","さく","to bloom","5"],
	["作文","さくぶん","composition, writing","5"],
	["差す","さす","to stretch out hands, to raise an umbrella","5"],
	["雑誌","ざっし","Magazine","5"],
	["砂糖","さとう","Sugar","5"],
	["寒い","さむい","Cold","5"],
	["さ来年","さらいねん","year after next","5"],
	["三","さん","Three","5"],
	["散歩","さんぽする","to stroll","5"],
	["四","し / よん","Four","5"],
	["塩","しお","Salt","5"],
	["","しかし","However","5"],
	["時間","じかん","Time","5"],
	["仕事","しごと","Job","5"],
	["辞書","じしょ","Dictionary","5"],
	["静か","しずか","Quiet","5"],
	["下","した","Below","5"],
	["七","しち / なな","Seven","5"],
	["質問","しつもん","Question","5"],
	["自転車","じてんしゃ","Bicycle","5"],
	["自動車","じどうしゃ","Automobile","5"],
	["死ぬ","しぬ","to die","5"],
	["字引","じびき","Dictionary","5"],
	["自分","じぶん","Oneself","5"],
	["閉まる","しまる","to close, to be closed","5"],
	["締める","しめる","to tie","5"],
	["閉める","しめる","to close something","5"],
	["","じゃ/じゃあ","well then…","5"],
	["写真","しゃしん","photograph","5"],
	["","シャツ","Shirt","5"],
	["","シャワー","Shower","5"],
	["十","じゅう とお","Ten","5"],
	["授業","じゅぎょう","lesson, class work","5"],
	["宿題","しゅくだい","homework","5"],
	["上手","じょうず","Skillful","5"],
	["丈夫","じょうぶ","strong, durable","5"],
	["","しょうゆ","soy sauce","5"],
	["食堂","しょくどう","dining hall","5"],
	["知る","しる","to know","5"],
	["白","しろ","White","5"],
	["白い","しろい","White","5"],
	["新聞","しんぶん","newspaper","5"],
	["水曜日","すいようび","Wednesday","5"],
	["吸う","すう","to smoke, to suck","5"],
	["","スカート","Skirt","5"],
	["好き","すき","Likeable","5"],
	["少ない","すくない","a few","5"],
	["","すぐに","Instantly","5"],
	["少し","すこし","Few","5"],
	["涼しい","すずしい","Refreshing","5"],
	["","ストーブ","Heater","5"],
	["","スプーン","Spoon","5"],
	["","スポーツ","Sport","5"],
	["","ズボン","Trousers","5"],
	["住む","すむ","to live in","5"],
	["","スリッパ","Slippers","5"],
	["","する","to do","5"],
	["座る","すわる","to sit","5"],
	["背","せ","height, stature","5"],
	["","セーター","sweater, jumper","5"],
	["生徒","せいと","Pupil","5"],
	["","せっけん","Economy","5"],
	["背広","せびろ","business suit","5"],
	["狭い","せまい","Narrow","5"],
	["","ゼロ","Zero","5"],
	["千","せん","Thousand","5"],
	["先月","せんげつ","last month","5"],
	["先週","せんしゅう","last week","5"],
	["先生","せんせい","teacher, doctor","5"],
	["洗濯","せんたく","Washing","5"],
	["全部","ぜんぶ","All","5"],
	["掃除","そうじする","to clean, to sweep","5"],
	["","そうして/そして","And","5"],
	["","そこ","that place","5"],
	["","そちら","over there","5"],
	["","そっち","over there","5"],
	["外","そと","Outside","5"],
	["","その","That","5"],
	["","そば","near, beside","5"],
	["空","そら","Sky","5"],
	["","それ","that","5"],
	["","それから","after that","5"],
	["","それでは","in that situation","5"],
	["大学","だいがく","university","5"],
	["大使館","たいしかん","embassy","5"],
	["大丈夫","だいじょうぶ","all right","5"],
	["大好き","だいすき","to be very likeable","5"],
	["大切","たいせつ","important","5"],
	["台所","だいどころ","kitchen","5"],
	["","たいへん","very","5"],
	["","たいへん","difficult situation","5"],
	["高い","たかい","tall, expensive","5"],
	["","たくさん","many","5"],
	["","タクシー","taxi","5"],
	["出す","だす","to put out","5"],
	["立つ","たつ","to stand","5"],
	["","たて","length,height","5"],
	["建物","たてもの","building","5"],
	["楽しい","たのしい","enjoyable","5"],
	["頼む","たのむ","to ask","5"],
	["","たばこ","tobacco,cigarettes","5"],
	["","たぶん","probably","5"],
	["食べ物","たべもの","food","5"],
	["食べる","たべる","to eat","5"],
	["卵","たまご","egg","5"],
	["誰","だれ","who","5"],
	["誰","だれか","somebody","5"],
	["誕生日","たんじょうび","birthday","5"],
	["","だんだん","gradually","5"],
	["小さい","ちいさい","little","5"],
	["小さな","ちいさな","little","5"],
	["近い","ちかい","near","5"],
	["違う","ちがう","to differ","5"],
	["近く","ちかく","near","5"],
	["地下鉄","ちかてつ","underground train","5"],
	["地図","ちず","map","5"],
	["茶色","ちゃいろ","brown","5"],
	["","ちゃわん","rice bowl","5"],
	["","ちょうど","exactly","5"],
	["","ちょっと","somewhat","5"],
	["一日","ついたち","first of month","5"],
	["使う","つかう","to use","5"],
	["疲れる","つかれる","to get tired","5"],
	["次","つぎ","next","5"],
	["着く","つく","to arrive at","5"],
	["机","つくえ","desk","5"],
	["作る","つくる","to make","5"],
	["","つける","to turn on","5"],
	["勤める","つとめる","to work for someone","5"],
	["","つまらない","boring","5"],
	["冷たい","つめたい","cold to the touch","5"],
	["強い","つよい","powerful","5"],
	["手","て","hand","5"],
	["","テープ","tape","5"],
	["","テーブル","table","5"],
	["","テープレコーダー","tape recorder","5"],
	["出かける","でかける","to go out","5"],
	["手紙","てがみ","letter","5"],
	["","できる","to be able to","5"],
	["出口","でぐち","exit","5"],
	["","テスト","test","5"],
	["","では","with that...","5"],
	["","デパート","department store","5"],
	["","でも","but","5"],
	["出る","でる","to appear,to leave","5"],
	["","テレビ","television","5"],
	["天気","てんき","weather","5"],
	["電気","でんき","electricity,electric light","5"],
	["電車","でんしゃ","electric train","5"],
	["電話","でんわ","telephone","5"],
	["戸","と","Japanese style door","5"],
	["","ドア","Western style door","5"],
	["","トイレ","toilet","5"],
	["","どう","how,in what way","5"],
	["","どうして","for what reason","5"],
	["","どうぞ","please","5"],
	["動物","どうぶつ","animal","5"],
	["","どうも","thanks","5"],
	["遠い","とおい","far","5"],
	["十日","とおか","ten days,the tenth day","5"],
	["時々","ときどき","sometimes","5"],
	["時計","とけい","watch,clock","5"],
	["","どこ","where","5"],
	["所","ところ","place","5"],
	["年","とし","year","5"],
	["図書館","としょかん","library","5"],
	["","どちら","which of two","5"],
	["","どっち","which","5"],
	["","とても","very","5"],
	["","どなた","who","5"],
	["隣","となり","next door to","5"],
	["","どの","which","5"],
	["飛ぶ","とぶ","to fly,to hop","5"],
	["止まる","とまる","to come to a halt","5"],
	["友達","ともだち","friend","5"],
	["土曜日","どようび","Saturday","5"],
	["鳥","とり","bird","5"],
	["とり肉","とりにく","chicken meat","5"],
	["取る","とる","to take something","5"],
	["撮る","とる","to take a photo or record a film","5"],
	["","どれ","which (of three or more)","5"],
	["","ナイフ","knife","5"],
	["中","なか","middle","5"],
	["長い","ながい","long","5"],
	["鳴く","なく","animal noise. to chirp, roar or croak etc.","5"],
	["無くす","なくす","to lose something","5"],
	["","なぜ","why","5"],
	["夏","なつ","summer","5"],
	["夏休み","なつやすみ","summer holiday","5"],
	["","など","et cetera","5"],
	["七つ","ななつ","seven","5"],
	["七日","なのか","seven days,the seventh day","5"],
	["名前","なまえ","name","5"],
	["習う","ならう","to learn","5"],
	["並ぶ","ならぶ","to line up,to stand in a line","5"],
	["並べる","ならべる","to line up,to set up","5"],
	["","なる","to become","5"],
	["何","なん/なに","what","5"],
	["二","に","two","5"],
	["賑やか","にぎやか","bustling,busy","5"],
	["肉","にく","meat","5"],
	["西","にし","west","5"],
	["日曜日","にちようび","Sunday","5"],
	["荷物","にもつ","luggage","5"],
	["","ニュース","news","5"],
	["庭","にわ","garden","5"],
	["脱ぐ","ぬぐ","to take off clothes","5"],
	["温い","ぬるい","luke warm","5"],
	["","ネクタイ","tie,necktie","5"],
	["猫","ねこ","cat","5"],
	["寝る","ねる","to go to bed,to sleep","5"],
	["","ノート","notebook,exercise book","5"],
	["登る","のぼる","to climb","5"],
	["飲み物","のみもの","a drink","5"],
	["飲む","のむ","to drink","5"],
	["乗る","のる","to get on,to ride","5"],
	["歯","は","tooth","5"],
	["","パーティー","party","5"],
	["","はい","yes","5"],
	["灰皿","はいざら","ashtray","5"],
	["入る","はいる","to enter,to contain","5"],
	["葉書","はがき","postcard","5"],
	["","はく","to wear,to put on trousers","5"],
	["箱","はこ","box","5"],
	["橋","はし","bridge","5"],
	["","はし","chopsticks","5"],
	["始まる","はじまる","to begin","5"],
	["初め/始め","はじめ","beginning","5"],
	["初めて","はじめて","for the first time","5"],
	["走る","はしる","to run","5"],
	["","バス","bus","5"],
	["","バター","butter","5"],
	["二十歳","はたち","20 years old,20th year","5"],
	["働く","はたらく","to work","5"],
	["八","はち","eight","5"],
	["二十日","はつか","twenty days,twentieth","5"],
	["花","はな","flower","5"],
	["鼻","はな","nose","5"],
	["話","はなし","talk,story","5"],
	["話す","はなす","to speak","5"],
	["早い","はやい","early","5"],
	["速い","はやい","quick","5"],
	["春","はる","spring","5"],
	["貼る","はる","to stick","5"],
	["晴れ","はれ","clear weather","5"],
	["晴れる","はれる","to be sunny","5"],
	["半","はん","half","5"],
	["晩","ばん","evening","5"],
	["","パン","bread","5"],
	["","ハンカチ","handkerchief","5"],
	["番号","ばんごう","number","5"],
	["晩御飯","ばんごはん","evening meal","5"],
	["半分","はんぶん","half minute","5"],
	["東","ひがし","east","5"],
	["引く","ひく","to pull","5"],
	["弾く","ひく","to play an instrument with strings, including piano","5"],
	["低い","ひくい","short,low","5"],
	["飛行機","ひこうき","aeroplane","5"],
	["左","ひだり","left hand side","5"],
	["人","ひと","person","5"],
	["一つ","ひとつ","one","5"],
	["一月","ひとつき","one month","5"],
	["一人","ひとり","one person","5"],
	["暇","ひま","free time","5"],
	["百","ひゃく","hundred","5"],
	["病院","びょういん","hospital","5"],
	["病気","びょうき","illness","5"],
	["昼","ひる","noon, daytime","5"],
	["昼御飯","ひるごはん","midday meal","5"],
	["広い","ひろい","spacious,wide","5"],
	["","プール","swimming pool","5"],
	["","フィルム","roll of film","5"],
	["封筒","ふうとう","envelope","5"],
	["","フォーク","fork","5"],
	["吹く","ふく","to blow","5"],
	["服","ふく","clothes","5"],
	["二つ","ふたつ","two","5"],
	["豚肉","ぶたにく","pork","5"],
	["二人","ふたり","two people","5"],
	["二日","ふつか","two days, second day of the month","5"],
	["太い","ふとい","fat","5"],
	["冬","ふゆ","winter","5"],
	["降る","ふる","to fall, e.g. rain or snow","5"],
	["古い","ふるい","old (not used for people)","5"],
	["","ふろ","bath","5"],
	["文章","ぶんしょう","sentence,text","5"],
	["","ページ","page","5"],
	["下手","へた","unskillful","5"],
	["","ベッド","bed","5"],
	["","ペット","pet","5"],
	["部屋","へや","room","5"],
	["辺","へん","area","5"],
	["","ペン","pen","5"],
	["勉強","べんきょうする","to study","5"],
	["便利","べんり","useful, convenient","5"],
	["","ボールペン","ball-point pen","5"],
	["帽子","ぼうし","hat","5"],
	["","ほか","other, the rest","5"],
	["","ポケット","pocket","5"],
	["欲しい","ほしい","want","5"],
	["","ポスト","post","5"],
	["細い","ほそい","thin","5"],
	["","ボタン","button","5"],
	["","ホテル","hotel","5"],
	["本","ほん","book","5"],
	["本棚","ほんだな","bookshelves","5"],
	["","ほんとう","truth","5"],
	["毎朝","まいあさ","every morning","5"],
	["毎月","まいげつ/まいつき","every month","5"],
	["毎週","まいしゅう","every week","5"],
	["毎日","まいにち","every day","5"],
	["毎年","まいねん/まいとし","every year","5"],
	["毎晩","まいばん","every night","5"],
	["前","まえ","before","5"],
	["曲る","まがる","to turn,to bend","5"],
	["","まずい","unpleasant","5"],
	["","また","again,and","5"],
	["","まだ","yet,still","5"],
	["町","まち","town,city","5"],
	["待つ","まつ","to wait","5"],
	["","まっすぐ","straight ahead,direct","5"],
	["","マッチ","match","5"],
	["窓","まど","window","5"],
	["丸い/円い","まるい","round,circular","5"],
	["万","まん","ten thousand","5"],
	["万年筆","まんねんひつ","fountain pen","5"],
	["磨く","みがく","to brush teeth, to polish","5"],
	["右","みぎ","right side","5"],
	["短い","みじかい","short","5"],
	["水","みず","water","5"],
	["店","みせ","shop","5"],
	["見せる","みせる","to show","5"],
	["道","みち","street","5"],
	["三日","みっか","three days, third day of the month","5"],
	["三つ","みっつ","three","5"],
	["緑","みどり","green","5"],
	["皆さん","みなさん","everyone","5"],
	["南","みなみ","south","5"],
	["耳","みみ","ear","5"],
	["見る 観る","みる","to see, to watch","5"],
	["","みんな","everyone","5"],
	["六日","むいか","six days, sixth day of the month","5"],
	["向こう","むこう","over there","5"],
	["難しい","むずかしい","difficult","5"],
	["六つ","むっつ","six","5"],
	["村","むら","village","5"],
	["目","め","eye","5"],
	["","メートル","metre","5"],
	["眼鏡","めがね","glasses","5"],
	["","もう","already","5"],
	["もう一度","もういちど","again","5"],
	["木曜日","もくようび","Thursday","5"],
	["持つ","もつ","to hold","5"],
	["","もっと","more","5"],
	["物","もの","thing","5"],
	["門","もん","gate","5"],
	["問題","もんだい","problem","5"],
	["八百屋","やおや","greengrocer","5"],
	["野菜","やさい","vegetable","5"],
	["易しい","やさしい","easy, simple","5"],
	["安い","やすい","cheap","5"],
	["休み","やすみ","rest,holiday","5"],
	["休む","やすむ","to rest","5"],
	["八つ","やっつ","eight","5"],
	["山","やま","mountain","5"],
	["","やる","to do","5"],
	["夕方","ゆうがた","evening","5"],
	["夕飯","ゆうはん","dinner","5"],
	["郵便局","ゆうびんきょく","post office","5"],
	["昨夜","ゆうべ","last night","5"],
	["有名","ゆうめい","famous","5"],
	["雪","ゆき","snow","5"],
	["行く","ゆく","to go","5"],
	["","ゆっくりと","slowly","5"],
	["八日","ようか","eight days, eighth day of the month","5"],
	["洋服","ようふく","western-style clothes","5"],
	["","よく","often, well","5"],
	["横","よこ","beside,side,width","5"],
	["四日","よっか","four days, fouth day of the month","5"],
	["四つ","よっつ","four","5"],
	["呼ぶ","よぶ","to call out,to invite","5"],
	["読む","よむ","to read","5"],
	["","より、ほう","Used for comparison.","5"],
	["夜","よる","evening,night","5"],
	["弱い","よわい","weak","5"],
	["来月","らいげつ","next month","5"],
	["来週","らいしゅう","next week","5"],
	["来年","らいねん","next year","5"],
	["","ラジオ","radio","5"],
	["","ラジカセ / ラジオカセット","radio cassette player","5"],
	["","りっぱ","splendid","5"],
	["留学生","りゅうがくせい","overseas student","5"],
	["両親","りょうしん","both parents","5"],
	["料理","りょうり","cuisine","5"],
	["旅行","りょこう","travel","5"],
	["零","れい","zero","5"],
	["冷蔵庫","れいぞうこ","refrigerator","5"],
	["","レコード","record","5"],
	["","レストラン","restaurant","5"],
	["練習","れんしゅうする","to practice","5"],
	["廊下","ろうか","corridor","5"],
	["六","ろく","six","5"],
	["","ワイシャツ","business shirt","5"],
	["若い","わかい","young","5"],
	["分かる","わかる","to be understood","5"],
	["忘れる","わすれる","to forget","5"],
	["私","わたくし","(humble) I,myself","5"],
	["私","わたし","I,myself","5"],
	["渡す","わたす","to hand over","5"],
	["渡る","わたる","to go across","5"],
	["悪い","わるい","bad","5"]
]

Vocabulary.create!(
  n5_vocab.map do |record|
    kanji, hiragana, meaning, level = record

    {
      :kanji => kanji,
      :hiragana => hiragana,
      :meaning => meaning,
      :level => level,
    }
  end
)
