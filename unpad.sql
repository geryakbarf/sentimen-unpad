-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2023 at 11:35 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `unpad`
--

-- --------------------------------------------------------

--
-- Table structure for table `bankkata`
--

CREATE TABLE `bankkata` (
  `kata` char(30) NOT NULL,
  `sentimen` char(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bankkata`
--

INSERT INTO `bankkata` (`kata`, `sentimen`) VALUES
('anjink', 'negatif'),
('bacot', 'negatif'),
('bajing', 'negatif'),
('souka', 'netral'),
('sugoi', 'positif');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `idKategori` int(11) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`idKategori`, `keterangan`) VALUES
(1, 'pendidikan'),
(2, 'alumni'),
(3, 'mahasiswa'),
(4, 'penerimaan'),
(5, 'penelitian');

-- --------------------------------------------------------

--
-- Table structure for table `kontensosmed`
--

CREATE TABLE `kontensosmed` (
  `idKonten` int(11) NOT NULL,
  `namaAkun` varchar(50) NOT NULL,
  `namaPengguna` varchar(50) NOT NULL,
  `tanggalPosting` date NOT NULL,
  `isiKonten` text NOT NULL,
  `jumlahLike` int(11) NOT NULL,
  `sosialMedia` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kontensosmed`
--

INSERT INTO `kontensosmed` (`idKonten`, `namaAkun`, `namaPengguna`, `tanggalPosting`, `isiKonten`, `jumlahLike`, `sosialMedia`) VALUES
(1469546100, 'calondrhsukses', 'bubbles²²', '2021-12-11', '@angga_fzn Pendidikan. Bisa lulus semua ujian tulis ataupun praktek, bisa lulus sebagai siswa berprestasi, bisa lulus dengan nilai memuaskan dan terbaik, bisa lolos seleksi ke perguruan tinggi, dan bisa liat senyum bapak ibu yang bangga liat aku dapet jurusan impian di UNPAD. Aamiin..', 6, 'Twitter'),
(1470363121, 'nafizabillqis', '????????Kang Yeyent???????? ????Indonesia?????????', '2021-12-13', '???????? *Santri Goes to Campus* ???????? \n\nSudah saatnya bagi sahabat kita, santri-santri baik alumni pesantren/ pelajar tingkat akhir Madrasah Aliyah ataupun santri/pelajar yg sekolah umum(SLTA/SMK) utk melanjutkan kuliah di UI , ITB, Unpad dan PTN Favorit lainnya\n@Alfanny1926 @FixJakarta https://t.co/cdUanFkuVc', 8, 'Twitter'),
(1470668631, 'unpad', 'Unpad', '2021-12-14', 'Ayo mahasiswa Unpad, isi Surat Keterangan Pendamping Ijazah (SKPI) \n\nTutorial pengisian https://t.co/t5sVgmicHy \n\nUntuk informasi selanjutnya, hubungi unit kerja pengelola kemahasiswaan fakultas atau https://t.co/1B3YJWIRgF\n\nDirektorat Kemahasiswaan dan Hubungan Alumni Unpad https://t.co/U8NaxiaRH0', 2, 'Twitter'),
(1470815288, 'fyalvs0n', 'Li♡⁎⁺˳✧', '2021-12-14', 'kurang jauh nih gue ambil ekstrak buat bahan penelitian skripsi ke unpad bulak balik????', 1, 'Twitter'),
(1471107369, 'imbangimedia', '#PKIInginMUIDibubarkan', '2021-12-15', 'Mahasiswa sebaiknya mulai berpikir untuk menduduki MK agar  mereka mengabulkan JR ini. Kalau tidak, #OligarkiLaknatullah bakal menghancurkan negeri kalian. Kalianlah harapan rakyat.  Cc @aliansibem_si @BEMUI_Official @bemkmipb @bemkm_ugm @bem_unpad @BEMUNJ_OFFICIAL @sbmitb https://t.co/W0MOKKo9qb https://t.co/mMidNS7NZH', 1, 'Twitter'),
(1471140453, 'Heydebu', 'Bukan angel', '2021-12-15', '@anak_unpad @billie9eulis @DraftAnakUnpad Setuju. Makannya saya mau banget masuk pendidikan fisika. Udah 4 kali milih jurusan ini, eh ditolak mulu.\nTaunya emang jodohnya di ungpad segala.', 0, 'Twitter'),
(1471336347, 'sigmame_', '✨', '2021-12-16', '@worksfess Aku pribadi lebih susah skripsian karena dos penguji jahat bgttttt Alhamdulillah aku kerja ditawarin sama alumni unpad jadi bisa dibilang ga sesusah paa skripsi.', 1, 'Twitter'),
(1471357751, 'anak_unpad', 'IG : anak.unpad', '2021-12-16', 'Kalau Bab IV doang yang tuntas, terus ntar Bab V nya mepet ngerjainnya. Apa kabar lampiran dll.\n\nTaunya dosen penguji baca Bab V nya dan teliti banget baca lampiran. \n\nLampiran tuh suka disepelein, hiks. Padahal lampiran tuh nunjukin keseriusan kalau kita beneran penelitian', 0, 'Twitter'),
(1471488740, 'rendeyyy', 'lil salmonella', '2021-12-16', 'potret mahasiswa unpad dan ui yang iri menfessnya ngga wibu seperti itb https://t.co/gTWal3cmTv', 2, 'Twitter'),
(1471645172, 'HelmiHelmimoze', 'helmi rachman', '2021-12-17', '@tempodotco Jk mengarang lebih prof sedikit. Pengangguran turun? Tetapi penerimaan negara defisit&amp; kriminal naik. Bisa sj Pph naik ttpi krn penghasilan naik dg jumlah pekerja tetap. ???????? \n@KemenkeuRI @KemnakerRI @bps_statistics @DitjenPajakRI @unpad @UnandOfficial @undip', 0, 'Twitter'),
(1471701390, 'bawaslukotabdg', 'Bawaslu Kota Bandung', '2021-12-17', '#SahabatBawaslu Koordinator Divisi Hukum Humas Data dan Informasi @bawaslukotabdg, Wawan Kurniawan, https://t.co/ig60HrZ1jG memberikan arahan kepada mahasiswa magang dari @ilpol_unpad yang berkaitan dengan tupoksi dan dinamika kerja pada divisi Hukum Humas Datin. https://t.co/tJnHtZhAIZ', 3, 'Twitter'),
(1472433504, 'bayubhar', 'Bharuna', '2021-12-19', 'Sekali2 kembali ke kampus, senang bisa ngajarin mahasiswa @unpad  tingkat TPB ttg mitigasi banjir ~ OKK RK064/ecotourism dibantu fasil dari @Palawa_Unpad https://t.co/XeGfJbV084', 4, 'Twitter'),
(1628710208, 'unpad', 'Unpad', '2023-02-23', '\"ChatGPT dan Perkembangan Large Language Model (LLM) pada Pendidikan Tinggi, Peluang atau Ancaman?\"\n\n???? Jumat, 24 Februari 2023\n⏰️ 09.00-11.35 WIB\n▶️ YouTube Elearning Unpad\n???? https://t.co/hfBteIvUNR\n???? Zoom\nMeeting ID: 991 2375 5113\nPaascode: liveunpad\n\n#Unpad https://t.co/9lQzRvNTNQ', 4, 'Twitter'),
(1630726679, 'unpad', 'Unpad', '2023-03-01', 'Prakualifikasi Ulang Pengadaan Jas Almamater Penerimaan Mahasiswa Baru Unpad Tahun 2023\n\nhttps://t.co/QlRtcmcXYd', 0, 'Twitter'),
(1630783131, 'disgurlsus', 'arju', '2023-03-01', '@sbmptnfess rata rata 88,6\nsekolah bukan top 1000\nnyantumin 2 sertif\nalumni yang lulus snm ada, dan lumayan banyak.\ndom jatim\nambil psikolog unpad, sama Unesa pend. tata boga.\naku ga condong kemana mana, dua duanya aku terima, mau masuk pilper atau pilked.. yang penting masuk jalur snbp', 5, 'Twitter'),
(1631172617, 'HMJ_Unpad', 'HMJ UNPAD', '2023-03-02', '[HARI ALUMNI] \n\nHalo, Penjelajah ????\n\nMasih ragu dengan prospek setelah lulus dari Jurnalistik? Takut sama hasil survei penyesalan masuk Jurnalistik? Bingung mau ngapain setelah lulus nanti? https://t.co/a7yuhzHXZe', 13, 'Twitter'),
(1631205428, 'unpad', 'Unpad', '2023-03-02', 'Pencapaian @rsgmunpad antara lain perolehan akreditasi “Paripurna” dari Lembaga Akreditasi Rumah Sakit Indonesia (LARSI) dan penetapan Rumah Sakit Pendidikan Utama untuk FKG Unpad oleh Menteri Kesehatan RI.\n\n#RSGMUnpad\n#Unpad\n#UniversitasPadjadjaran\n https://t.co/qkmdUKQgGW', 6, 'Twitter'),
(1631287588, 'SandiUsenk', 'SandiUsenk', '2023-03-02', 'https://t.co/rwm7X0NRNn\n\nSebagai bahan diskusi, bisa dibaca juga riset sy dengan @remotivi acara @HMJ_Unpad cukup representatif, dilihat dr narsum yg diundang oleh para calon jurnalis maskulin ini ????✌???? https://t.co/0hNAFqngV3', 2, 'Twitter'),
(1631520219, 'Sansrwa', 'bit ⩜⃝ ｡ﾟ.*･｡ﾟ| ITB \'23 aamiin', '2023-03-03', '@schfess Tergantung alumninya banyakan kemana, sekolahku jalurnya ke UI ITB selama ini, tapi jarang yang Unpad UGM karena alumni dikit', 0, 'Twitter'),
(1631645188, 'unpad', 'Unpad', '2023-03-03', 'Di masa depan digital, manusia dengan kualitas diri yang unik akan menjadi daya tarik terbesar. Namun, keterampilan yang dimiliki juga harus relevan dengan perkembangan dunia digital.\n\n#Unpad\n#UniversitasPadjadjaran\n https://t.co/gnxRFeeMaC', 2, 'Twitter'),
(1631863136, 'awadailyy', '????', '2023-03-04', '@sbmptnfess ada mahasiswa unpad ga terutama humas/ilpus perasaan susah bgt nyarinya, pdhl mau tanya” ????????????????????????????', 0, 'Twitter'),
(1631936404, 'nailanaee', 'Naila', '2023-03-04', '@budichadonam @sigantengaduhai @txtdrjkt Bandung jg punya kok trans parahyangan kayaknya, lg itu liat depan unpad', 0, 'Twitter'),
(1631936717, 'RadenRoro93', 'Raden Roro', '2023-03-04', 'dr.Ryu Hassan bedah Saraf UNPAD ex teacher nya Hailey Sampe Tondok pernah marah2 di Twitter kartunya kena hack,di saat yg bersamaan saat Tia Caroline d Jerman jg kehilangan uang d blocked Account Fintiba Twice d Hannover,Goe', 0, 'Twitter'),
(1631938129, 'syalahtiga', 'o_o', '2023-03-04', '@cookiesdery @schfess denger denger unpad biasanya ga umumin sih nder, tapii gue sendiri berharapp ga berharap berharap tau tapi kalau udh tau takutt kepikiran jadi pasrah duluan ????', 0, 'Twitter'),
(1631939233, 'renjun_unpad', 'teman renjun', '2023-03-04', 'RT @jjarchiv: happy 7 years to this. they were born to be loved. ❤️ https://t.co/5lMaT6B9l6', 0, 'Twitter'),
(1631939514, 'kunwarpreet_08', 'Kunwarpreet Singh', '2023-03-04', '@ChetanAswathan1 @naruto_hinata71 @virsanghvi Literate is one who has degree unlike chaiwala so i know you are trying to say chaiwala modi is literate despite not having a degree but accept truth that modi is unpad gvar chaiwala who only knows how to win elections by any means even if arresting opponent leaders in fake cases', 1, 'Twitter'),
(1631940017, 'syalahtiga', 'o_o', '2023-03-04', '@schfess me, bismillah calon maba fkg unpad 2023 ????', 0, 'Twitter'),
(1631941360, 'kamusbesarkbbi', 'Kamus Besar Bahasa Indonesia KBBI', '2023-03-04', '#Pakar Unpad Anggap Wajar Jika Bahasa Sunda Mulai Memudar di Jabar - Head Topics https://t.co/vkcfal1umO #kamus #kbbi #bahasa', 0, 'Twitter'),
(1631943447, 'venu_mede', 'Venu Mede (Guru) BRS ♥️♥️', '2023-03-04', '@VennelaPalle Pakistan velli okadu unpad gadu biryani thini chai ☕️ thagi vachindu falthu cheypedhe nithulu dhuredhe d…..lo ????????????????', 0, 'Twitter'),
(1631946197, 'unafferse', 'ns', '2023-03-04', 'sendirian di unpad ????‍♀️berdua deh, sama mbak nozy ????', 0, 'Twitter'),
(1631946204, 'unafferse', 'ns', '2023-03-04', 'naik ke lantai tiga dan freezing di unpad DAN GAADA TEMEN⁉️ #tega', 0, 'Twitter'),
(1631947569, 'DraftAnakUnpad', 'UNPADFESS X DCLEANS SHOE CARE', '2023-03-04', '- UNPAD, R nya itu Ramadhan', 0, 'Twitter'),
(1631947722, 'himatikaunpad', 'Himatika FMIPA Unpad', '2023-03-04', 'Terima kasih!\nWassalamu\'alaikum Warahmatullahi Wabarakatuh \n\nDepartemen Keilmuan \nPH Himatika FMIPA Unpad 2023\nKabinet Armadyasa\nBangun kebersamaan wujudkan impian', 0, 'Twitter'),
(1631948802, 'malfinkurniawan', 'Malfinkurniawan', '2023-03-04', '@RIN_LPR @moviemenfes Budak unpad gening', 0, 'Twitter'),
(1631951559, 'zpdlltk', 'pahitmanis', '2023-03-04', '15.10 -&gt; otw dari unpad du\n16.34 -&gt; baru keluar dari tol m toha https://t.co/Vi07A62BO4', 0, 'Twitter'),
(1631951887, 'CharuKumbhare', 'CHARUDATT KUMBHARE', '2023-03-04', '@WeThePeople3009 I feel shameful that this clown ???? modu is our pm. Fucking GAWAR UNPAD JAHIL hai ye joker ????...', 0, 'Twitter'),
(1631952153, 'VikramK44239022', 'Vikram Kashyap', '2023-03-04', '@ModiLeDubega Haan jese aapne bilkul pressure nahi daala apne dono beto pe,unpad hi rehne diya', 0, 'Twitter'),
(1631952809, 'cheddybaby', 'Migraine Baby', '2023-03-04', '@Syed_Azhar_ @RohitKu28736355 abe unpad gawar , ye le 2020 parasite ki sab oscar nominated movies ko campaign karna padtha h ???????????????? , pata chal gay apni aukat kya h , chal beta https://t.co/af8s9bnrRA', 0, 'Twitter'),
(1631953337, 'renjun_unpad', 'teman renjun', '2023-03-04', 'RT @renjunbase: -rj Cokiber 144p tapi tetap kiyooWOOOKKKK\n\nCr. POPCORNBOBO323\n https://t.co/TPjtCvQHyZ', 0, 'Twitter'),
(1631953383, 'renjun_unpad', 'teman renjun', '2023-03-04', 'RT @jisungojek: REHEARSAL MY FIRST AND LAST???????????????????????????????????????????????????????????????????? https://t.co/Ei6OpV6j7O', 0, 'Twitter'),
(1631953539, 'cinnamonyw', '･◡･', '2023-03-04', 'unpad edan', 0, 'Twitter'),
(1631953664, 'cinnamonyw', '･◡･', '2023-03-04', 'skolah lanjutan kh dia tuh kok blm 3 tahun sma dh ke unpad aj', 0, 'Twitter'),
(1631953694, 'sharadku69', 'sharad', '2023-03-04', '@Ujjwalk1970 @ArvindKejriwal unpad court proof dekhti hai. \n\ntera kejriwal wohi hai jisne  bola tha ki kisi bhi neta pe illjam lage to usko resign ker dena chiye.', 0, 'Twitter'),
(1631954067, 'renjun_unpad', 'teman renjun', '2023-03-04', 'RT @nadoyiueo: wow wow nct dream udah di venue tds 2 jakarta kah? renjun ???????? https://t.co/1H9BisgGQD', 0, 'Twitter'),
(1631954345, 'Finnyalf', 'Finny Alfiati', '2023-03-04', '@zmilatania Jadi, anak kamu mau fkg unpad jugaa khaaann?? :p', 0, 'Twitter'),
(1631954490, 'renjun_unpad', 'teman renjun', '2023-03-04', 'RT @introblues: absolutely diabolical putting THESE three in a situation like this like specifically these three people', 0, 'Twitter'),
(1631954983, 'renjun_unpad', 'teman renjun', '2023-03-04', 'RT @ongsehdoy: JANGAN LUPA INI!???? https://t.co/a1jRXxrmB8', 0, 'Twitter');

-- --------------------------------------------------------

--
-- Table structure for table `sentimen`
--

CREATE TABLE `sentimen` (
  `idSentimen` int(11) NOT NULL,
  `idKonten` int(10) NOT NULL,
  `sentimenPositif` float NOT NULL,
  `sentimenNegatif` float NOT NULL,
  `sentimenNetral` float NOT NULL,
  `sentimen` char(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sentimen`
--

INSERT INTO `sentimen` (`idSentimen`, `idKonten`, `sentimenPositif`, `sentimenNegatif`, `sentimenNetral`, `sentimen`) VALUES
(1, 1469546100, 0.8, 0.1, 0.1, 'positif'),
(2, 1470815288, 0.333, 0.333, 0.333, 'positif'),
(3, 1471488740, 0.571, 0.286, 0.143, 'positif'),
(4, 1470363121, 0.5, 0.25, 0.25, 'positif'),
(5, 1471645172, 0.333, 0.333, 0.333, 'positif'),
(6, 1471140453, 0.25, 0.5, 0.25, 'negatif'),
(7, 1471357751, 0.25, 0.5, 0.25, 'negatif'),
(8, 1471107369, 0.143, 0.571, 0.286, 'negatif'),
(9, 1471336347, 0.286, 0.571, 0.143, 'negatif'),
(10, 1471701390, 0.25, 0.25, 0.5, 'netral'),
(11, 1470668631, 0.286, 0.143, 0.571, 'netral'),
(12, 1472433504, 0.5, 0.25, 0.25, 'positif'),
(13, 1628710208, 0.333, 0.333, 0.333, 'positif'),
(14, 1631287588, 0.667, 0.167, 0.167, 'positif'),
(15, 1631645188, 0.4, 0.4, 0.2, 'positif'),
(16, 1630783131, 0.941, 0.029, 0.029, 'positif'),
(17, 1631205428, 0.25, 0.5, 0.25, 'negatif'),
(18, 1631863136, 0.2, 0.4, 0.4, 'negatif'),
(19, 1631172617, 0.056, 0.889, 0.056, 'negatif'),
(20, 1630726679, 0.25, 0.5, 0.25, 'negatif'),
(21, 1631520219, 0.25, 0.25, 0.5, 'netral'),
(22, 1631939514, 0.333, 0.333, 0.333, 'positif'),
(23, 1631948802, 0.25, 0.5, 0.25, 'negatif'),
(24, 1631946204, 0.25, 0.25, 0.5, 'netral'),
(25, 1631947722, 0.5, 0.25, 0.25, 'positif'),
(26, 1631947569, 0.333, 0.333, 0.333, 'positif'),
(27, 1631946197, 0.333, 0.333, 0.333, 'positif'),
(28, 1631943447, 0.333, 0.333, 0.333, 'positif'),
(29, 1631941360, 0.333, 0.333, 0.333, 'positif'),
(30, 1631940017, 0.333, 0.333, 0.333, 'positif'),
(31, 1631939233, 0.333, 0.333, 0.333, 'positif'),
(32, 1631936404, 0.333, 0.333, 0.333, 'positif'),
(33, 1631938129, 0.25, 0.5, 0.25, 'negatif'),
(34, 1631936717, 0.25, 0.5, 0.25, 'negatif'),
(35, 1631951559, 0.25, 0.5, 0.25, 'negatif'),
(36, 1631952809, 0.333, 0.333, 0.333, 'positif'),
(37, 1631952153, 0.333, 0.333, 0.333, 'positif'),
(38, 1631951887, 0.333, 0.333, 0.333, 'positif'),
(39, 1631953664, 0.333, 0.333, 0.333, 'positif'),
(40, 1631953383, 0.333, 0.333, 0.333, 'positif'),
(41, 1631953337, 0.5, 0.25, 0.25, 'positif'),
(42, 1631953694, 0.25, 0.5, 0.25, 'negatif'),
(43, 1631953539, 0.25, 0.5, 0.25, 'negatif'),
(44, 1631954067, 0.667, 0.167, 0.167, 'positif'),
(45, 1631954490, 0.333, 0.333, 0.333, 'positif'),
(46, 1631954345, 0.5, 0.25, 0.25, 'positif'),
(47, 1631954983, 0.25, 0.5, 0.25, 'negatif');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `namaAdmin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `namaAdmin`) VALUES
('admin', '*4ACFE3202A5FF5CF467898FC58AAB1D615029441', 'Gery Ahmad Fauzi'),
('geryaf', '*00A51F3F48415C7D4E8908980D443C29C69B60C9', 'Gery Akbar Fauzi'),
('khrisna', '*00A51F3F48415C7D4E8908980D443C29C69B60C9', 'Khrisna'),
('okto', '*00A51F3F48415C7D4E8908980D443C29C69B60C9', 'Oktovian');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bankkata`
--
ALTER TABLE `bankkata`
  ADD PRIMARY KEY (`kata`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`idKategori`);

--
-- Indexes for table `kontensosmed`
--
ALTER TABLE `kontensosmed`
  ADD PRIMARY KEY (`idKonten`);

--
-- Indexes for table `sentimen`
--
ALTER TABLE `sentimen`
  ADD PRIMARY KEY (`idSentimen`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `idKategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sentimen`
--
ALTER TABLE `sentimen`
  MODIFY `idSentimen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
