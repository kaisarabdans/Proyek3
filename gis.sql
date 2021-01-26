-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2021 at 01:01 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gis`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_galeri`
--

CREATE TABLE `tb_galeri` (
  `id_galeri` int(11) NOT NULL,
  `id_tempat` int(11) NOT NULL,
  `nama_galeri` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `ket_galeri` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_galeri`
--

INSERT INTO `tb_galeri` (`id_galeri`, `id_tempat`, `nama_galeri`, `gambar`, `ket_galeri`) VALUES
(17, 11, '', '7709a.jpg', ''),
(18, 12, '', '1039goa-lawah.jpg', ''),
(19, 12, 'Goa Lawah 1', '2443gua-lawah-1.jpg', ''),
(20, 12, 'Goa Lawah 2', '6752gua-lawah3.jpg', ''),
(21, 11, 'Lempuyang 1', '8479lempuyang.jpg', ''),
(22, 15, '', '5071pusering-jagat.jpg', ''),
(23, 10, 'Mandala 1', '7182mandapa-1.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),
(24, 10, 'Mandala 2', '9349mandapa-2.jpg', ''),
(25, 10, 'Mandala 3', '4694mandapa-3.jpg', ''),
(26, 10, 'Mandala 4', '8986mandapa-4.jpg', ''),
(27, 10, 'Mandala 5,6,7', '2425mandapa-567.jpg', ''),
(28, 10, 'Gambar 1', '7398besakih.jpg', ''),
(29, 10, 'Gambar 2', '7659besakih-2.jpg', ''),
(30, 13, 'Batukaru 1', '5413batukaru-1.jpg', '<p>barukaru tes keternagan</p>'),
(31, 13, 'Batukaru 2', '1935batukaru-2.jpg', ''),
(32, 11, 'Lempuyang 2', '5131lempuyang-3.jpg', ''),
(33, 14, 'Uluwatu 1', '6659uluwatu-1.jpg', ''),
(34, 14, 'Uluwatu 2', '6237uluwatu-2.jpg', ''),
(35, 15, 'Pusering jagat 1', '4421pusering-jagat-1.jpg', ''),
(36, 15, 'Pusering jagat 2', '6820pusering-jagat-2.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_options`
--

CREATE TABLE `tb_options` (
  `option_name` varchar(16) NOT NULL,
  `option_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_options`
--

INSERT INTO `tb_options` (`option_name`, `option_value`) VALUES
('default_lat', '-8.251889'),
('default_lng', '115.076818'),
('default_zoom', '10');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tempat`
--

CREATE TABLE `tb_tempat` (
  `id_tempat` int(11) NOT NULL,
  `nama_tempat` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `lokasi` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_tempat`
--

INSERT INTO `tb_tempat` (`id_tempat`, `nama_tempat`, `gambar`, `lat`, `lng`, `lokasi`, `keterangan`) VALUES
(10, 'Besakih', '75731111.jpg', -8.379815696552704, 115.42210517969193, 'Desa Besakih, Kecamatan Rendang, Kec. Karangasem, Bali', '<p style=\"text-align: justify;\" align=\"justify\"><strong><span class=\"bodytext\">**Sejarah Pura**</span></strong></p>\r\n<p style=\"text-align: justify;\" align=\"justify\"><span class=\"bodytext\">Sebelum ada apa-apa hanya terdapat kayu-kayuan serta hutan belantara di tempat itu, demikian pula sebelum ada <em>Segara Rupek</em> (Selat Bali). Pulau Bali dan pulau Jawa dahulu masih menjadi satu dan belum dipisahkan oleh laut. Pulau itu panjang dan bernama <em>Pulau Dawa</em>. Di Jawa Timur yaitu di <em>Gunung Rawang</em> (sekarang dikenal dengan nama <em>Gunung Raung</em>) ada seorang Yogi atau pertapa yang bernama </span><span class=\"mantras\">Resi Markandeya</span><span class=\"bodytext\">.&nbsp;</span><span class=\"bodytext\">Beliau berasal dan Hindustan (India), oleh para pengiring-pengiringnya disebut </span><span class=\"mantras\">Batara Giri Rawang</span><span class=\"bodytext\"> karena kesucian rohani, kecakapan dan kebijaksanaannya (sakti sidhi ngucap). Pada mulanya </span><span class=\"mantras\">Sang Yogi Markandeya</span><span class=\"bodytext\"> bertapa di gunung <em>Demulung</em>, kemudian pindah ke gunung Hyang (konon gunung Hyang itu adalah <em>DIYENG</em> di Jawa Tengah yang berasal dan kata <em>DI HYANG</em>). Sekian lamanya beliau bertapa di sana, mendapat titah dari Hyang Widhi Wasa agar beliau dan para pengikutnya merabas hutan di pulau <em>Dawa</em> setelah selesai, agar tanah itu dibagi-bagikan kepada para pengikutnya.&nbsp;</span><span class=\"mantras\">Sang Yogi Markandeya</span><span class=\"bodytext\"> melaksanakan titah itu dan segera berangkat ke arah timur bersama para pengiring-pengiringnya kurang lebih sejumlah 8000 orang. Setelah tiba di tempat yang dituju </span><span class=\"mantras\">Sang Yogi Markandeya</span><span class=\"bodytext\"> menyuruh semua para pengiringnya bekerja merabas hutan belantara, dilaksanakan sebagai mana mestinya.&nbsp;Saat merabas hutan, banyak para pengiring </span><span class=\"mantras\">Sang Yogi Markandeya</span><span class=\"bodytext\"> yang sakit, lalu mati dan ada juga yang mati dimakan binatang buas, karena tidak didahului dengan upacara yadnya (bebanten / sesaji).&nbsp;</span><span class=\"bodytext\">Kemudian perabasan hutan dihentikan dan </span><span class=\"mantras\">Sang Yogi Markandeya</span><span class=\"bodytext\"> kembali lagi ke tempat pertapaannya semula (Konon ke gunung Raung di Jawa Timur. Selama beberapa waktu</span><span class=\"mantras\">Sang Yogi Markandeya</span><span class=\"bodytext\"> tinggal di gunung Raung. Pada suatu hari yang dipandang baik (<em>Dewasa Ayu</em>) beliau kembali ingin melanjutkan perabasan hutan itu untuk pembukaan daerah baru, disertai oleh para resi dan pertapa yang akan diajak bersama-sama memohon wara nugraha kehadapan <em>Hyang Widhi Wasa</em> bagi keberhasilan pekerjaan ini. Kali ini para pengiringnya berjumlah 4000 orang yang berasal dan <em>Desa Age</em> (penduduk di kaki gunung Raung) dengan membawa alat-alat pertanian selengkapnya termasuk bibit-bibit yang akan ditanam di hutan yang akan dirabas itu. Setelah tiba di tempat yang dituju, </span><span class=\"mantras\">Sang Yogi Markandeya</span><span class=\"bodytext\"> segera melakukan tapa yoga semadi bersama-sama para yogi lainnya dan mempersembahkan upakara yadnya, yaitu <em>Dewa Yadnya</em> dan <em>Buta Yadnya</em>. Setelah upacara itu selesai, para pengikutnya disuruh bekerja melanjutkan perabasan hutan tersebut, menebang pohon-pohonan dan lain-lainnya mulai dan selatan ke utara. Karena dipandang sudah cukup banyak hutan yang dirabas, maka berkat <em>asung wara nugraha</em> <em>Hyang Widhi Wasa</em>, </span><span class=\"mantras\">Sang Yogi Markandeya</span><span class=\"bodytext\">memerintahkan agar perabasan hutan, itu dihentikan dan beliau mulai mengadakan pembagian-pembagian tanah untuk para pengikut-pengikutnya masing-masing dijadikan sawah, tegal dan perumahan.&nbsp;</span><span class=\"bodytext\">Di tempat di mana dimulai perabasan hutan itu </span><span class=\"mantras\">Sang Yogi Markandeya</span><span class=\"bodytext\"> menanam kendi (<em>payuk</em>) berisi air, juga <em>Pancadatu</em> yaitu berupa logam emas, perak, tembaga, besi dan perunggu disertai permata <em>Mirah Adi</em> (permata utama) dan <em>upakara (bebanten / sesajen)</em> selengkapnya diperciki <em>tirta Pangentas</em> (air suci). Tempat di mana sarana-sarana itu ditanam diberi nama<em>BASUKI</em>. Sejak saat itu para pengikut </span><span class=\"mantras\">Sang Yogi Markandeya</span><span class=\"bodytext\"> yang datang pada waktu-waktu berikutnya serta merabas hutan untuk pembukaan wilayah baru, tidak lagi ditimpa bencana sebagai mana yang pernah dialami dahulu. Demikianlah sedikit kutipan dari l<em>ontar Markandeya Purana</em> tentang asal mula adanya desa dan pura Besakih yang seperti disebutkan terdahulu bernama <em>Basuki</em> dan dalam perkembangannya kemudian sampai hari ini bernama <em>Besakih</em>.&nbsp;</span><span class=\"bodytext\">Mungkin berdasarkan pengalaman tersebut, dan juga berdasarkan apa yang tercantum dalam ajaran-ajaran agama Hindu tentang <em>Panca Yadnya</em>, sampai saat ini setiap kali umat Hindu akan membangun sesuatu bangunan baik rumah, warung, kantor-kantor sampai kepada pembangunan Pura, demikian pula memulai bekerja di sawah ataupun di perusahaan-perusahaan, terlebih dahulu mereka mengadakan upakara <em>yadnya</em> seperti <em>Nasarin </em>atau <em>Mendem Dasar Bangunan</em>. Setelah itu barulah pekerjaan dimulai, dengan pengharapan agar mendapatkan keberhasilan secara spiritual keagamaan Hindu di samping usaha-usaha yang dikerjakan dengan tenaga-tenaga fisik serta kecakapan atau keahlian yang mereka miliki. Selanjutnya memperhatikan isi lontar <em>Markandeya Purana</em> itu tadi dan dihubungkan pula dengan kenyataan-kenyataan yang dapat kita saksikan sehari-hari sampai saat ini tentang tata kehidupan masyarakat khususnya dalam hal pengaturan desa adat dan subak di persawahan. Oleh karena itu dapat kita simpulkan bahwa <em>Besakih</em> adalah tempat pertama para leluhur kita yang pindah dari gunung <em>Raung</em> di Jawa Timur mula-mula membangun suatu desa dan lapangan pekerjaan khususnya dalam bidang pertanian dan peternakan. Demikian pula mengembangkan ajaran-ajaran agama Hindu.</span></p>\r\n<p style=\"text-align: justify;\" align=\"justify\"><strong><span class=\"bodytext\">**Piodalan**</span></strong></p>\r\n<p style=\"text-align: justify;\" align=\"justify\"><span class=\"bodytext\">1.Pura Pesimpangan. Piodalannya pada hari&nbsp;Anggara Keliwon Julungwangi</span></p>\r\n<p style=\"text-align: justify;\" align=\"justify\"><span class=\"bodytext\">2.Piodalan&nbsp;Pura Dalem Puri ini pada hari&nbsp;Buda Keliwon ugu</span></p>\r\n<p style=\"text-align: justify;\" align=\"justify\"><span class=\"bodytext\">3.Pura Manik Mas Piodalannya pada hari &nbsp;saniscara Keliwon Wariga</span></p>\r\n<p style=\"text-align: justify;\" align=\"justify\"><span class=\"bodytext\">4.Pura Bangun Sakti&nbsp;Piodalannya pada hari&nbsp;Buda Pon Watugunung</span></p>\r\n<p style=\"text-align: justify;\" align=\"justify\"><span class=\"bodytext\">5.Ulun Kulul piodalan di pura ini jatuh pada hari&nbsp;Saniscara keliwon kuningan</span></p>\r\n<p style=\"text-align: justify;\" align=\"justify\"><span class=\"bodytext\">6.Piodalan di pura merajan Selonding pada hari Wraspati Keliwon Warigadian</span></p>\r\n<p style=\"text-align: justify;\" align=\"justify\"><span class=\"bodytext\">7.Piodalan di pura Gua pada hari Buda Wage Kelawu&nbsp;atau Buda Cemeng Kelawu</span></p>\r\n<p style=\"text-align: justify;\" align=\"justify\"><span class=\"bodytext\">8.Benua Kawaan&nbsp;piodalannya jatuh pada hari Sukra Umanis Kelawu</span></p>\r\n<p style=\"text-align: justify;\" align=\"justify\"><span class=\"bodytext\">9.Merajan Kanginan&nbsp;piodalannya jatuh pada hari&nbsp;Saniscara Keliwon Kerulut</span></p>\r\n<p style=\"text-align: justify;\" align=\"justify\"><span class=\"bodytext\">10. Pura Basukihan&nbsp;Piodalannya jatuh pada hari Buda Wage Kelawu</span></p>\r\n<p style=\"text-align: justify;\" align=\"justify\"><span class=\"bodytext\">11.Pura Batu Madeg&nbsp; piodalan pada hari&nbsp;Soma Umanis Tolu</span></p>\r\n<p style=\"text-align: justify;\" align=\"justify\"><span class=\"bodytext\">12.Pura Batu Kiduling Kreteg&nbsp;Piodalannya jatuh pada&nbsp;Anggara Wage Dungulan</span></p>\r\n<p style=\"text-align: justify;\" align=\"justify\"><span class=\"bodytext\">13.Piodalan di Pura Gelap jatuh pada hari&nbsp;Soma Keliwon Wariga</span></p>\r\n<p style=\"text-align: justify;\" align=\"justify\"><span class=\"bodytext\">14.Piodalan di Pura Pengubengan jatuh pada hari&nbsp;Budha Wage Kelawu</span></p>\r\n<p style=\"text-align: justify;\" align=\"justify\"><span class=\"bodytext\">15.Piodalan di Pura Tirtha&nbsp;jatuh pada hari&nbsp;Budha Wage Kelawu</span></p>\r\n<p style=\"text-align: justify;\" align=\"justify\"><span class=\"bodytext\">16.Piodalan di Pura Peninjoan pada hari&nbsp;Wraspati Wage Tolu</span></p>\r\n<p style=\"text-align: justify;\" align=\"justify\">&nbsp;</p>\r\n<p style=\"text-align: justify;\" align=\"justify\"><strong><span class=\"bodytext\">**Denah Pura**</span></strong></p>\r\n<p style=\"text-align: justify;\" align=\"justify\"><strong><span class=\"bodytext\">Pura Penataran Agung terdiri dan 7 mandala yang melambangkan \"<span class=\"mantras\">Sapta Loka</span>\" atau tujuh lapisan alam, di tiap-tiap petak terdapat bangunan-bangunan palinggih.</span></strong></p>\r\n<p style=\"text-align: justify;\" align=\"justify\">1. Bale Pegat<br />2. Bale Kulkul<br />3. Bale Kulkul<br />4. Bale Palegongan<br />5. Bale Pagambuhan<br />6. Bale Mundar-mandir atau Bale Omkara<br />8.Bale Pawedaan<br />9.Bale Agung<br />10.Bale Kawas<br />11.Bale Pasamuhan Agung<br />12.Bale Papelik<br />13.Padmasana Tiga<br />14.Bale Tegeh Mpu Pradah<br />15.Bale Papelik Sang Hyang Siyem<br />16.Meru Tumpang-11<br />17.Meru Tumpang-9<br />18.Piasan Alit<br />19.Palinggih Babaturan<br />20.Bale Kembang Sirang<br />21.Bale Gong<br />22 Bale Papelik Kayu Selem<br />23 Bale Papelik Pasek Brejo<br />24 Bale Papelik Danghyang Dwijendra<br />25 Bale Papelik Manik Mas<br />26 Bale Gedong Arya Batu Lepang<br />27 Kehen<br />28 Meru Tumpang-7 Batara Geng<br />29 Meru Tumpang 11 Bhatari Gaya Tri<br />30 Bale Panggungan<br />31 Bale Pepelik Pelinggih Ida Ratu Ngalesung<br />32 Meru tumpang 5 I Gusti Ngurah Dauh<br />33 Meru tumpang 7 Bhatara Tulus Dewa<br />34 Meru tumpang 5 Bhatara Penataran<br />35 Meru tumpang 3 Bhatara Suka Luwih<br />36 Gedong Pelinggih Ida Gusti Teges<br />37 Gedong Pelinggih Hyang Angan Tiga<br />38 Bale Pepelik<br />39 Bale Kampuh<br />40 Bale Tegeh Pelinggih Hyang Widyadari<br />41 Bale Tegeh Pelinggih Hyang Widyadara<br />42 Bale Pepelik<br />43 Meru tumpang 11&nbsp;<br />44 Bebaturan Ratu Sedahan Manginte<br />45 Gedong Ida Ratu Ayu Subandar<br />46 Gedong Ida Ratu Ayu Ulang Alu<br />47 Pelinggih Arca<br />48 Meru tumpang 3&nbsp;<br />49 Bale Pepelik<br />50 Bale Pepelik<br />51 Meru tumpang 11&nbsp;<br />52 Gedong Pelinggih Ida Ratu Bukit Tengen<br />53 Gedong Pelinggih Ida Ratu Bukit Kiwa</p>'),
(11, 'Lempuyang Luhur', '2637lempuyang-3.jpg', -8.39161613305076, 115.63120544047547, 'Tri Buana, Kec. Karangasem, Kabupaten Karangasem, Abang,Bali', '<p style=\"text-align: justify;\"><strong>**Sejarah Pura**</strong></p>\r\n<p style=\"text-align: justify;\">Pura ini terletak di puncak bukit Bisbis, termasuk wilayah kecamatan Abang, Kabupaten Daerah Tingkat II Karangasem, sebagai tempat suci untuk memuliakan dan memuja Ida Sanghyang Widhi Wasa dalam perwujudannya sebagai Icwara.&nbsp;Didalam lontar Kutarakanda Dewapurana Bangsulada disinggung mengenai Lempuyang, yang antara lain disebutkan sebagai berikut : <em>Na wuwus Sanghyang Paramecwara ri tanayan ira para watek Dewata samudaya, muka mukya sira Sanghyang Gnijayacakti, ling ira :&rdquo;Aum ranak mami ri kita makabehan, adon sira turuna mareng banwa ing Bangsul, kumemit kang Bangsuri, maneher kita Dewata luminggeng haan rumaksa kang rat, wenang pinilih ikang gunung maka stanata sowing-sowang, ginawe Kahyangan, wuwus hana gunung-gunung saider ing banwa Bangsul, piniyoghaken mami ing dangu, mwang ginawan mami sangke Jambhudwipa nguni, mami nenah aken maring Bangsul, Sanghyang Mahameru pangaranya dak mami pukah madyanya atut pucaknya, dak sun waweng Bangsul, sapraptan irang Bangsul maha kweh pukahnya, arimbag abungkul agung alit manuli tiba ring bhumi, saha ungguhanya matemahan geger-geger, mwang pagunungan, werdhi maring Bangsul, an mangkana anakku Dewata kita kabeh, hana katemu denta gunung Agung, tinengeran giri raja, maring Airsanya, ya ta gunung mas mapucak manik, adasar ratna kopala winten, akrikilmirah, apasir podhi, ya tika agran ira Hyang Mahameru gnuni, ingsun, ingsun, ginawa mareng bangsul, sun parah tiganen, kang sabagi dadi gunung Batur, maka dadi daour candi Hyang Agni siring pratiwi tala, ikang sabagi isornya, sundadya akna gunung Rinjani, ikang pucuk dadi ira dadi Hyang Tolangkir, ngaran gunung sasor nikang gunung Agung ika lwirnya, saka purwa amilangi, kawruh akna pangaranya, gunung Tasahi, kulonya gunung Pangelengan, kulonya gunung Mangu, kulonya gunung Cilanjana, kulonya gunung Beratan, kulonya gunung Watukaru, kulonya mwah pagunungan Nagaloka, kulonya mwah, nga, gunung Pulaki, mangidul Wetan sakeng rika hana gunung Pucaksangkur, Bukit Rangda, tratebang, Mangetanya mwah hana Padangdawa, mwah ikang pasisi Kidul, hana gunung Andakasa mwang Huluwatu, terus mangetana maring ghneya desan ira hana gunung Byaha, mwang Byasmuntig, ikang maring Purwa hana gunung Lempuyang, mangalora saka rika hana gunung Sraya, samangkana pasama dayaning acala sumimpa maring bangsul, ndan makweh kari geger kang maring madya, tan ucapa akna. Ika ta kabeh wenang maka ungguhaning dharma kahyangan para Dewata kita makabehan.</em></p>\r\n<p style=\"text-align: justify;\">Artinya kurang lebih demikian: Demikian sabda Sanghyang Paramecwara kepada puteranya para dewata sekalian, terutama sekali Sanghyang Gnijaya cakti, sabda beliau &ldquo;Wahai anakku kamu sekalian, kamu kusuruh datang di daerah Bali, menjaga pulau bali, lalu kamu menjadi Dewata selaku penguasa di sana, boleh memilih gunung sebagai tempat tinggalmu masing-masing, membuat kahyangan, sudah ada gunung-gunung diseluruh daerah Bali, yang adanya itu berkat yoghaku dahulu, dan aku bawa dari India dahulu, aku tempatkan di daerah Bali, Sanghyang Mahameru namanya yang aku potong pertengahan termasuk puncaknya, dan aku bawa ke Bali, setibanya di Bali banyak bagian-bagiannya, menjadi pecahan besar kecil kemudian ditempatkan di daratan, serta letaknya menjadi gundukan, dan pegunungan, selamat di Bali, demikianlah anakku engkau dewata sekalian, kamu akan jumpai gunung Agung, sebagai tanda gunung besar, di sebelah timur laut, itu lah gunung mas yang berpuncak manik, berdasar ratna winten, berbatu mirah,berpasir padi, itulah puncaknya gunung Hyang Mahameru dahulu, aku, aku bawa gunung Batur, sebagai dapur candi Hyang Agni yang ada di bawahnya, yang sebagian di bawahnya, aku jadikan gunung Rinjani, sedang pundaknya menjadi Hyang Tolangkir, bernama gunung Agung, puncaknya menjadi pegunungan dan gundukan, dibawah gunung Agung itu seperti, dari Timur menghitunganya, akan diketahui namanya, yaitu gunung Tasahi, di baratnya gunung Pangelengan, dibaratnya gunung Mangu, di baratnya gunung Cilanjana, di baratnya gunung Beratan, di baratnya gunung Batukaru, di baratnya lagi gunung Pulaki, ke tenggara dari sana terdapat gunung Puncaksungkur, bukit Rangda, Trate bang, kesebelah timur lagi ada Padangdawa, sedang di pantai selatan, ada gunung Andakasa dan Huluwatu, terus ke timur di sebelah tenggara tempatnya ada gunung Byaha dan Byasmunting, yang di sebelah timur ada gunung Lempuyang, ke sebelah utara dari sana ada gunung Sraya, demikianlah semuanya yang mengelilingi pulau Bali, dan masih banyak gundukan yang di tengah, yang tidak disebutkan. Itu semua boleh sebagai tempat tinggal membuat Kahyangan para dewata kamu kalian.</p>\r\n<p style=\"text-align: justify;\"><strong>**Piodalan**</strong></p>\r\n<p style=\"text-align: justify;\">Upacara Piodalan Pura Lempuyang Luhur jatuh pada hari kemis Umanis wuku dungulan yakni setiap enam bulan bali sekali (210 hari)</p>\r\n<p style=\"text-align: justify;\"><strong>**Denah Pura**</strong></p>\r\n<p style=\"text-align: justify;\">1.Padmasana untuk sthana Bhatara Luhurung Akasa</p>\r\n<p style=\"text-align: justify;\">2.Padmasana untuk sthana Bhatara Hyang Geni Jaya</p>\r\n<p style=\"text-align: justify;\">3.Padmasana untuk sthana para putra Hyang Geni Jaya.</p>\r\n<p style=\"text-align: justify;\">4.Gedong Pesimpenan</p>\r\n<p style=\"text-align: justify;\">5.Pahiyasan</p>\r\n<p style=\"text-align: justify;\">6.Rumpun Bambu</p>\r\n<p style=\"text-align: justify;\">7.Apit Lawang</p>\r\n<p style=\"text-align: justify;\">8.Apit Lawang</p>'),
(12, 'Goa Lawah', '9636gua-lawah-2.jpg', -8.551546848609402, 115.46887554232785, 'Jl. Raya Goa Lawah, Pesinggahan, Klunkung, Kabupaten Klungkung, Bali', '<p><strong>**Sejarah Pura**</strong></p>\r\n<p style=\"text-align: justify;\">Di Bali Pura Goa Lawah merupakan Pura untuk memuja Tuhan sebagai Dewa Laut. Pura Goa Lawah di Desa Pesinggahan Kecamatan Dawan, Klungkung inilah sebagai pusat Pura Segara di Bali untuk memuja Tuhan sebagai Dewa Laut.&nbsp;Dalam Lontar Prekempa Gunung Agung diceritakan Dewa Siwa mengutus Sang Hyang Tri Murti untuk menyelamatkan bumi. Dewa Brahma turun menjelma menjadi Naga Ananta Bhoga. Dewa Wisnu menjelma sebagai Naga Basuki. Dewa Iswara menjadi Naga Taksaka. Naga Basuki penjelmaan Dewa Wisnu itu kepalanya ke laut menggerakan samudara agar menguap menajdi mendung. Ekornya menjadi gunung dan sisik ekornya menjadi pohon-pohonan yang lebat di hutan. Kepala Naga Basuki itulah yang disimbolkan dengan Pura Goa Lawah dan ekornya menjulang tinggi sebagai Gunung Agung. Pusat ekornya itu di <a href=\"http://www.babadbali.com/pura/plan/besakih/pr-gua.htm\">Pura Goa Raja</a>, salah satu pura di kompleks Pura Besakih. Karena itu pada zaman dahulu goa di Pura Goa Raja itu konon tembus sampai ke Pura Goa Lawah. Karena ada gempa tahun 1917, goa itu menjadi tertutup.&nbsp;Keberadaan Pura Goa Lawah ini dinyatakan dalam beberapa lontar seperti Lontar Usana Bali dan juga Lontar Babad Pasek. Dalam Lontar tersebut dinyatakan Pura Goa Lawah itu dibangun atas inisiatif Mpu Kuturan pada abad ke XI Masehi dan kembali dipugar untuk diperluas pada abad ke XV Masehi. Dalam Lontar Usana Bali dinyatakan bahwa Mpu Kuturan memiliki karya yang bernama \'\'Babading Dharma Wawu Anyeneng\' yang isinya menyatakan tentang pendirian beberapa Pura di Bali termasuk Pura Goa Lawah dan juga memuat tahun saka 929 atau tahun 107 Masehi. Umat Hindu di Bali umumnya melakukan Upacara Nyegara Gunung sebagai penutup upacara Atma Wedana atau disebut juga Nyekah, Memukur atau Maligia.&nbsp;Upacara ini berfungsi sebagai pemakluman secara ritual sakral bahwa atman keluarga yang diupacarai itu telah mencapai Dewa Pitara. Upacara Nyegara Gunung itu umumnya di lakukan di Pura Goa Lawah dan Pura Besakih salah satunya ke Pura Goa Raja.&nbsp;<a href=\"http://www.babadbali.com/pura/plan/besakih.htm\">Pura Besakih</a> di lereng Gunung Agung dan Pura Goa Lawah di tepi laut adalah simbol lingga yoni dalam wujud alam. Lingga yoni ini adalah sebagai simbol untuk memuja Tuhan yang salah satu kemahakuasaannya mempertemukan unsur purusa dengan predana. Bertemunya purusa sebagai unsur spirit dengan predana sebagai unsur meteri menyebabkan terjadinya penciptaan. Demikiankah Gunung Agung sebagai simbol purusa dan Goa Lawah sebagai simbol pradana. Hal ini untuk melukiskan proses alam di mana air laut menguap menjadi mendung dan mendung menjadi hujan. Hujan ditampung oleh gunung dengan hutannya yang lebat. Itulah proses alam yang dilukiskan oleh dua alam itu. Proses alam itu terjadi atas hukm Tuhan. Karena itulah di tepi laut di Desa Pesinggahan dirikan Pura Goa Lawah dan di Gunung Agung dirikan Pura Besakih dengan 18 kompleksnya yang utama. Di Pura itulah Tuhan dipuja guna memohon agar proses alam tersebut tetap dapat berjalan sebagaimana mestinya. Karena dengan berjalannya proses itu alam ini tetap akan subur memberi kehidupan pada umat manusia.&nbsp;Pujawali atau piodalan di Pura Goa Lawah ini untuk memuja Bhatara Tengahing Segara dan Sang Hyang Basuki dilakukan setiap Anggara Kasih Medangsia. Di jeroan Pura, tepatnya di mulut goa terdapat pelinggih Sanggar Agung sebagai pemujaan Sang Hyang Tunggal. Ada Meru Tumpang Tiga sebagai pesimpangan Bhatara Andakasa. Ada Gedong Limasari sebagai Pelinggih Dewi Sri dan Gedong Limascatu sebagai Pelinggih Bhatara Wisnu. Dua pelinggih inilah sebagai pemujaan Tuhan sebagai Sang Hyang Basuki dan Bhatara Tengahing Segara.</p>\r\n<p style=\"text-align: justify;\"><strong>**Piodalan Di Goa Lawah**</strong></p>\r\n<p style=\"text-align: justify;\">Piodalan di gua lawah jatuh setiap enam bulan sekali yaitu anggara &nbsp;wuku madangsia.</p>\r\n<p style=\"text-align: justify;\"><strong>**Denah Pura Goa Lawah**</strong></p>\r\n<p style=\"text-align: justify;\"><strong>I.Bagian Bibir Goa</strong></p>\r\n<p style=\"text-align: justify;\">1.Sanggaran Agung</p>\r\n<p style=\"text-align: justify;\">2.Meru Tumpang Tiga (Pesimpangan Bhatara Andakasa)</p>\r\n<p style=\"text-align: justify;\">3.Gedong Mas Sari</p>\r\n<p style=\"text-align: justify;\">4.Gedong Mas Ayu</p>\r\n<p style=\"text-align: justify;\">5.Gedong Sari</p>\r\n<p style=\"text-align: justify;\">6.Padmasana</p>\r\n<p style=\"text-align: justify;\">7.Paliyangan Alit</p>\r\n<p style=\"text-align: justify;\">8.Sanggah Saka Saluang</p>\r\n<p style=\"text-align: justify;\"><strong>II.Bagian Jeroan</strong></p>\r\n<p style=\"text-align: justify;\">9.Meru Tumpang Tiga (Palinggih bhatara Siwa)</p>\r\n<p style=\"text-align: justify;\">10.Meru Tumpang Sebelas (Pelinggih Tri Murti)</p>\r\n<p style=\"text-align: justify;\">11.Meru Tumpang Tujuh (Pasimpangan Bhatara Pande)</p>\r\n<p style=\"text-align: justify;\">12.Pelinggih Sapta Patala</p>\r\n<p style=\"text-align: justify;\">13.pangaruman</p>\r\n<p style=\"text-align: justify;\">14.Bale Sor</p>\r\n<p style=\"text-align: justify;\">15.Piyasan Agung</p>\r\n<p style=\"text-align: justify;\">16.Pengapit Lawang</p>\r\n<p style=\"text-align: justify;\">17.Pengapit Lawang</p>\r\n<p style=\"text-align: justify;\">18.Bale Gong</p>\r\n<p style=\"text-align: justify;\"><strong>III Bagian Jaba Tengah</strong></p>\r\n<p style=\"text-align: justify;\">19.Pengapit Lawang</p>\r\n<p style=\"text-align: justify;\">20.Pengapit Lawang</p>\r\n<p style=\"text-align: justify;\">21.Gedong Mas Ari</p>\r\n<p style=\"text-align: justify;\">22.Gedong Mas Atu</p>\r\n<p style=\"text-align: justify;\">23.Gedong Pesimpangan Bhatara Segara</p>\r\n<p style=\"text-align: justify;\">24.Gedong Pesimpangan Bhatara Ped</p>\r\n<p style=\"text-align: justify;\">25.Sumur</p>\r\n<p style=\"text-align: justify;\">26.Bale Sakaha Sepuluh</p>\r\n<p style=\"text-align: justify;\">27.Bale Sakaha wulu</p>\r\n<p style=\"text-align: justify;\">28.Bale Kulkul</p>\r\n<p style=\"text-align: justify;\">29.Dapur.</p>\r\n<p style=\"text-align: justify;\"><strong>IV.Jabaan</strong></p>\r\n<p style=\"text-align: justify;\">30.Pengapit Lawang</p>\r\n<p style=\"text-align: justify;\">31.Pengapit Lawang</p>\r\n<p style=\"text-align: justify;\">32.Pengapit Lawang</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>'),
(13, 'Batukaru', '6379batukaru-1.jpg', -8.372245, 115.102754, 'Jl. Batukaru, Denpasar Selatan,Wongaya Gede,Penebel,Kabupaten Tabanan, Bali', '<p style=\"text-align: justify;\"><strong>**Sejarah Pura**</strong></p>\r\n<p style=\"text-align: justify;\">Pura Luhur Batukaru ini juga termasuk Pura Sad Kahyangan yang disebut dalam Lontar Kusuma Dewa. Pura Luhur Batukaru sudah ada pada abad ke-11 Masehi. Sezaman dengan&nbsp;Pura Besakih, Pura Lempuyang Luhur, Pura Guwa Lawah, Pura Luhur Uluwatu, dan Pura Pusering jagat<a href=\"http://www.babadbali.com/pura/plan/pusering-jagat.htm\">t</a>. Sebagai penggagas berdirinya Sad Kahyangan adalah Mpu Kuturan.Banyak pandangan para ahli bahwa Mpu Kuturan mendirikan Sad Kahyangan Jagat untuk memotivasi umat menjaga keseimbangan eksistensi Sad Kerti yaitu Atma Kerti, Samudra Kerti, Wana Kerti, Danu Kerti, Jagat Kerti dan Jana Kerti.&nbsp;Pura Luhur Batukaru kemungkinan sebelumnya sudah dijadikan tempat pemujaan dan tempat bertapa sebagai media Atma Kerti oleh tokoh-tokoh spiritual di daerah Tabanan dan Bali pada umumnya. Pandangan tersebut didasarkan pada adanya penemuan sumber-sumber air dan dengan berbagai jenis arca Pancuran. Dari adanya sumber-sumber mata air ini dapat disimpulkan bahwa daerah ini pernah dijadikan tempat untuk bertapa bagi para Wanaprastin untuk menguatkan hidupnya menjaga Sad Kerti tersebut.&nbsp;Setelah pendirian Pura Luhur Batukaru pada abad ke-11 tersebut kita tidak mendapat keterangan dengan jelas bagaimana keberadaan pura tersebut. Baru pada tahun 1605 Masehi ada keterangan dari kitab Babad Buleleng. Dalam kitab tersebut dijelaskan bahwa Pura Luhur Batukaru pada tahun tersebut di atas dirusak oleh Raja Buleleng yang bernama Ki Gusti Ngurah Panji Sakti.&nbsp;Dalam kitab babad tersebut diceritakan bahwa Kerajaan Buleleng sudah sangat aman tidak ada lagi musuh yang berani menyerangnya. Sang Raja ingin memperluas kerajaan lalu mengadakan perluasan ke Tabanan. Raja Ki Gusti Ngurah Panji Sakti dalam perjalanan bertemu dengan daerah Batukaru yang merupakan daerah Kerajaan Tabanan. Ki Gusti Ngurah Panji Sakti bersama prajuritnya lalu merusak Pura Luhur Batukaru. Pura tersebut diobrak-abriknya.&nbsp;Di luar perhitungan Ki Panji Sakti tiba-tiba datang tawon banyak sekali galak menyengat entah dari mana asalnya. Ki Panji Sakti beserta prajuritnya diserang habis-habisan oleh tawon yang galak dan berbisa itu. Ki Panji Sakti lari terbirit-birit dan mundur teratur dan membatalkan niatnya untuk menyerang kerajaan Tabanan. Karena pura tersebut dirusak oleh Ki Panji Sakti maka bangunan pelinggih rusak total. Tinggal onggokan berupa puing-puing saja.&nbsp;Baru pada tahun 1959 Pura Luhur Batukaru mendapat perbaikan sehingga bentuknya seperti sekarang ini. Pada tahun 1977 secara bertahap barulah ada perhatian dari pemerintah daerah berupa bantuan. Sampai sekarang Pura Luhur Batukaru sudah semakin baik keadaannya.</p>\r\n<p style=\"text-align: justify;\"><strong>**Piodalan**</strong></p>\r\n<p style=\"text-align: justify;\">Upacara piodalan di pura Batukaru&nbsp;jatuh setiap 210 hari sekali yaitu pada setiap Kamis Wuku Dungulan</p>\r\n<p style=\"text-align: justify;\"><strong>**Denah Pura**</strong></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>'),
(14, 'Uluwatu', '2561uluwatu-1.jpg', -8.828911, 115.084875, 'Pecatu,Kuta Sel.,Kabupaten Badung, Bali', '<p style=\"text-align: justify;\"><strong>**Sejarah Pura**</strong></p>\r\n<p style=\"text-align: justify;\">Pura Luhur Uluwatu atau Pura Uluwatu merupakan pura yang berada di wilayah Desa Pecatu, Kecamatan Kuta, Badung.Dalam Lontar Padma Bhuwana disebutkan juga tentang pendirian Pura Luhur Uluwatu sebagai Pura Padma Bhuwana oleh Mpu Kuturan pada abad ke-11. Candi bersayap seperti di Pura Luhur Uluwatu terdapat juga di Lamongan, Jatim. Pura Luhur Uluwatu berfungsi sebagai tempat pemujaan Dewa Siwa Rudra dan terletak di barat daya Pulau Bali. Pura Luhur Uluwatu didirikan berdasarkan konsepsi Sad Winayaka dan Padma Bhuwana.Sebagai pura yang didirikan dengan konsepsi Sad Winayaka, Pura Luhur Uluwatu sebagai salah satu dari Pura Sad Kahyangan untuk melestarikan Sad Kertih (Atma Kerti, Samudra Kerti, Danu Kerti, Wana Kerti, Jagat Kerti dan Jana Kerti). Sedangkan sebagai pura yang didirikan berdasarkan Konsepsi Padma Bhuwana, Pura Luhur Uluwatu didirikan sebagai aspek Tuhan yang menguasai arah barat daya. Pemujaan Dewa Siwa Rudra adalah pemujaan Tuhan dalam memberi energi kepada ciptaannya.Ida Pedanda Punyatmaja Pidada pernah beberapa kali menjabat Ketua Parisada Hindu Dharma Pusat mengatakan bahwa di Pura Luhur Uluwatu memancar energi spiritual tiga dewa. Kekuatan suci ketiga Dewa Tri Murti (Brahma, Wisnu dan Siwa) menyatu di Pura Luhur Uluwatu. Karena itu umat yang membutuhkan dorongan spiritual untuk menciptakan, memelihara dan meniadakan sesuatu yang patut diadakan, dipelihara dan dihilangkan sering khusus memuja Dewa Siwa Rudra di Pura Luhur Uluwatu.Salah satu ciri hidup yang ideal menurut pandangan Hindu adalah menciptakan segala sesuatu yang patut diciptakan. Memelihara sesuatu yang patut dipelihara dan menghilangkan sesuatu yang patut dihilangkan. Menciptakan, memelihara dan menghilangkan sesuatu yang patut itu tidaklah mudah. Berbagai hambatan akan selalu menghadang.&nbsp;Dalam menghadapi berbagai kesukaran itulah umat sangat membutuhkan kekuatan moral dan daya tahan mental yang tangguh. Untuk mendapatkan keluhuran moral dan ketahanan mental itu salah satu caranya dengan jalan memuja Tuhan dengan tiga manifestasinya. Untuk menumbuhkan daya cipta yang kreatif pujaan Tuhan dalam manifestasinya sebagai Dewa Brahma.&nbsp;Untuk memiliki ketetapan hati memelihara sesuatu yang patut dipelihara pujaan Tuhan dalam manifestasinya sebagai Dewa Wisnu. Untuk mendapatkan kekuatan untuk menghilangkan sesuatu yang patut dihilangkan pujaan Tuhan dalam manifestasinya sebagai Dewa Siwa. Energi spiritual ketiga manifestasi Tuhan itu menyatu dalam Dewa Siwa Rudra yang dipuja di Pura Luhur Uluwatu.&nbsp;Pura Luhur Uluwatu ini tergolong Pura Kahyangan Jagat. Karena Pura Sad Kahyangan dan Pura Padma Bhuwana itu adalah tergolong Pura Kahyangan Jagat. Di Pura Luhur Uluwatu ini Batara Rudra dipuja di Meru Tumpang Tiga. Di sebelah kanan dari Jaba Pura Luhur Uluwatu ada Pura Dalem Jurit sebagai pengembangan Pura Luhur Uluwatu pada zaman kedatangan Dang Hyang Dwijendra pada abad ke-16 Masehi.&nbsp;Di Pura Dalem Jurit ini terdapat tiga patung yaitu patung Brahma, Ratu Bagus Dalem Jurit dan Wisnu. Ratu Bagus Dalem Jurit itulah sesungguhnya Dewa Siwa Rudra dalam wujud Murti Puja. Pemujaan energi Tri Murti dengan sarana patung ini merupakan peninggalan sistem pemujaan Tuhan dengan sarana patung dikembangkan dengan sistem pelinggih. Karena saat beliau datang ke Pura Dalem Jurit itu sistem pemujaan di Pura Luhur Uluwatu masih sangat sederhana karena kebutuhan umat memang juga masih sederhana saat itu.&nbsp;Pura Luhur Uluwatu juga memiliki beberapa pura Prasanak atau Jajar Kemiri. Pura Prasanak tersebut antara lain Pura Parerepan di Desa Pecatu, Pura Dalem Kulat, Pura Karang Boma, Pura Dalem Selonding, Pura Pangeleburan, Pura Batu Metandal dan Pura Goa Tengah. Semua Pura Prasanak tersebut berada di sekitar wilayah Pura Luhur Uluwatu di Desa Pecatu. Umumnya Pura Kahyangan Jagat memiliki Pura Prasanak.</p>\r\n<p style=\"text-align: justify;\"><strong>**Piodalan**</strong></p>\r\n<p style=\"text-align: justify;\">Upacara piodalan atau sejenis hari besarnya Pura Luhur Uluwatu pada hari Selasa Kliwon Wuku Medangsia atau setiap 210 hari</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><strong>**Denah Pura**</strong></p>'),
(15, 'Pusering Jagat', '5079pusering-jagat-1.jpg', -8.5136956778456, 115.293640390213, 'Pejeng, Tapaksiring, Kec. Gianyar,Bali', '<p style=\"text-align: justify;\"><strong>**Sejarah Pura**</strong></p>\r\n<p style=\"text-align: justify;\">Dalam Lontar Kusuma Dewa itu Pura Pusering Jagat dinyatakan sebagai tempat pemujaan Batara Amangkurat. Artinya di Pura Pusering Jagat ini Tuhan dipuja sebagai dewa penuntun mereka yang sedang memangku jabatan menata kehidupan rakyat. Penguasa itu akan mengabdi pada yang dikuasai apabila mereka yang berkuasa itu adalah mereka yang memiliki sikap hidup yang religius. Tanpa religiusitas yang kuat penguasa dapat berbuat sewenang-wenang pada rakyat yang dikuasainya. Di Pura Pusering Jagat ini palinggih yang paling utama adalah Palinggih Ratu Pusering Jagat.&nbsp;Di samping itu terdapat palinggih yang disebut Gedong Purusa. Di palinggih ini terdapat simbol Purusa dan Pradana yang digambarkan dengan alat reproduksi laki-laki dan perempuan. Dalam ajaran Samkhya Yoga, Purusa dan Pradana ini adalah ciptaan Tuhan (Iswara) yang pertama. Purusa adalah benih-benih kejiwaan, sedangkan Pradana adalah benih-benih kebendaan. Melalui Purusa dan Pradana inilah Tuhan menciptakan kehidupan yang sejahtera untuk mengisi alam semesta ini. Hal ini juga berarti para penguasa yang memuja Tuhan di Pura Pusering Jagat ini diharapkan mendapatkan kekuatan spiritual untuk menyeimbangkan eksistensi Purusa dan Pradana agar terus bersinergi. Dengan kuatnya sinergi Purusa atau unsur kejiwaan dengan Pradana unsur kebendaan maka akan terciptalah berbagai sumber kehidupan untuk mewujudkan kehidupan yang sejahtera lahir batin. Swadharma utama para penguasa rakyat (Sang Amangkurat) adalah mengupayakan terciptanya nilai-nilai kejiwaan dan kebendaan secara berkesinambungan untuk membangun manusia dan masyarakat yang semakin berkualitas. Di samping Palinggih Gedong Purusa ada Palinggih Ratu Sidakarya. Palinggih ini sebagai sarana memuja Tuhan untuk menguatkan spiritualitas umat yang memuja Tuhan untuk mencapai keberhasilan dalam kerjanya (sidhakarya). Tujuan memuja Tuhan untuk meningkatkan etos kerja umat dalam menyelenggarakan kehidupannya.&nbsp;Tujuan pemujaan Tuhan di Pura Sad Kahyangan di Bali memang untuk menegakkan Sad Kerti yaitu Atma Kerti, Samudra Kerti, Wana Kerti, Danu Kerti, Jagat Kerti dan Jana Kerti. Sad Kerti itu enam upaya untuk menjaga eksistensi kesucian atman, fungsi samudera, hutan, sumber air, sistem sosial dan individu yang solid. Di timur Gedong Purusa terdapat peninggalan kuno berbentuk bejana yang disebut sangku sudamala. Bejana ini sebagai simbol wadah air suci untuk menyucikan hidup manusia. Karena dengan kesucian itulah dharma dapat ditegakkan dalam hidup ini. Di sangku sudamala ini ada gambar yang menandakan angka tahun Saka 1251. Di sebelah kanan Palinggih Sidakarya terdapat Palinggih Catur Muka. Palinggih ini sebagai media pemujaan Dewa Catur Loka Pala manifestasi Tuhan sebagai pelindung empat arah. Lewat pemujaan Tuhan sebagai Catur Muka yaitu Dewa Iswara, Dewa Brahma, Dewa Maha Dewa dan Dewa Wisnu ini dimohonkan terciptanya sumber-sumber kehidupan berupa rasa aman dan sejahtera di semua penjuru dunia. Hal ini dimaksudkan untuk memohon adanya pemerataan yang adil untuk memperoleh kehidupan yang aman dan sejahtera di semua penjuru yang mesti diupayakan oleh mereka yang memegang jabatan untuk melayani publik atau jagat.</p>\r\n<p style=\"text-align: justify;\"><strong>**Piodalan**</strong></p>\r\n<p style=\"text-align: justify;\">Piodalan di Pura Pusering Jagat jatuh pada&nbsp;Anggara Keliwon Medangsi</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><strong>**Denah Pura**</strong></p>\r\n<p style=\"text-align: justify;\">1.Bale Gong</p>\r\n<p style=\"text-align: justify;\">2.Panggungan</p>\r\n<p style=\"text-align: justify;\">3.Piyasan</p>\r\n<p style=\"text-align: justify;\">4.Pelinggih Ratu Agung</p>\r\n<p style=\"text-align: justify;\">5.Gedong uluwatu</p>\r\n<p style=\"text-align: justify;\">6.Panggungan</p>\r\n<p style=\"text-align: justify;\">7.Sangku sudamala</p>\r\n<p style=\"text-align: justify;\">8.Gedong Purus</p>\r\n<p style=\"text-align: justify;\">9.ratu Sidakarya</p>\r\n<p style=\"text-align: justify;\">10.Catur Muka</p>\r\n<p style=\"text-align: justify;\">11.Titi Gonggang Ugal Agil</p>\r\n<p style=\"text-align: justify;\">12.Titi Gonggang Ugal Agil</p>\r\n<p style=\"text-align: justify;\">13.Pengaruman</p>\r\n<p style=\"text-align: justify;\">14.Telaga Pemaus</p>\r\n<p style=\"text-align: justify;\">15.Bale Gede</p>\r\n<p style=\"text-align: justify;\">16.Piyasan</p>\r\n<p style=\"text-align: justify;\">17.Ulun Danu</p>\r\n<p style=\"text-align: justify;\">18.Padmasana</p>\r\n<p style=\"text-align: justify;\">19.Gedong Nusa</p>\r\n<p style=\"text-align: justify;\">20.Pesimpenan</p>\r\n<p style=\"text-align: justify;\">21.Pelinggih Ratu Pusering Jagat</p>\r\n<p style=\"text-align: justify;\">22.Ratu Penyapa</p>\r\n<p style=\"text-align: justify;\">23.Pebatan</p>\r\n<p style=\"text-align: justify;\">24.Pebatan</p>\r\n<p style=\"text-align: justify;\">25.Penegtegan</p>\r\n<p style=\"text-align: justify;\">26.Bale Kulkul</p>\r\n<p style=\"text-align: justify;\">27.Wantilan</p>\r\n<p style=\"text-align: justify;\">28.Ratu Pande</p>\r\n<p style=\"text-align: justify;\">29.Tempat Sabungan</p>\r\n<p style=\"text-align: justify;\">30.Panggungan</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>'),
(16, 'sdsdf', '7966hydrangeas.jpg', 242424242, 24242424, 'wdawdawwwd', '<p>awdawwdawd</p>'),
(17, 'Bandung', '8865desert.jpg', -6.854005131509998, 107.68019977753059, 'Bandung', '<p>awaawawa</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `user`, `pass`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewgal`
-- (See below for the actual view)
--
CREATE TABLE `viewgal` (
`nama_galeri` varchar(255)
,`nama_tempat` varchar(255)
,`lat` double
,`lng` double
,`lokasi` varchar(255)
,`keterangan` text
);

-- --------------------------------------------------------

--
-- Structure for view `viewgal`
--
DROP TABLE IF EXISTS `viewgal`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewgal`  AS  select `a`.`nama_galeri` AS `nama_galeri`,`b`.`nama_tempat` AS `nama_tempat`,`b`.`lat` AS `lat`,`b`.`lng` AS `lng`,`b`.`lokasi` AS `lokasi`,`b`.`keterangan` AS `keterangan` from (`tb_galeri` `a` join `tb_tempat` `b` on(`a`.`id_tempat` = `b`.`id_tempat`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_galeri`
--
ALTER TABLE `tb_galeri`
  ADD PRIMARY KEY (`id_galeri`),
  ADD KEY `id_tempat` (`id_tempat`);

--
-- Indexes for table `tb_options`
--
ALTER TABLE `tb_options`
  ADD PRIMARY KEY (`option_name`);

--
-- Indexes for table `tb_tempat`
--
ALTER TABLE `tb_tempat`
  ADD PRIMARY KEY (`id_tempat`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_galeri`
--
ALTER TABLE `tb_galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tb_tempat`
--
ALTER TABLE `tb_tempat`
  MODIFY `id_tempat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_galeri`
--
ALTER TABLE `tb_galeri`
  ADD CONSTRAINT `id_tempat` FOREIGN KEY (`id_tempat`) REFERENCES `tb_tempat` (`id_tempat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
