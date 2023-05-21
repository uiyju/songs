-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 21 2023 г., 01:49
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `progect`
--

-- --------------------------------------------------------

--
-- Структура таблицы `authors`
--

CREATE TABLE `authors` (
  `author_id` int NOT NULL,
  `author_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `authors`
--

INSERT INTO `authors` (`author_id`, `author_name`) VALUES
(1, 'Nirvana'),
(2, 'Queen'),
(3, 'Placebo'),
(4, 'Muse'),
(5, 'Scorpions');

-- --------------------------------------------------------

--
-- Структура таблицы `favorites`
--

CREATE TABLE `favorites` (
  `fav_id` int NOT NULL,
  `user_id` int NOT NULL,
  `song_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `songs`
--

CREATE TABLE `songs` (
  `song_id` int NOT NULL,
  `title` varchar(30) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `author` varchar(30) NOT NULL,
  `text` text NOT NULL,
  `audio_file` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `author_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `songs`
--

INSERT INTO `songs` (`song_id`, `title`, `photo`, `author`, `text`, `audio_file`, `author_id`) VALUES
(1, 'Smells Like Teen Spirit', 'img\\smells_like_teen_spirit.jpg', 'Nirvana', 'Load up on guns and bring your friends\r\nIt′s fun to lose and to pretend\r\nShe′s over bored and self assured\r\nOh no, I know a dirty word\r\n\r\nHello, hello, hello, how low?\r\nHello, hello, hello, how low?\r\nHello, hello, hello, how low?\r\nHello, hello, hello...\r\n\r\n(chorus)\r\nWith the lights out it′s less dangerous\r\nHere we are now, entertain us\r\nI feel stupid and contagious\r\nHere we are now, entertain us\r\nA mulatto\r\nAn albino\r\nA mosquito\r\nMy Libido\r\nYay!\r\n\r\nI′m worse at what I do best\r\nAnd for this gift I feel blessed\r\nOur little group has always been\r\nAnd always will until the end\r\n\r\nHello, hello, hello, how low?\r\nHello, hello, hello, how low?\r\nHello, hello, hello, how low?\r\nHello, hello, hello...\r\n\r\n(chorus)\r\n\r\nAnd I forget just why I taste\r\nOh yeah, I guess it makes me smile\r\nI found it hard, it was hard to find\r\nOh well, whatever, nevermind\r\n\r\nhello, hello, hello, how low?\r\nHello, hello, hello, how low?\r\nHello, hello, hello, how low?\r\nHello, hello, hello...\r\n\r\n(chorus)\r\nWith the lights out it′s less dangerous\r\nHere we are now, entertain us\r\nI feel stupid and contagious\r\nHere we are now, entertain us\r\nA mulatto\r\nAn albino\r\nA mosquito\r\nMy Libido\r\nA denial... (x9)\r\n', 'songs\\Nirvana-Smells_Like_Teen_Spirit.mp3', 1),
(2, 'Still loving you', 'img\\still_loving_you.jpg', 'Scorpions', 'Time, it needs time\r\nTo win back your love again\r\nI will be there, i will be there\r\nLove, only love\r\nCan bring back your love someday\r\nI will be there, i will be there\r\n\r\nFight, need of fight\r\nTo win make your love again\r\nI will be there, i will be there\r\nLove, only love\r\nCan break down the wall someday\r\nI will be there, i will be there\r\n\r\nIf we′d go again\r\nAll the way from the start\r\nI would try to change\r\nThe things that killed our love\r\nYour pride has built a wall, so strong\r\nThat i can′t get through\r\nIs there really no chance\r\nTo start once again\r\nI′m loving you\r\nTry, baby try\r\nTo trust in my love again\r\nI will be there, i will be there\r\nLove, our love\r\nJust shouldn′t be thrown away\r\nI will be there, i will be there\r\n\r\nIf we′d go again\r\nAll the way from the start\r\nI would try to change\r\nThe things that killed our love\r\nYour pride has built a wall, so strong\r\nThat i can′t get through\r\nIs there really no chance\r\nTo start once again\r\nIf we′d go again\r\nAll the way from the start\r\nI would try to change\r\nThe things that killed our love\r\nYes, i′ve hurt your pride, and i know\r\nWhat you′ve been through\r\nYou should give me a chance\r\nThis can′t be the end\r\nI′m still loving you\r\nI′m still loving you, i need your love\r\nI′m still loving you\r\n', 'songs\\Scorpions-Still_Loving_You.mp3', 5),
(3, 'The Show Must Go On', 'img\\the_show_must_go_on.jpg', 'Queen', 'Empty spaces - what are we living for\r\nAbandoned places - I guess we know the score\r\nOn and on, does anybody know what we are looking for\r\n\r\nAnother hero, another mindless crime\r\nBehind the curtain, in the pantomime\r\nHold the line, does anybody want to take it anymore\r\n\r\nThe show must go on\r\nThe show must go on\r\nInside my heart is breaking\r\nMy make-up may be flaking\r\nBut my smile still stays on\r\n\r\nWhatever happens, I′ll leave it all to chance\r\nAnother heartache, another failed romance\r\nOn and on, does anybody know what we are living for\r\n\r\nI guess I′m learning, I must be warmer now\r\nI′ll soon be turning, round the corner now\r\nOutside the dawn is breaking\r\nBut inside in the dark I′m aching to be free\r\n\r\nThe show must go on\r\nThe show must go on\r\nInside my heart is breaking\r\nMy make-up may be flaking\r\nBut my smile still stays on\r\n\r\nMy soul is painted like the wings of butterflies\r\nFairytales of yesterday will grow but never die\r\nI can fly - my friends\r\n\r\nThe show must go on\r\nThe show must go on\r\nI′ll face it with a grin\r\nI′m never giving in\r\nOn - with the show -\r\n\r\nI′ll drop the bill, I′ll overkill\r\nI have to find the will to carry on\r\nOn with the -\r\nOn with the show -\r\nThe show must go on\r\n', 'songs\\Queen-The_Show_Must_Go_On.mp3', 2),
(4, 'Meds', 'img\\meds.webp', 'Placebo', 'I was alone, falling free,\r\ntrying my best not to forget,\r\nwhat happened to us, what happened to me,\r\nwhat happened as i let it slip.\r\n\r\nI was confused by the powers that be,\r\nforgetting names and faces,\r\nPassers by, were looking at me,\r\nas if they could erase it.\r\n\r\nBaby...did you forget to take your meds?\r\nBaby...did you forget to take your meds?\r\n\r\nI was alone, staring over the ledge,\r\nTrying my best not to forget,\r\nall manner of joy, all manner of glee,\r\nand our one heroic pledge.\r\n\r\nHow it mattered to us, how it mattered to me,\r\nand the consequences.\r\nI was confused, by the birds and the bees,\r\nforgetting if i meant it.\r\n\r\nBaby..did you forget to take your meds?\r\nBaby..did you forget to take your meds?\r\nBaby..did you forget to take your meds?\r\nBaby..did you forget to take your meds?\r\n\r\nAnd the sex and the drugs, and the complications.\r\nAnd the sex and the drugs, and the complications.\r\nAnd the sex and the drugs, and the complications.\r\nAnd the sex and the drugs, and the complications.\r\n\r\nBaby..did you forget to take you meds?\r\nBaby..did you forget to take you meds?\r\nBaby..did you forget to take you meds?\r\nBaby..did you forget to take you meds?\r\nBaby..did you forget to take you meds?\r\nBaby..did you forget to take you meds?\r\n\r\nI was alone, falling free, trying my best not to forget.\r\n', 'songs\\Placebo-Meds.mp3', 3),
(5, 'Starlight', 'img\\starlight.png', 'Muse', 'Far away\r\nThis ship is taking me far away\r\nFar away from the memories\r\nOf the people who care if I live or die\r\n\r\n[Verse 2]\r\nStarlight\r\nI will be chasing a starlight\r\nUntil the end of my life\r\nI don\'t know if it\'s worth it anymore\r\n\r\n[Refrain]\r\nHold you in my arms\r\nI just wanted to hold you in my arms\r\n\r\n[Verse 3]\r\nMy life\r\nYou electrify my life\r\nLet\'s conspire to ignite\r\nAll the souls that would die just to feel alive\r\n\r\n[Pre-Chorus]\r\nI\'ll never let you go\r\nIf you promise not to fade away\r\nNever fade away\r\n [Chorus]\r\nAnd our hopes and expectations\r\nBlack holes and revelations\r\nAnd our hopes and expectations\r\nBlack holes and revelations\r\n\r\n[Refrain]\r\nHold you in my arms\r\nI just wanted to hold you in my arms\r\n\r\n[Verse 1]\r\nFar away\r\nThis ship has taken me far away\r\nFar away from the memories\r\nOf the people who care if I live or die\r\n\r\n[Pre-Chorus]\r\nI\'ll never let you go\r\nIf you promise not to\r\nFade away\r\nNever fade away\r\n\r\n[Chorus]\r\nAnd our hopes and expectations\r\nBlack holes and revelations, yeah\r\nOur hopes and expectations\r\nBlack holes and revelations\r\n[Refrain]\r\nHold you in my arms\r\nI just wanted to hold you in my arms\r\nI just wanted to hold\r\n', 'songs\\Muse-Starlight.mp3', 4),
(6, 'Lithium', 'img\\Nirvana-Lithium.jpg', 'Nirvana', 'I′m so happy. Cause today I found my friends.\r\nThey′re in my head. I′m so ugly. But that′s ok.\r\n′Cause so are you. We′ve broke our mirrors.\r\nSunday morning. Is everyday for all I care.\r\nAnd I′m not scared. Light my candles.\r\nIn a daze cause I′ve found god.\r\n\r\n(Chorus)..\r\n\r\nI′m so lonely. And that′s ok.\r\nI shaved my head. And I′m not sad. And just maybe.\r\nI′m to blame for all I′ve heard. And I′m not sure.\r\nI′m so excited. I can′t wait to meet you there.\r\nAnd I don′t care. I′m so horny. But that′s ok. My will is\r\ngood.\r\n\r\n(Chorus)\r\nI like it. I′m not gonna crack.\r\nI miss you. I′m not gonna crack. I love you.\r\nI′m not gonna crack. I kill you. I′m not gonna crack. (x2)\r\n\r\nI′m so happy. Cause today I found my friends.\r\nThey′re in my head. I′m so ugly. But that′s ok.\r\n′Cause so are you. We′ve broke our mirrors.\r\nSunday morning. Is everyday for all I care.\r\nAnd I′m not scared. Light my candlrs.\r\nIn a daze cause I′ve found god.\r\n\r\n(Chorus)\r\nI like it. I′m not gonna crack.\r\nI miss you. I′m not gonna crack. I love you.\r\nI′m not gonna crack. I kill you. I′m not gonna crack. (x2)\r\n', 'songs\\Nirvana-Lithium.mp3', 1),
(7, 'Humanity', 'img\\Humanity.jpg', 'Scorpions', 'Humanity\r\nAuf wiedersehen\r\nIt′s time to say goodbye\r\nThe party′s over\r\nAs the laughter dies\r\nAn angel cries\r\n\r\nHumanity\r\nIt′s au revoir to your insanity\r\nYou sold your soul to feed your vanity\r\nYour fantasies and lies\r\n\r\nYou′re a drop in the rain\r\nJust a number not a name\r\nAnd you don′t see it\r\nYou don′t believe it\r\nAt the end of the day\r\nYou′re a needle in the hay\r\nYou signed and sealed it\r\nAnd now you gotta deal with it\r\nHumanity\r\nHumanity\r\nGoodbye\r\nGoodbye\r\n\r\nBe on your way\r\nAdios amigo there′s a price to pay\r\nFor all the egotistic games you played\r\nThe world you made\r\nIs gone\r\n\r\nYou′re a drop in the rain\r\nJust a number not a name\r\nAnd you don′t see it\r\nYou don′t believe it\r\nAt the end of the day\r\nYou′re a needle in the hay\r\nYou signed and sealed it\r\nAnd now you gotta deal with it\r\nHumanity\r\nHumanity\r\nGoodbye\r\nGoodbye\r\n\r\nRun and hide there′s fire in the sky\r\nStay inside\r\nThe water′s gonna rise and pull you under\r\nIn your eyes I′m staring at the end of time\r\nNothing can change us\r\nNo one can save us from ourselves\r\n\r\nYou′re a drop in the rain\r\nJust a number not a name\r\nAnd you don′t see it\r\nYou don′t believe it\r\nAt the end of the day\r\nYou′re a needle in the hay\r\nYou signed and sealed it\r\nNow you gotta deal with it\r\nHumanity\r\nHumanity\r\nHumanity\r\nGoodbye\r\nGoodbye\r\nGoodbye\r\nGoodbye\r\n', 'songs\\Scorpions-Humanity.mp3', 5),
(8, 'Every You Every Me', 'img\\every_me_every_you.jpg', 'Placebo', 'Sucker love is heaven sent\r\nYou pucker up, our passion\'s spent\r\nMy heart\'s a tart, your body\'s rent\r\nMy body\'s broken, yours is bent\r\nCarve your name into my arm\r\nInstead of stressed, I lie here charmed\r\n\'Cause there\'s nothing else to do\r\nEvery me and every you\r\n\r\n[Verse 2]\r\nSucker love, a box I choose\r\nNo other box I choose to use\r\nAnother love I would abuse\r\nNo circumstances could excuse\r\nIn the shape of things to come\r\nToo much poison come undone\r\n\'Cause there\'s nothing else to do\r\nEvery me and every you\r\n\r\n[Chorus]\r\nEvery me and every you\r\nEvery me...\r\n\r\n[Verse 3]\r\nSucker love is known to swing\r\nProne to cling and waste these things\r\nPucker up for heavens sake\r\nThere\'s never been so much at stake\r\nI serve my head up on a plate\r\nIt\'s only comfort, calling late\r\n\'Cause there\'s nothing else to do\r\nEvery me and every you\r\n [Chorus]\r\nEvery me and every you\r\nEvery me...\r\nEvery me and every you\r\nEvery me...\r\n\r\n[Verse 4]\r\nLike the naked leads the blind\r\nI know I\'m selfish, I\'m unkind\r\nSucker love I always find\r\nSomeone to bruise and leave behind\r\nAll alone in space and time\r\nThere\'s nothing here but what here\'s mine\r\nSomething borrowed, something blue\r\nEvery me and every you\r\n\r\n[Chorus]\r\nEvery me and every you\r\nEvery me...\r\nEvery me and every you\r\nEvery me...\r\nEvery me and every you\r\nEvery me...\r\nEvery me and every you\r\nEvery me...\r\nEvery me and every you\r\nEvery me...\r\nEvery me and every you\r\nEvery me...\r\n', 'songs\\Placebo-Every_You_Every_Me.mp3', 3),
(9, 'Hysteria', 'img\\hysteria.jpg', 'Muse', 'It\'s bugging me, grating me\r\nAnd twisting me around\r\nYeah, I\'m endlessly caving in\r\nAnd turning inside out\r\n\r\n[Chorus]\r\n\'Cause I want it now, I want it now\r\nGive me your heart and your soul\r\nAnd I\'m breaking out, I\'m breaking out\r\nLast chance to lose control\r\n\r\n[Verse 2]\r\nYeah, it\'s holding me, morphing me\r\nAnd forcing me to strive\r\nTo be endlessly cold within\r\nAnd dreaming I\'m alive\r\n\r\n[Chorus]\r\n\'Cause I want it now, I want it now\r\nGive me your heart and your soul\r\nI\'m not breaking down, I\'m breaking out\r\nLast chance to lose control\r\n\r\n [Chorus]\r\nAnd I want you now, I want you now\r\nI\'ll feel my heart implode\r\nAnd I\'m breaking out, escaping now\r\nFeeling my faith erode\r\n', 'songs\\Muse-Hysteria.mp3', 4),
(10, 'Lake of fire', 'img\\lake_of_fire.jpg', 'Nirvana', 'Where do bad folks go when they die?\r\nThey don′t go to heaven where the angels fly\r\nThey go to a lake of fire and fry\r\nSee ′em again ′till the fourth of July\r\n\r\nI knew a lady who came from Duluth\r\nShe got bit by a dog with a rabid tooth\r\nShe went to her grave just a little too soon\r\nAnd flew away howling on the yellow moon\r\n\r\nWhere do bad folks go when they die?\r\nThey don′t go to heaven where the angels fly\r\nThey go to a lake of fire and fry\r\nSee ′em again ′till the fourth of July\r\n\r\nThe people cry and the people moan\r\nThey look for a dry place to call their home\r\nTry to find some place to rest their bones\r\nWhile the angels and the devils try to make ′em their own\r\n\r\nWhere do bad folks go when they die?\r\nThey don′t go to heaven where the angels fly\r\nThey go to a lake of fire and fry\r\nSee ′em again ′till the fourth of July\r\n', 'songs\\Nirvana-Lake_Of_Fire.mp3', 1),
(11, 'Wind of Change', 'img\\Wind_of_change.jpg', 'Scorpions', 'I follow the Moskva\r\nDown to Gorky Park\r\nListening to the wind of change\r\nAn August summer night\r\nSoldiers passing by\r\nListening to the wind of change\r\n\r\nThe world is closing in\r\nDid you ever think\r\nThat we could be so close, like brothers\r\nThe future′s in the air\r\nI can feel it everywhere\r\nBlowing with the wind of change\r\n\r\n[Chorus:]\r\nTake me to the magic of the moment\r\nOn a glory night\r\nWhere the children of tomorrow dream away\r\nIn the wind of change\r\n\r\nWalking down the street\r\nDistant memories\r\nAre buried in the past forever\r\n\r\nI follow the Moskva\r\nDown to Gorky Park\r\nListening to the wind of change\r\n\r\nTake me to the magic of the moment\r\nOn a glory night\r\nWhere the children of tomorrow share their dreams\r\nWith you and me\r\n\r\nTake me to the magic of the moment\r\nOn a glory night\r\nWhere the children of tomorrow dream away\r\nIn the wind of change\r\n\r\nThe wind of change blows straight\r\nInto the face of time\r\nLike a stormwind that will ring\r\nThe freedom bell for peace of mind\r\nLet your balalaika sing\r\nWhat my guitar wants to say\r\n\r\nTake me to the magic of the moment\r\nOn a glory night\r\nWhere the children of tomorrow share their dreams\r\nWith you and me\r\n\r\nTake me to the magic of the moment\r\nOn a glory night\r\nWhere the children of tomorrow dream away\r\n', 'songs\\Scorpions-Wind_Of_Change.mp3', 5),
(12, 'Unintended', 'img\\unintended.webp', 'Muse', 'You could be my unintended\r\nChoice to live my life extended\r\nYou could be the one I\'ll always love\r\nYou could be the one who listens\r\nTo my deepest inquisitions\r\nYou could be the one I\'ll always love\r\n\r\n[Chorus]\r\nI\'ll be there as soon as I can\r\nBut I\'m busy mending broken\r\nPieces of the life I had before\r\n\r\n[Verse 2]\r\nFirst there was the one who challenged\r\nAll my dreams and all my balance\r\nShe could never be as good as you\r\nYou could be my unintended\r\nChoice to live my life extended\r\nYou should be the one I\'ll always love\r\n\r\n[Chorus]\r\nI\'ll be there as soon as I can\r\nBut I\'m busy mending broken\r\nPieces of the life I had before\r\nI\'ll be there as soon as I can\r\nBut I\'m busy mending broken\r\nPieces of the life I had before\r\nBefore you\r\n', 'songs\\Muse-Unintended.mp3', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `u_nic` varchar(30) NOT NULL,
  `u_email` varchar(30) NOT NULL,
  `u_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`user_id`, `u_nic`, `u_email`, `u_password`) VALUES
(1, 'Jul', 'Jul@mail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'Ann', 'Ann@mail.com', '81dc9bdb52d04dc20036dbd8313ed055');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`author_id`);

--
-- Индексы таблицы `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`fav_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `song_id` (`song_id`);

--
-- Индексы таблицы `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`song_id`),
  ADD KEY `author_id` (`author_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `u_email` (`u_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `authors`
--
ALTER TABLE `authors`
  MODIFY `author_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `favorites`
--
ALTER TABLE `favorites`
  MODIFY `fav_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `songs`
--
ALTER TABLE `songs`
  MODIFY `song_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`song_id`) REFERENCES `songs` (`song_id`);

--
-- Ограничения внешнего ключа таблицы `songs`
--
ALTER TABLE `songs`
  ADD CONSTRAINT `songs_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`author_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
