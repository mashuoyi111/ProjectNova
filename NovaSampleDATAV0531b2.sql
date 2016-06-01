-- Sample Data Insertion(without database reseting)
-- 

use nova;

--
-- Language Table (Language Code Refers to ISO 639-3 Code
-- 					https://en.wikipedia.org/wiki/List_of_ISO_639-2_codes)
insert into Languages values( 'eng','English', 'http://localhost/eng/');
insert into Languages values( 'jpn','日本語', 'http://localhost/jpn/');
insert into Languages values( 'zho','中文', 'http://localhost/zho/');

-- Countries Table (Country Code Refers to ISO ALPHA-3 Code
-- 					http://www.nationsonline.org/oneworld/country_code_list.htm)
insert into Countries values( 'CAN','eng');
insert into Countries values( 'JAN','jpn');
insert into Countries values( 'CHN','zho');
insert into Countries values( 'USA','eng');
insert into Countries values( 'GBR','eng');

-- CountryDetails Table
-- 
insert into CountryDetails values( 'CAN','eng', 'Canada');
insert into CountryDetails values( 'CAN','jpn', 'カナダ');
insert into CountryDetails values( 'CAN','zho', '加拿大');

insert into CountryDetails values( 'JAN','eng', 'Japan');
insert into CountryDetails values( 'JAN','jpn', '日本');
insert into CountryDetails values( 'JAN','zho', '日本');

insert into CountryDetails values( 'CHN','eng', 'China');
insert into CountryDetails values( 'CHN','jpn', '中国');
insert into CountryDetails values( 'CHN','zho', '中国');

insert into CountryDetails values( 'USA','eng', 'United States');
insert into CountryDetails values( 'USA','jpn', 'アメリカ合衆国');
insert into CountryDetails values( 'USA','zho', '美国');

insert into CountryDetails values( 'GBR','eng', 'United Kingdom');
insert into CountryDetails values( 'GBR','jpn', 'イギリス');
insert into CountryDetails values( 'GBR','zho', '英国');

-- Authors Table
-- 
insert into Authors values( 'Nagatsuki_Tappei','JAN');
insert into Authors values( 'Liu_Cixin','CHN');

-- AuthorDetails Table
-- 
insert into AuthorDetails values( 'Nagatsuki_Tappei','eng', 'Tappei Nagatsuki');
insert into AuthorDetails values( 'Nagatsuki_Tappei','jpn', '鼠色猫/長月達平');
insert into AuthorDetails values( 'Nagatsuki_Tappei','zho', '长月达平');

insert into AuthorDetails values( 'Liu_Cixin','eng', 'Cixin Liu');
insert into AuthorDetails values( 'Liu_Cixin','jpn', '劉慈欣');
insert into AuthorDetails values( 'Liu_Cixin','zho', '刘慈欣');

-- Genres Table
-- 
insert into Genres values( 'SF');
insert into Genres values( 'Comedy');
insert into Genres values( 'Romance');
insert into Genres values( 'Mystery');
insert into Genres values( 'Horror');
insert into Genres values( 'Tragedy');
insert into Genres values( 'History');
insert into Genres values( 'Fantasy');

-- GenreDetails Table
-- 
insert into GenreDetails values( 'SF', 'eng', 'Science fiction', 'https://en.wikipedia.org/wiki/Science_fiction');
insert into GenreDetails values( 'SF', 'jpn', 'サイエンス フィクション', 'https://ja.wikipedia.org/wiki/%E3%82%B5%E3%82%A4%E3%82%A8%E3%83%B3%E3%82%B9%E3%83%BB%E3%83%95%E3%82%A3%E3%82%AF%E3%82%B7%E3%83%A7%E3%83%B3');
insert into GenreDetails values( 'SF', 'zho', '科幻', 'https://zh.wikipedia.org/wiki/%E7%A7%91%E5%AD%B8%E5%B9%BB%E6%83%B3');

insert into GenreDetails values( 'Fantasy', 'eng', 'Fantasy', 'https://en.wikipedia.org/wiki/Fantasy');
insert into GenreDetails values( 'Fantasy', 'jpn', 'ファンタジー', 'https://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A1%E3%83%B3%E3%82%BF%E3%82%B8%E3%83%BC');
insert into GenreDetails values( 'Fantasy', 'zho', '奇幻', 'https://zh.wikipedia.org/wiki/%E5%A5%87%E5%B9%BB%E4%BD%9C%E5%93%81');

insert into GenreDetails values( 'Comedy', 'eng', 'Comedy', 'https://en.wikipedia.org/wiki/Comedy');
insert into GenreDetails values( 'Romance', 'eng', 'Romance', 'https://en.wikipedia.org/wiki/Romance_novel');
insert into GenreDetails values( 'Mystery', 'eng', 'Mystery', 'https://en.wikipedia.org/wiki/Mystery_fiction');
insert into GenreDetails values( 'Horror', 'eng', 'Horror', 'https://en.wikipedia.org/wiki/Horror_fiction');
insert into GenreDetails values( 'Tragedy', 'eng', 'Tragedy', 'https://en.wikipedia.org/wiki/Tragedy');
insert into GenreDetails values( 'History', 'eng', 'History', 'https://en.wikipedia.org/wiki/Historical_fiction');

-- Books Table
-- 
insert into Books values( 'Re_Zero_Novels','Nagatsuki_Tappei', 'Fantasy', DATE('2012-04-20 00:00:00'), null, null);
insert into Books values( 'The_Three_Body_Novels','Liu_Cixin', 'SF', DATE('2006-05-01 00:00:00'), null, null);

-- BookDetails Table
-- 
insert into BookDetails values( 'Re_Zero_Novels','jpn', 'Ｒｅ：ゼロから始める異世界生活', DATE('2012-04-20 00:00:00'), 4768996, CURRENT_DATE());
insert into BookDetails values( 'Re_Zero_Novels','zho', 'Re:从零开始异世界生活', DATE('2015-05-05 00:00:00'), null, CURRENT_DATE());
insert into BookDetails values( 'Re_Zero_Novels','eng', 'Re:Zero kara Hajimeru Isekai Seikatsu', DATE('2016-07-19 00:00:00'), null, CURRENT_DATE());

insert into BookDetails values( 'The_Three_Body_Novels','jpn', '三体', 0, null, CURRENT_DATE());
insert into BookDetails values( 'The_Three_Body_Novels','zho', '三体', DATE('2008-01-01 00:00:00'), null, CURRENT_DATE());
insert into BookDetails values( 'The_Three_Body_Novels','eng', 'The Three-Body Problem', DATE('2014-11-11 00:00:00'), null, CURRENT_DATE());

-- Links Table
-- 
insert into Links values('http://ncode.syosetu.com/n2267be/', 'ＷＥＢ版を読む','Re_Zero_Novels','jpn', crc32('http://ncode.syosetu.com/n2267be/'));
insert into Links values('http://www.amazon.co.jp/dp/4040662083', 'AMAZONで購入','Re_Zero_Novels','jpn', crc32('http://www.amazon.co.jp/dp/4040662083'));
insert into Links values('http://xs.dmzj.com/1873/index.shtml', '全文阅读-动漫之家','Re_Zero_Novels','zho', crc32('http://xs.dmzj.com/1873/index.shtml'));
insert into Links values('http://re-zero.com/', '公式サイト','Re_Zero_Novels','jpn', crc32('http://re-zero.com/'));

insert into Links values('http://www.shizongzui.cc/santi/', '全文阅读-网络','The_Three_Body_Novels','zho', crc32('http://www.shizongzui.cc/santi/'));
insert into Links values('http://www.tor.com/2014/10/28/read-the-three-body-problem/', 'Official Free Samples','The_Three_Body_Novels','eng', crc32('http://www.tor.com/2014/10/28/read-the-three-body-problem/'));
insert into Links values('https://www.amazon.ca/dp/0765377063', 'Purchase on Amazon','The_Three_Body_Novels','eng', crc32('https://www.amazon.ca/dp/0765377063'));
insert into Links values('http://www.worldcat.org/title/three-body-problem/oclc/868276526', 'Find in Libraries','The_Three_Body_Novels','eng', crc32('http://www.worldcat.org/title/three-body-problem/oclc/868276526'));

-- Members Table
-- 
insert into Members values( 'adam', sha1('awsome123'), 'zho');
insert into Members values( 'bob', sha1('greatpassword'), 'eng');
insert into Members values( 'chashaobao', sha1('chashaobao'), 'jpn');
insert into Members values( 'guest', sha1('guest'), null);

-- HSBooks Table
-- 
insert into HSBooks values( 'adam', 'Re_Zero_Novels', DATE_SUB(NOW(),INTERVAL 5 DAY));
insert into HSBooks values( 'adam', 'The_Three_Body_Novels', DATE_SUB(NOW(),INTERVAL 3 DAY));
insert into HSBooks values( 'bob', 'Re_Zero_Novels', DATE_SUB(NOW(),INTERVAL 1 DAY));
insert into HSBooks values( 'chashaobao', 'The_Three_Body_Novels', NOW());
insert into HSBooks values( 'chashaobao', 'Re_Zero_Novels', DATE_SUB(NOW(),INTERVAL 2 DAY));

-- HSAuthors Table
-- 
insert into HSAuthors values( 'adam', 'Nagatsuki_Tappei', DATE_SUB(NOW(),INTERVAL 5 DAY));
insert into HSAuthors values( 'adam', 'Liu_Cixin', DATE_SUB(NOW(),INTERVAL 3 DAY));
insert into HSAuthors values( 'bob', 'Nagatsuki_Tappei', DATE_SUB(NOW(),INTERVAL 1 DAY));
insert into HSAuthors values( 'chashaobao', 'Nagatsuki_Tappei', NOW());
insert into HSAuthors values( 'chashaobao', 'Liu_Cixin', DATE_SUB(NOW(),INTERVAL 2 DAY));

-- FAVBooks Table
-- 
insert into FAVBooks values( 'adam', 'Re_Zero_Novels', DATE(DATE_SUB(NOW(),INTERVAL 5 DAY)));
insert into FAVBooks values( 'adam', 'The_Three_Body_Novels', DATE(DATE_SUB(NOW(),INTERVAL 3 DAY)));
insert into FAVBooks values( 'bob', 'Re_Zero_Novels', DATE(DATE_SUB(NOW(),INTERVAL 1 DAY)));
insert into FAVBooks values( 'chashaobao', 'The_Three_Body_Novels', DATE(NOW()));
insert into FAVBooks values( 'chashaobao', 'Re_Zero_Novels', DATE(DATE_SUB(NOW(),INTERVAL 2 DAY)));

-- FAVAuthors Table
-- 
insert into FAVAuthors values( 'adam', 'Nagatsuki_Tappei', DATE(DATE_SUB(NOW(),INTERVAL 5 DAY)));
insert into FAVAuthors values( 'adam', 'Liu_Cixin', DATE(DATE_SUB(NOW(),INTERVAL 3 DAY)));
insert into FAVAuthors values( 'bob', 'Nagatsuki_Tappei', DATE(DATE_SUB(NOW(),INTERVAL 1 DAY)));
insert into FAVAuthors values( 'chashaobao', 'Nagatsuki_Tappei', DATE(NOW()));
insert into FAVAuthors values( 'chashaobao', 'Liu_Cixin', DATE(DATE_SUB(NOW(),INTERVAL 2 DAY)));

-- CMTBooks Table
-- 
insert into CMTBooks values( DATE_SUB(NOW(),INTERVAL 5 DAY), 'Re_Zero_Novels','this is a short commnet 1 for a book 1');
insert into CMTBooks values( DATE_SUB(NOW(),INTERVAL 3 DAY), 'The_Three_Body_Novels', 'this is a short commnet 1 for a book 2');
insert into CMTBooks values( DATE_SUB(NOW(),INTERVAL 1 DAY), 'Re_Zero_Novels', 'this is a short commnet 1 for a book 3');
insert into CMTBooks values( NOW(), 'The_Three_Body_Novels', 'this is a short commnet 1 for a book 4');
insert into CMTBooks values( DATE_SUB(NOW(),INTERVAL 2 DAY), 'Re_Zero_Novels', 'this is a short commnet 1 for a book 5');

-- CMTAuthors Table
-- 
insert into CMTAuthors values( DATE_SUB(NOW(),INTERVAL 5 DAY), 'Nagatsuki_Tappei', 'this is a short commnet 1 for an author 1');
insert into CMTAuthors values( DATE_SUB(NOW(),INTERVAL 3 DAY), 'Liu_Cixin', 'this is a short commnet 1 for an author 1');
insert into CMTAuthors values( DATE_SUB(NOW(),INTERVAL 1 DAY), 'Nagatsuki_Tappei', 'this is a short commnet 1 for an author 1');
insert into CMTAuthors values( NOW(), 'Nagatsuki_Tappei', 'this is a short commnet 1 for an author 1');
insert into CMTAuthors values( DATE_SUB(NOW(),INTERVAL 2 DAY), 'Liu_Cixin', 'this is a short commnet 1 for an author 1');
