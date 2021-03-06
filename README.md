香港郵政局資料接口 - Hong Kong Post Office API
============================================

使用方法 Usage
-----------------
TODO

說明 Doucmentation
-----------------

##### 本地郵件 Local Mail
**GET /api/v1/local**

##### Parameters

`weight` - *Interger* | *Required*

eg: 20kg is "weight=2000"

Local mail: must be below 30kg

*****

`mail` - *String* | *Required*

| Name                          | Parameters      |
|-------------------------------|-----------------|
| Letter or Postcard 信件或明信片 | letter_postcard |
| Parcel 包裹                    | parcel          |

*****

##### 國際郵件 International Mail
**GET /api/v1/oversea_rate**

##### Parameters

`weight` - *Interger* | *Required*

eg: 20kg is "weight=2000"

Normal mail: must be below 20kg, Speedpost: must be below 30kg

*****

`mail` - *String* | *Required*

| Name                          | Parameters      |
|-------------------------------|-----------------|
| Letter or Postcard 信件或明信片  | letter_postcard |
| Printed Paper 印刷品（雜誌及書籍）| printed_papers  |
| Small Packet 小郵件            | small_packet    |
| Parcel 包裹                    | parcel          |

*****

`dest` - *Interger* | *Required*

| ID  | English | Traditional Chinese | Simplified Chinese |
|-----|---------|---------------------|--------------------|
|   1 | Afghanistan | 阿富汗 | 阿富汗 |
|   2 | Albania | 阿爾巴尼亞 | 阿尔巴尼亚 |
|   3 | Algeria | 阿爾及利亞 | 阿尔及利亚 |
|   4 | Andorra | 安道爾 | 安道尔 |
|   5 | Angola | 安哥拉 | 安哥拉 |
|   6 | Anguilla | 安圭拉島 | 安圭拉岛 |
|   7 | Antigua & Barbuda | 安提瓜及巴布達 | 安提瓜及巴布达 |
|   8 | Argentina | 阿根廷 | 阿根廷 |
|   9 | Armenia | 亞美尼亞 | 亚美尼亚 |
|  10 | Aruba | 阿魯巴 | 阿鲁巴 |
|  11 | Ascension | 阿森松 | 阿森松 |
|  12 | Australia (Western Australia) | 澳大利亞 (西澳大利亞) | 澳大利亚 (西澳大利亚) |
|  13 | Australia (All other states) | 澳大利亞 (其他省份) | 澳大利亚 (其它省份) |
|  14 | Austria | 奧地利 | 奥地利 |
|  15 | Azerbaijan | 阿塞拜彊 | 亚塞拜疆 |
|  16 | Azores | 亞速爾 | 亚速尔 |
|  17 | Bahamas | 巴哈馬 | 巴哈马 |
|  18 | Bahrain | 巴林 | 巴林 |
|  19 | Baleares Islands | 巴利阿里群島 | 巴利阿里群岛 |
|  20 | Bangladesh | 孟加拉 | 孟加拉国 |
|  21 | Barbados | 巴巴多斯 | 巴巴多斯 |
|  22 | Belarus | 白俄羅斯 | 白俄罗斯 |
|  23 | Belgium | 比利時 | 比利时 |
|  24 | Belize | 伯利茲 | 伯利兹 |
|  25 | Benin | 貝寧 | 贝宁 |
|  26 | Bermuda | 百慕達 | 百慕达 |
|  27 | Bhutan | 不丹 | 不丹 |
|  28 | Bolivia | 玻利維亞 | 玻利维亚 |
|  29 | Bosnia and Herzegovina | 波斯尼亞 - 黑塞哥維那 | 波斯尼亚 - 黑塞哥维那 |
|  30 | Botswana | 博茨瓦納 | 博茨瓦纳 |
|  31 | Brazil | 巴西 | 巴西 |
|  32 | British Indian Ocean Territory | 英屬印度洋地區 | 英属印度洋地区 |
|  33 | Brunei Darussalam | 文萊 | 文莱 |
|  34 | Bulgaria | 保加利亞 | 保加利亚 |
|  35 | Burkina Faso | 布基納法索 | 布基纳法索 |
|  36 | Burundi | 布隆迪 | 布隆迪 |
|  37 | Cambodia | 柬埔寨 | 柬埔寨 |
|  38 | Cameroon | 喀麥隆 | 喀麦隆 |
|  39 | Canada | 加拿大 | 加拿大 |
|  40 | Canary Islands | 加那利群島 | 加那利群岛 |
|  41 | Cape Verde | 佛得角群島 | 佛得角群岛 |
|  42 | Caroline Islands (Micronesia) | 加羅林群島 (密克羅尼西亞) | 加罗林群岛 (密克罗尼西亚) |
|  43 | Caroline Islands (Palau) | 加羅林群島(帕勞) | 加罗林群岛(帕劳) |
|  44 | Cayman Islands | 開曼群島 | 开曼群岛 |
|  45 | Central African Republic | 中非 | 中非 |
|  46 | Chad | 乍得 | 乍得 |
|  47 | Chile | 智利 | 智利 |
|  48 | China, Mainland (Beijing) | 中國內地 (北京) | 中国内地 (北京) |
|  49 | China, Mainland (Fuzhou) | 中國內地 (福州) | 中国内地 (福州) |
|  50 | China, Mainland (Guangdong Province) | 中國內地 (廣東省) | 中国内地 (广东省) |
|  51 | China, Mainland (Hangzhou) | 中國內地 (杭州) | 中国内地 (杭州) |
|  52 | China, Mainland (Kunming) | 中國內地 (昆明) | 中国内地 (昆明) |
|  53 | China, Mainland (Shanghai) | 中國內地 (上海) | 中国内地 (上海) |
|  54 | China, Mainland (Other area) | 中國內地 (其他地區) | 中国内地 (其它地区) |
|  55 | China, Mainland (Tianjin) | 中國內地 (天津) | 中国内地 (天津) |
|  56 | China, Mainland (Wenzhou) | 中國內地 (溫州) | 中国内地 (温州) |
|  57 | China, Mainland (Xiamen) | 中國內地 (廈門) | 中国内地 (厦门) |
|  58 | Christmas Islands | 聖誕島 | 圣诞岛 |
|  59 | Cocos (Keeling) Islands | 科科斯群島 | 科科斯群岛 |
|  60 | Colombia | 哥倫比亞 | 哥伦比亚 |
|  61 | Comoros | 科摩羅 | 科摩罗 |
|  62 | Congo (Dem. Rep. of) | 剛果民主共和國 | 刚果民主共和国 |
|  63 | Congo (Rep. of) | 剛果共和國 | 刚果共和国 |
|  64 | Corsica | 科西嘉島 | 科西嘉岛 |
|  65 | Costa Rica | 哥斯達黎加 | 哥斯达黎加 |
|  66 | Cote d'lvoire | 象牙海岸 | 科特迪瓦 |
|  67 | Croatia | 克羅地亞 | 克罗地亚 |
|  68 | Cuba (Guantanamo Bay) | 古巴 (關塔那摩灣) | 古巴 (关塔那摩湾) |
|  69 | Cuba (Other places) | 古巴 (其他地方) | 古巴 (其它地方) |
|  70 | Cyprus | 塞浦路斯 | 塞浦路斯 |
|  71 | Czech Republic | 捷克共和國 | 捷克共和国 |
|  72 | Denmark | 丹麥 | 丹麦 |
|  73 | Djibouti | 吉布提 | 吉布提 |
|  74 | Dominica | 多米尼加島 | 多米尼加岛 |
|  75 | Dominican Republic | 多米尼加共和國 | 多米尼加共和国 |
|  76 | East Timor | 東帝汶 | 东帝汶 |
|  77 | Ecuador | 厄瓜多爾 | 厄瓜多尔 |
|  78 | Egypt | 埃及 | 埃及 |
|  79 | El Salvador | 薩爾瓦多 | 萨尔瓦多 |
|  80 | Equatorial Guinea | 赤道幾內亞 | 赤道几内亚 |
|  81 | Eritrea | 厄立特里亞 | 厄立特里亚 |
|  82 | Estonia (Rep. of) | 愛沙尼亞 | 爱沙尼亚 |
|  83 | Ethiopia | 埃塞俄比亞 | 埃塞俄比亚 |
|  84 | Falkland Islands (inc. Dependencies) | 福克蘭群島 (包括屬地) | 福克兰群岛 (包括属地) |
|  85 | Faroe Islands | 法羅群島 | 法罗群岛 |
|  86 | Fiji | 斐濟群島 | 斐济群岛 |
|  87 | Finland | 芬蘭 | 芬兰 |
|  88 | France | 法國 | 法国 |
|  89 | French Guiana | 法屬圭亞那 | 法属圭亚那 |
|  90 | French Polynesia | 法屬波利尼西亞 | 法属波利尼西亚 |
|  91 | French West Indies (Guadeloupe) | 法屬西印度群島 (瓜德羅普島) | 法属西印度群岛 (瓜德罗普岛) |
|  92 | French West Indies (Martinique) | 法屬西印度群島 (馬提尼克島) | 法属西印度群岛 (马提尼克岛) |
|  93 | Gabon | 加蓬 | 加蓬 |
|  94 | Gambia | 岡比亞 | 冈比亚 |
|  95 | Gaza &amp; Khan Yunis | 加沙及汗尤尼斯 | 加沙及汗尤尼斯 |
|  96 | Georgia (Rep. of) | 格魯吉亞 | 格鲁吉亚 |
|  97 | Germany | 德國 | 德国 |
|  98 | Ghana | 加納 | 加纳 |
|  99 | Gibraltar | 直布羅陀 | 直布罗陀 |
| 100 | Greece | 希臘 | 希腊 |
| 101 | Greenland | 格陵蘭 | 格陵兰 |
| 102 | Grenada | 格林納達 | 格林纳达 |
| 103 | Guadeloupe | 瓜德羅普島 | 瓜德罗普岛 |
| 104 | Guam | 關島 | 关岛 |
| 105 | Guatemala | 危地馬拉 | 危地马拉 |
| 106 | Guinea (Rep. of) | 幾內亞 | 几内亚 |
| 107 | Guineea Bissau (Rep. of) | 幾內亞比紹 | 几内亚比绍 |
| 108 | Guyana | 圭亞那 | 圭亚那 |
| 109 | Haiti | 海地 | 海地 |
| 110 | Honduras (Rep. of) | 洪都拉斯 | 洪都拉斯 |
| 111 | Hungary | 匈牙利 | 匈牙利 |
| 112 | Iceland | 冰島 | 冰岛 |
| 113 | India (Mumbai) | 印度 (孟買) | 印度 (孟买) |
| 114 | India (All other places) | 印度 (其他地方) | 印度 (其它地方) |
| 115 | Indonesia | 印度尼西亞 | 印度尼西亚 |
| 116 | Iran | 伊朗 | 伊朗 |
| 117 | Iraq | 伊拉克 | 伊拉克 |
| 118 | Ireland | 愛爾蘭 | 爱尔兰 |
| 119 | Israel | 以色列 | 以色列 |
| 120 | Italy | 意大利 | 意大利 |
| 121 | Jamaica | 牙買加 | 牙买加 |
| 122 | Japan | 日本 | 日本 |
| 123 | Japan (Ryukyu Islands) | 日本 (琉球群島) | 日本 (琉球群岛) |
| 124 | Jordan | 約旦 | 约旦 |
| 125 | Kazakhstan | 哈薩克 | 哈萨克 |
| 126 | Kenya | 肯尼亞 | 肯尼亚 |
| 127 | Kiribati | 基里巴斯 | 基里巴斯 |
| 128 | Korea (North) | 北韓 | 北韩 |
| 129 | Korea (South) | 南韓 | 南韩 |
| 130 | Kuwait | 科威特 | 科威特 |
| 131 | Kyrgyzstan | 吉爾吉斯 | 吉尔吉斯 |
| 132 | Lao PDR | 老撾 | 老挝 |
| 133 | Latvia | 拉脫維亞 | 拉脱维亚 |
| 134 | Lebanon | 黎巴嫩 | 黎巴嫩 |
| 135 | Lesotho | 萊索托 | 莱索托 |
| 136 | Liberia | 利比里亞 | 利比里亚 |
| 137 | Libya | 利比亞 | 利比亚 |
| 138 | Liechtenstein | 列支敦士登 | 列支敦士登 |
| 139 | Lithuania (Rep. of) | 立陶宛 | 立陶宛 |
| 140 | Luxembourg | 盧森堡 | 卢森堡 |
| 141 | Macau | 澳門 | 澳门 |
| 142 | Macedonia | 馬其頓 | 马其顿 |
| 143 | Madagascar (Dem. Rep. of) | 馬達加斯加 | 马达加斯加 |
| 144 | Madeira | 馬德拉 | 马德拉 |
| 145 | Malawi | 馬拉維 | 马拉维 |
| 146 | Malaysia (Peninsular Malaysia) | 馬來西亞 (半島馬來西亞) | 马来西亚 (半岛马来西亚) |
| 147 | Malaysia (Sabah) | 馬來西亞 (沙巴) | 马来西亚 (沙巴) |
| 148 | Malaysia (Sarawak) | 馬來西亞 (沙撈越) | 马来西亚 (沙捞越) |
| 149 | Maldives (Rep. of) | 馬爾代夫 | 马尔代夫 |
| 150 | Mali | 馬里 | 马里 |
| 151 | Malta | 馬爾他 | 马耳他 |
| 152 | Mariana Islands | 馬里亞納群島 | 马里亚纳群岛 |
| 153 | Marshall Islands | 馬紹爾群島 | 马绍尔群岛 |
| 154 | Martinique | 馬提尼克島 | 马提尼克岛 |
| 155 | Mauritania | 毛里塔尼亞 | 毛里塔尼亚 |
| 156 | Mauritius | 毛里求斯 | 毛里求斯 |
| 157 | Mexico | 墨西哥 | 墨西哥 |
| 159 | Moldova (Rep. of) | 摩爾多瓦 | 摩尔多瓦 |
| 160 | Monaco | 摩納哥 | 摩纳哥 |
| 161 | Mongolia | 蒙古 | 蒙古 |
| 162 | Montenegro | 黑山(共和國) | 黑山(共和国) |
| 163 | Montserrat | 蒙特塞拉特 | 蒙特塞拉特 |
| 164 | Morocco | 摩洛哥 | 摩洛哥 |
| 165 | Mozambique | 莫桑比克 | 莫桑比克 |
| 166 | Myanmar (Union of) | 緬甸 | 缅甸 |
| 167 | Namibia | 納米比亞 | 纳米比亚 |
| 168 | Nauru Islands | 瑙魯 | 瑙鲁 |
| 169 | Nepal | 尼泊爾 | 尼泊尔 |
| 170 | Netherlands | 荷蘭 | 荷兰 |
| 171 | Netherlands Antilles and Aruba (Netherlands Antilles) | 荷屬安的列斯群島及阿魯巴島 (荷屬安的列斯群島) | 荷属安的列斯群岛及阿鲁巴岛 (荷属安的列斯群岛) |
| 172 | Netherlands Antilles and Aruba (Aruba) | 荷屬安的列斯群島及阿魯巴島 (阿魯巴島) | 荷属安的列斯群岛及阿鲁巴岛 (阿鲁巴岛) |
| 173 | New Caledonia | 新喀里多尼亞 | 新喀里多尼亚 |
| 174 | New Zealand | 新西蘭 | 新西兰 |
| 175 | New Zealand Islands Territories | 新西蘭屬土島嶼 | 新西兰属土岛屿 |
| 176 | Nicaragua | 尼加拉瓜 | 尼加拉瓜 |
| 177 | Niger Republic | 尼日爾 | 尼日尔 |
| 178 | Nigeria | 尼日利亞 | 尼日利亚 |
| 179 | Norfolk Island | 諾福克島 | 诺福克岛 |
| 180 | Norway | 挪威 | 挪威 |
| 181 | Oman, Sultanate of | 阿曼 | 阿曼 |
| 182 | Pakistan | 巴基斯坦 | 巴基斯坦 |
| 184 | Panama (Rep. of) | 巴拿馬 | 巴拿马 |
| 185 | Papua New Guinea | 巴布亞新幾內亞 | 巴布亚新几内亚 |
| 186 | Paraguay | 巴拉圭 | 巴拉圭 |
| 187 | Peru | 秘魯 | 秘鲁 |
| 188 | Philippines | 菲律賓 | 菲律宾 |
| 189 | Pitcairn Island | 皮特凱恩島 | 皮特凯恩岛 |
| 190 | Poland | 波蘭 | 波兰 |
| 191 | Portugal | 葡萄牙 | 葡萄牙 |
| 192 | Puerto Rico | 波多黎各 | 波多黎各 |
| 193 | Qatar (State of) | 卡塔爾 | 卡塔尔 |
| 194 | Reunion | 留尼汪島 | 留尼汪岛 |
| 195 | Romania | 羅馬尼亞 | 罗马尼亚 |
| 196 | Russia (Russian Federation) | 俄羅斯聯邦 | 俄罗斯联邦 |
| 197 | Rwanda | 盧旺達 | 卢旺达 |
| 198 | Samoa (USA Territory) | 薩摩亞 (美國屬土) | 萨摩亚 (美国属土) |
| 199 | San Marino | 聖馬力諾 | 圣马力诺 |
| 200 | Sao Tomé and Principe (Rep. of) | 聖多美和普林西比 | 圣多美和普林西比 |
| 201 | Saudi Arabia | 沙地阿拉伯 | 沙地阿拉伯 |
| 202 | Senegal | 塞內加爾 | 塞内加尔 |
| 203 | Serbia(Rep. of) | 塞爾維亞(共和國) | 塞尔维亚(共和国) |
| 204 | Seychelles | 塞舌爾 | 塞舌尔 |
| 205 | Sierra Leone | 塞拉利昂 | 塞拉利昂 |
| 206 | Singapore | 新加坡 | 新加坡 |
| 207 | Slovakia | 斯洛伐克 | 斯洛伐克 |
| 208 | Slovenia (Rep. of) | 斯洛文尼亞 | 斯洛文尼亚 |
| 209 | Solomon Islands | 所羅門群島 | 所罗门群岛 |
| 210 | Somalia Democratic Republic | 索馬里 | 索马里 |
| 211 | South Africa (Rep. of) | 南非 | 南非 |
| 212 | Spain | 西班牙 | 西班牙 |
| 213 | Spanish territorist of North Africa | 北非西班牙屬土 | 北非西班牙属土 |
| 214 | Spitzbergen | 斯匹次卑爾根群島 | 斯匹次卑尔根群岛 |
| 215 | Sri Lanka (Rep. of) | 斯里蘭卡 | 斯里兰卡 |
| 216 | St. Christopher (St. Kitts) and Nevis | 聖克里斯托佛島及尼維斯島 | 圣克里斯托佛岛及尼维斯岛 |
| 217 | St. Helena | 聖赫勒拿島 | 圣赫勒拿岛 |
| 219 | St. Lucia | 聖盧西亞 | 圣卢西亚 |
| 220 | St. Pierre and Miquelon | 聖皮埃爾島和密克隆島 | 圣皮埃尔岛和密克隆岛 |
| 221 | St. Vincent and the Grenadines | 聖文森特和格林納丁斯 | 圣文森特和格林纳丁斯 |
| 222 | Sudan | 蘇丹 | 苏丹 |
| 223 | Suriname (Rep. of) | 蘇里南 | 苏里南 |
| 224 | Swaziland | 斯威士蘭 | 斯威士兰 |
| 225 | Sweden | 瑞典 | 瑞典 |
| 226 | Switzerland | 瑞士 | 瑞士 |
| 227 | Syrian Arab Republic (Syria) | 敘利亞 | 叙利亚 |
| 228 | Taiwan | 台灣 | 台湾 |
| 229 | Tajikstan (Rep. of) | 塔吉克 | 塔吉克 |
| 230 | Tanzania | 坦桑尼亞 | 坦桑尼亚 |
| 231 | Thailand | 泰國 | 泰国 |
| 232 | Togo | 多哥 | 多哥 |
| 233 | Tonga | 湯加 | 汤加 |
| 234 | Tortola (British Virgin Islands) | 托爾托拉島 (英屬處女島) | 托尔托拉岛 (英属处女岛) |
| 235 | Trinidad and Tobago (Rep. of) | 千里達和多巴哥 | 千里达和多巴哥 |
| 236 | Tristan de Cunha | 特里斯坦 - 達庫尼亞島 | 特里斯坦 - 达库尼亚岛 |
| 237 | Tunisia | 突尼斯 | 突尼斯 |
| 238 | Turkey | 土耳其 | 土耳其 |
| 239 | Turkmenistan | 土庫曼 | 土库曼 |
| 240 | Turks and Caicos Islands | 特克斯和凱科斯群島 | 特克斯和凯科斯群岛 |
| 241 | Tuvalu | 圖瓦盧 | 图瓦卢 |
| 242 | Uganda | 烏干達 | 乌干达 |
| 243 | Ukraine | 烏克蘭 | 乌克兰 |
| 244 | United Arab Emirates | 阿拉伯聯合莤長國 | 阿拉伯联合莤长国 |
| 245 | United Kingdom | 英國 | 英国 |
| 246 | United States of America (Hawaii) | 美國 (夏威夷) | 美国 (夏威夷) |
| 247 | United States of America (New York) | 美國 (紐約) | 美国 (纽约) |
| 248 | United States of America (All other States) | 美國 (其他州) | 美国 (其它州) |
| 249 | Uruguay | 烏拉圭 | 乌拉圭 |
| 250 | Uzbekistan (Rep. of) | 烏茲別克 | 乌兹别克 |
| 251 | Vanuatu (The Rep. of) | 瓦努阿圖 | 瓦努阿图 |
| 252 | Vatican City State | 梵蒂岡 | 梵蒂冈 |
| 253 | Venezuela | 委內瑞拉 | 委内瑞拉 |
| 254 | Vietnam | 越南 | 越南 |
| 255 | Virgin Islands of the USA | 美屬處女群島 | 美属处女群岛 |
| 256 | Wake Island | 威克島 | 威克岛 |
| 257 | Wallis and Futuna Islands | 瓦利斯群島和富圖納群島 | 瓦利斯群岛和富图纳群岛 |
| 258 | Western Samoa | 西薩摩亞 | 西萨摩亚 |
| 259 | Yemen (Rep. of) (Places in the former Yemen Arab Rep.) | 也門 (屬前阿拉伯也門共和國的地方) | 也门 (属前阿拉伯也门共和国的地方) |
| 260 | Yemen (Rep. of) (All other places) | 也門 (其他地方) | 也门 (其它地方) |
| 261 | Zambia | 贊比亞 | 赞比亚 |
| 262 | Zimbabwe | 津巴布韋 | 津巴布韦 |

*******


TODO
----

- Postage rate 郵費
  - Bulk 大量
- Mail tracking 郵件追查
