-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2017 at 08:20 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `legendofzeldabotw`
--

-- --------------------------------------------------------

--
-- Table structure for table `enemies`
--

CREATE TABLE `enemies` (
  `Name` varchar(30) NOT NULL,
  `Description` text,
  `Health` int(10) DEFAULT NULL,
  `Drops` enum('test') DEFAULT NULL,
  `Picture` varchar(200) DEFAULT 'default.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `Name` varchar(30) NOT NULL,
  `Description` text,
  `Healing` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`Name`, `Description`, `Healing`) VALUES
('Acorn', 'Often found on the ground near trees. Squirrels adore this nut, so you may have competition while foraging. Add one to a meal for a nutty seasoning.', '1/4'),
('Amber', 'A fossilized resin with a caramelesque sheen to it. It''s usually traded for Rupees but can also be used in accessories.', NULL),
('Ancient Gear', 'A gear used in ancient machinery. Despite being incredibly old, it''s build quality is leaps and bounds above anything built using current technology.', NULL),
('Ancient Screw', 'A screw used in ancient machinery. It''s made of an unknown material and no mattter how many times it''s turned, its threads never seem to show sign of wear.', NULL),
('Ancient Shaft', 'A machine part used in ancient machinery. It''s incredibly sturdy, and it''s not made of any recognizable material. It may come in handy someday.', NULL),
('Ancient Spring', 'A spring used in ancient machinery. It is light and buoyant enough to float on water, and no matter how many times it''s compressed it never loses tension.', NULL),
('Apple', 'You got a sweet-looking apple! It looks just ready to eat, too! Hmm... Yes... The ones over there are sweeter, so let''s put this one back.', '½'),
('Armoranth', 'This tough medicinal plant cannot be broken, but it can be cooked, its durable yet flexible fibers raise your defense when cooked into a dish.', NULL),
('Armored Carp', 'Calcium deposits in the scales of this ancient fish make them as hard as armor. Cooking it into a dish will fortify your bones, temporarily increasing your defense.', '1'),
('Big Hearty Radish', 'This hearty radish has grown much larger than the average radish. It''s rich in analeptic compounds that, when cooked into a dish, temporarily increase your maximum hearts.', '4'),
('Bird Egg', 'A fresh bird egg necessary for making dishes...', '1'),
('Bird Meat', 'This meat is tougher and chewier than a standard Steak. Tastes better cooked.', '2'),
('Blue Nightshade', 'A plant that grows in quieter areas of Hyrule. At night, it gives off a soft glow. Cook with it to increase your stealth.', NULL),
('Bokoblin Fang', 'A tooth obtained from a Bokoblin. It''s worn down and not very sharp, but it''s still pretty hard. Cook it alongside a critter to make an elixir.', NULL),
('Bokoblin Guts', 'A rare material obtained by defeating a Bokoblin. It convulses on its own every now and then, which is really creepy, but perhaps it has a use.', NULL),
('Bokoblin Horn', 'The severed horn of a Bokoblin, a creature often encountered on the plains of Hyrule. The horn isn''t edible, but it can be tossed into a stew with some critters to make an elixir.', NULL),
('Chuhu Jelly', 'A gelatinous substance that came from a Chuchu. It''s unusable in this state, but applying a bit of elemental stimulation will change its form.', NULL),
('Cool Safflina', 'This medicinal plant grows in high elevations, such as mountains in the Hebra or Gerudo regions. When cooked into a dish, it will temporarily increase your heat resistance.', NULL),
('Courser Bee Honey', 'Sweet honey chock-full of nutrients! Rather than eating it raw, try cooking with it to unlock its stamina-restoring effects.', '2'),
('Diamond', 'The most precious gem one can find in Hyrule, its signature sparkle has charmed Hyruleans for generations. As such, it has sold for a very high price since ancient times.', NULL),
('Electric Keese Wing', 'A rare Electric Keese wing. The part of the Electric Keese that produces electricity is not in it''s wings, so it won''t shock you. Toss it in with some critters to make elixirs.', NULL),
('Electric Safflina', 'An electric plant which can be used in dishes granting electric resistance.', NULL),
('Endura Shroom', 'A rare yellowish-orange mushroom. Cook it before eating to temporarily increase your stamina limit.', '1'),
('Fairy', 'This fairy will fly from your pouch and heal all your hounds the moment you lose your last heart. It''s easily mistaken for a firefly at first, but it glows in the daylight as well as night.', '5'),
('Fleet-Lotus Seed', 'The plant that bears these seeds grows near deep water. The roots draw nutrients from the water, which boosts your movement speed when the seeds are cooked into a dish.', '½'),
('Flint', 'Strike it with a metallic weapon to generate a spark. This portable fire starter breaks after one use, but it can create a long-lasting flame if you use it near firewood.', NULL),
('Hearty Bass', 'This large fish lives near the shoreline. Its sizable body can store a lot of nutriments...', '2'),
('Hearty Radish', 'A rare radish that grows best in sunny plains. Cook it before eating to temporarily increase your maximum hearts.', '2 ½'),
('Hearty Salmon', 'This fish makes its home in cold water, giving it extra layers of fat. It temporarily increases your maximum hearts when used in cooking.', '4'),
('Hearty Truffle', 'This rare mushroom has a rich scent. Cook it before eating to temporarily increase your maximum hearts.', '2'),
('Hightail Lizard', 'A lizard found throughout Hyrule. It''s a bit slow to react at times, but if given a chance to escape, it will dart off quickly. Cook it with monster parts for a speed-boosting elixir.', ''),
('Hot-Footed Frog', 'An energetic frog that can be found hopping around near water. Cook it with monsters parts to draw out its speed-boost effect.', ''),
('Hydromelon', 'This resilient fruit can flourish even in the heat of desert. The hydrating liquid inside provides a cooling effect that, when cooked, increases heat resistance.', '½'),
('Hylian Shroom', 'A common mushroom found near trees around Hyrule. Eat it to restore half a heart.', '½'),
('Hyrule Bass', 'That''s a Hyrule Bass! Competition is fierce to catch a record size of this fishing hole standard!', '1'),
('Hyrule Herb', 'This healthy herb grows abundantly in the plains of Hyrule. Cook it before eating to increase the number of hearts it restores.', '1'),
('Ice Keese Wing', 'A rare Ice Keese wing. Its frozen surface gleams attractively, but its usefulness isn''t readily apparent.', NULL),
('Ironshroom', 'The cap of this mushroom is very hard. Use it when cooking to prepare a dish that increases your defense.', '½'),
('Keese Eyeball', 'A rare material dropped by a defeated Keese. It''s fun to look at, but it doesn''t seem to have much use. Maybe a collector would be interested in it...', NULL),
('Keese Wing', 'Use it to brew an invigorating tea, or grind for a purple dye.', NULL),
('Lizalfos Horn', 'This winding horn once grew atop the head of a Lizalfos. It''s too hard to use for cooking, but stores are willing to buy it from you. It can be used to make elixirs.', NULL),
('Lizalfos Talon', 'This talon once grew from the elbow of a Lizalfos. You can stew it with critters to make elixirs, but it may have some other uses, as well.', NULL),
('Mighty Carp', 'This freshwater fish lives alongside its less mighty carp ilk. A compound in its liver promotes muscle growth. Dishes cooked with it will temporarily increase your attack power.', '1'),
('Mighty Porgy', 'This ocean-dwelling fish comes with one rude attitude. The compounds in its flesh elevate your competitive spirit when it''s cooked into a dish, thus increasing your attack power.', '1'),
('Moblin Fang', 'A sharp fang obtained from a Moblin. It''s too hard to be reshaped into a tool, but it can be tossed into a stew with some critters to create elixirs.', NULL),
('Moblin Horn', 'This splendid horn once grew atop the head of a Moblin. It can''t be used in normal food recipes, but it does have some use as an ingredient in making elixirs.', NULL),
('Octo Balloon', 'This inflatable Octorok organ has a lot of lift, so attach it to items you want to see float. Hold it in your hands, and then place it on an object to attach it.', NULL),
('Opal', 'A valuable ore that gives off a mesmerizing iridescence similar to the inside of a seashell. It contains the power of water.', NULL),
('Palm Fruit', 'Fruit from palm trees that grow near the ocean. It doesn''t offer any special effects but will increase your heart recovery when used as an ingredient.', '1'),
('Raw Bird Drumstick', 'This meat is tougher and chewier than a standard Steak. Tastes better cooked.', '2'),
('Raw Meat', 'Meat obtained from animals in plains and forests. You can eat it raw, but cooking it will make it more delicious and nutritious.', '1'),
('Raw Prime Meat', 'A fresh, high-quality piece of animal meat. This stuff isn''t easy to come by, so savor it. Cook it to recover more hearts.', '1 ½'),
('Restless Cricket', 'A very energetic cricket. Cook it with monster parts to create a stamina-boosting elixir.', NULL),
('Rock Salt', 'Crystallized salt from the ancient sea commonly used to season meals. Cannot be eaten in this form.', NULL),
('Ruby', 'A valuable mineral mined from large stones in Hyrule. Rubies hold the power of fire within them. Can be sold for a very high price.', NULL),
('Rushroom', 'A mushroom that can grow almost anywhere but prefer ceilings and sheer cliffs. Cook it before eating to temporary increase your movement speed.', '½'),
('Sapphire', 'A valuable blue gem mined from natural rock formations. Sapphires are said to contain the essence of ice within them. Sells for a very high price.', NULL),
('Silent Princess', 'This lovely flower was said to have been a favorite to the princess of Hyrule. Once feared to have gone extinct, it''s recently been spotted growing in the wild.', NULL),
('Silent Shroom', 'A strange mushroom that glows softly in the forest at night. Cooking it into a dish unlocks the nutrients in its cap, resulting in a meal that will allow you to move steadily.', '½'),
('Sizzlefin Trout', 'This red trout prefers warm bodies of water. It has a special organ specifically for storing heat. When cooked into a dish, it temporarily boosts your resistance to the cold.', '1'),
('Sizzlewing Butterfly', 'A butterfly found in the woods and plains of warm regions. Its wings absorb the warmth of the sun. Cook it with monster parts to create an elixir that makes you feel warm and fuzzy.', NULL),
('Sneaky River Snail', 'This large, glow-in-the-dark snail lives in fresh water. When cooked into a dish, it heightens your senses so you can move about silently.', '1'),
('Spicy Pepper', 'This pepper is exploding with spice. Cook with it to create dishes that will raise your body temperature and help you withstand the cold.', '½'),
('Stamella Shroom', 'A green mushroom that grows near trees in the forest. It''s chock-full of natural energy. Cook it to release its stamina restoration properties.', '1'),
('Sunset Firefly', 'These fireflies glow gently in the dark. When cooked with monster parts, the compound that causes it to glow results in an elixir that will allow you to move more quietly.', NULL),
('Swift Carrot', 'This carrot is cultivated extensively in Kakariko Village. It strengthens the legs and hips when cooked into a dish, which helps increase your movement speed.', '½'),
('Swift Violet', 'This vitality-rich flower blooms mainly on cliffsides. When cooked into a dish, the nourishing compounds increase your movement speed.', NULL),
('Tireless Frog', 'This rare frog only ventures out in the rain. When cooked with monster parts, the elixir it produces will temporarily increase your maximum stamina.', NULL),
('Topaz', 'This rare yellow gem is said to contain electrical powers and can be sold for a high price.', NULL),
('Warm Safflina', 'This medicinal plant grows in hot regions, such as the Gerudo Desert. It''s warm to the touch and increases your cold resistance when cooked into a dish.', NULL),
('White ChuChu Jelly', 'A jiggly substance that came from a White Chuchu. It''s cool to the touch, and squeezing it seems to relieve stress. If struck, it will explode in a cold mist.', NULL),
('Wood', 'A portable bundle of wood. You can use this to make a campfire if you have something to light it.', NULL),
('Yellow Lizalfos Tail', 'The severed tail of an Electric Lizalfos. It''s powerful stench makes it unappetizing and unfit for cooking, but it''s highly valued as an ingredient for elixirs.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `PageNr` int(5) NOT NULL,
  `PageText` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`PageNr`, `PageText`) VALUES
(0, 'Home'),
(1, 'ItemTest');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `enemies`
--
ALTER TABLE `enemies`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`PageNr`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
