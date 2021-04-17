-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2021 at 02:52 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `article`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `short_description` text NOT NULL,
  `content` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `title`, `short_description`, `content`, `image`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'Pengadilan Nurenberg,Eksekusi Mati bagi Para Petinggi Nazi', 'Para Petinggi Nazi akhirnya diadili di pengadilan Nurenberg atas Kejahatan Perang mereka', '<p><strong>Bosscha.id &ndash;&nbsp;</strong>Pasca berakhirnya Perang Dunia Kedua, pihak sekutu membentuk pengadilan militer internasional pertama yang bertujuan untuk menghukum pejabat senior politik dan militer dengan dakwaan kejahatan perang dan kejahatan serius lainnya.</p>\r\n<p>Empat negara sebagai kekuatan utama sekutu antara lain Perancis, Uni Soviet, Inggris, dan Amerika Serikat membentuk International Military Tribunal (IMT) di Nuremberg (atau dalam ejaan lain disebut N&uuml;rnberg), Jerman untuk menghukum penjahat perang dari &ldquo;<em>European Axis</em>&rdquo;. IMT (selanjutnya dikenal juga dengan Nuremberg Tribunal) melaksanakan persidangan baik terhadap pemimpin politik dan militer Nazi, maupun terhadap Organisasi sayap Nazi dan Afiliasinya.</p>\r\n<p>Hari ini tepatnya 74 tahun yang lalu, atau pada 16 Oktober 1946 adalah hari yang kelam bagi para petinggi Nazi, pemerintahan berkuasa di Jerman semasa Adolf Hitler. Mereka dihukum gantung setelah divonis bersalah atas kejahatan perang dan pelanggaran HAM.</p>\r\n<p>Pada masa kejayaannya, Nazi tercatat telah melakukan pembantaian &ldquo;Holocaust&rdquo; terhadap 11 juta orang, sebagian besar korban merupakan bangsa Yahudi. Lebih dari satu juta anak Yahudi tewas dalam Holocaust, demikian pula dengan dua juta wanita Yahudi dan tiga juta pria Yahudi.</p>\r\n<p>Para petinggi Nazi yang dieksekusi itu termasuk Joachim von Ribbentrop selaku Menteri Luar Negeri Nazi, Hermann Goering &ndash; Pendiri Gestapo dan Kepala Angkatan Udara Jerman, serta Wilhelm Frick selaku Menteri Dalam Negeri.</p>\r\n<p>Eksekusi mati terhadap 10 petinggi Nazi ini dilakukan oleh aparat gabungan internasional dari Amerika Serikat, Uni Soviet, Prancis dan Inggris. Mereka digantung satu per satu, kecuali Hermann Goering yang dikenal sebagai &ldquo;pemimpin pembantaian agresif terhadap Yahudi&rdquo; yang memilih untuk bunuh diri di sel penjara dengan menenggak kapsul sianida pada malam sebelum eksekusi.</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://www.history.com/.image/ar_4:3%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTU3ODc3NjU2NzU0NzkyMTU5/the-executions-at-nuremburg.jpg\" alt=\"\" width=\"500\" height=\"375\" /></p>\r\n<p><em>Foto salah satu petinggi nazi akan diekskusi</em></p>\r\n<p>Seperti dilansir&nbsp;<em>History.com,</em>&nbsp;selain petinggi Nazi yang dieksekusi mati, ada sekitar 7 orang lainnya yang dijatuhi hukuman penjara berkisar dari 10 tahun penjara hingga hukuman seumur hidup. Sementara tiga petinggi lainnya dibebaskan karena dinyatakan tak bersalah.</p>\r\n<p>Satu lagi pemimpin Nazi, Martin Bormann, melarikan diri saat persidangan. Tapi ia tetap dijatuhi hukuman mati secara&nbsp;<em>in absentia,</em>&nbsp;artinya divonis meski yang bersangkutan tidak hadir di persidangan. Kabarnya, Martin kemudian tewas di Berlin saat perang.</p>\r\n<p>Menurut catatan sejarah, Pemimpin Nazi Adolf Hitler pun tewas bunuh diri dengan tembakan pada 30 April 1945 di Fuhrerbunker, Berlin. Istrinya, Eva juga bunuh diri dengan meminum kapsul sianida</p>\r\n<p>Sesuai dengan instruksi Hitler sebelumnya, jasad Sang Fuhrer dan istri dibawa menaiki tangga melalui pintu keluar darurat bunker, disiram bensin, dan dibakar di taman Reich Chancellery di luar bunker.</p>\r\n<p>Berdasarkan rekaman dari arsip Uni Soviet, sisa-sisa bakaran Hitler dan istri sempat dikuburkan, tapi kemudian kembali digali, dikremasi dan abunya disebar.</p>\r\n<p>Dakwaan terkait kejahatan perang yag dilakukan Nazi ini mulai dimasukkan ke tribunal setahun sebelumnya yaitu pada tanggal 18 Oktober 1945 di Berlin (sebagai&nbsp;<em>Permanent Seat of the Tribunal</em>) oleh para prosecutor sebagai penjahat perang. Salinan dakwaan juga dibuat dalam bahasa Jerman yang diserahkan kepada terdakwa 30 (tiga puluh) hari sebelum persidangan dimulai.</p>\r\n<p>Persidangan pun dimulai pada tanggal 20 November 1945 dalam 4 (empat) bahasa (Bahasa Inggris, Russia, Perancis, dan Jerman), seluruh terdakwa kecuali Bormann yang&nbsp;<em>in absentia</em>&nbsp;menyatakan tidak bersalah terhadap segala dakwaan prosecutor.</p>\r\n<p>33 orang saksi&nbsp;<em>a charge</em>&nbsp;yang secara langsung bersaksi di depan persidangan serta 61 (enam puluh satu) orang saksi&nbsp;<em>a decharge</em>&nbsp;yang ditambah dengan sembilan belas terdakwa yang secara langsung bersaksi di depan persidangan. Selanjutnya sebanyak 143 (seratus empat puluh tiga) saksi memberikan kesaksian yang meringankan terdakwa dalam jawaban tertulis kepada persidangan.</p>\r\n<p>Mengenai dakwaan terhadap organisasi sebanyak 38.000&nbsp;<em>affidavit</em>&nbsp;yang ditandatangani oleh 155.000 orang dimasukkan sebagai bukti di depan persidangan. Persidangan sendiri mendengarkan keterangan 22 orang saksi untuk organisasi sampai akhirnya sesi untuk mendengarkan keterangan baik dari saksi ataupun&nbsp;<em>counsel</em>&nbsp;ditutup pada tanggal 31 Agustus 1946.</p>\r\n<p>Lalu, pembacaan putusan pun dilaksanakan dalam 2 hari pada tanggal 30 September 1946 dan 1 Oktober 1946, Sebanyak 12 orang dihukum mati dengan cara digantung, 3 orang dihukum penjara seumur hidup, 4 orang dipenjara antara 10 hingga 20 tahun, dan 3 orang dinyatakan bebas dari segala dakwaan.</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/vUK_ou_mTQE\" width=\"560\" height=\"314\" allowfullscreen=\"allowfullscreen\"></iframe></p>\r\n<p>diambil dari Bosscha.id</p>', '/photos/3/nurrenberg.jpg', 3, '2021-02-15 09:09:56', '2021-02-15 02:09:56'),
(3, 'Asal Usul tendangan pinalti Panenka', 'Sejarah ekskusi pinalti gaya panenka yang ditemukan oleh Pemain Bola asal Cekoslowakia Antonin Panenka', '<p>&nbsp;</p>\r\n<p>Di balik tendangan penalti yang sangat melegenda itu rupanya ada nama seorang pemain sepak bola genius bernama Antonin Panenka.</p>\r\n<p>Panenka adalah seorang pemain yang berasal dari Cekoslovakia (saat ini Republik Ceska).</p>\r\n<p>Tendangan penalti tersebut diciptakan oleh Panenka dalam laga final Piala Eropa 1976 melawan timnas Jerman Barat.</p>\r\n<p>Dalam laga yang harus diselesaikan melalui&nbsp;adu penalti tersebut, Cekoslovakia sempat unggul terlebih dahulu lewat dua pemainnya, Jan Svehlik dan Karol Dobias.</p>\r\n<p>Svehlik berhasil mencetak gol cepat pada menit ke-8 setelah menerima umpan silang dari Zdenek Nehoda.</p>\r\n<p>Gol kedua Cekoslovakia lahir pada menit ke-25 setelah Dobias berhasil memperdaya kiper Jerman Barat, Sepp Maier.</p>\r\n<p>Kapten Jerman Barat saat itu, Franz Beckenbauer, mencoba membuang bola set piece dari pemain Cekoslovakia.</p>\r\n<p>Akan tetapi, bola justru jatuh ke kaki Dobias yang berhasil melepaskan tendangan menyusur tanah ke arah kiri bawah gawang Maier, 2-0 untuk Cekoslovakia.</p>\r\n<p>Tiga menit berselang, Jerman Barat berhasil membalas lewat kaki Dieter Mueller.</p>\r\n<p>Mueller mencetak gol cantik dengan melakukan tendangan first time usai memanfaatkan umpan silang melambung dari Rainer Bonhof.</p>\r\n<p>Skor 2-1 bertahan hingga jeda turun minum untuk keunggulan Cekoslovakia.</p>\r\n<p>Cekoslovakia bisa langsung memperoleh kemenangan kalau saja pemain sayap Jerman Barat, Bernd Holzenbein, tak mencetak gol.</p>\r\n<p>Holzenbein berhasil mencetak gol lewat sundulan usai memanfaatkan tendangan pojok dari sisi kanan gawang Cekoslovakia.</p>\r\n<p>Skor 2-2 terus bertahan hingga adu penalti usai kedua tim bermain sama kuat di babak perpanjangan waktu.</p>\r\n<p>Babak adu penalti dimenangkan oleh Cekoslovakia dengan skor 5-3.</p>\r\n<p>Kelima penendang Cekoslovakia berhasil melaksanakan tugasnya dengan baik.</p>\r\n<p>Sementara itu, hanya ada tiga pemain Jerman Barat yang berhasil menjalankan tugas sebagai algojo penalti.</p>\r\n<p>Hal unik terjadi ketika penendang terakhir, Panenka, mengambil tugas sebagai algojo penalti.</p>\r\n<p>Panenka saat itu didapuk sebagai penendang terakhir dari pihak Cekoslovakia.</p>\r\n<p>Kedudukan saat itu sudah menunjukkan 4-3 yang artinya jika Panenka berhasil melaksanakan tugasnya, Cekoslovakia keluar sebagai juara.</p>\r\n<p>Alih-alih melepaskan tendangan keras, Panenka justru memilih men-<em>chip</em>&nbsp;bola ke arah tengah.</p>\r\n<p>Maier yang saat itu menjaga gawang terkecoh dengan menubruk ke arah kiri.</p>\r\n<p>Tendangan penalti itu tak hanya menjadi sejarah Cekoslovakia yang menjuarai Piala Eropa 1976, tapi juga menjadi momen lahirnya tendangan penalti Panenka di dunia sepak bola.</p>\r\n<p>Panenka yang pernah diwawancarai oleh sebuah radio internasional Republik Ceska mengaku sudah memiliki impian untuk melakukan teknik tersebut.</p>\r\n<p>Legenda&nbsp;yang saat laga final&nbsp;1976 bermain sebagai gelandang serang menyebut telah melatih teknik itu selama dua tahun.</p>\r\n<p>\"Sekitar dua tahun sebelum Piala Eropa 1976, saya mulai melatih teknik itu,\" ujar Panenka seperti dilansir dari Kompas.com.</p>\r\n<p>\"Saya pertama kali melakukannya pada laga uji coba di Liga Cekoslovakia dan berhasil.\"</p>\r\n<p>\"Sejak saat itu, saya sudah bermimpi ingin melakukannya lagi di ajang sebesar Piala Eropa.\"</p>\r\n<p>\"Mungkin sudah takdir Tuhan saya bisa melakukannya pada laga final Piala Eropa.\"</p>\r\n<p>\"Saya saat itu yakin 100 persen dengan men-<em>chip</em>&nbsp;bola saya akan mencetak gol,\" kata Panenka melanjutkan.</p>\r\n<p>Cuplikan tendangan panenka</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/ROG4-QPIDgo\" width=\"560\" height=\"314\" allowfullscreen=\"allowfullscreen\"></iframe></p>\r\n<p>Diambil dari sports.com</p>\r\n<p>&nbsp;</p>', '/photos/3/panenka.jpg', 3, '2021-04-17 12:51:22', '2021-04-17 05:51:22'),
(4, 'Tiga Penyebab Utama Keruntuhan Uni Soviet', 'Penyebab penyebab keruntuhan Uni Soviet setelah kemenangan mereka di Perang Dunia ke 2 atas Nazi German', '<h3>1. Harga minyak dan inefisiensi ekonomi</h3>\r\n<p>&ldquo;Tanggal keruntuhan Uni Soviet sebetulnya sudah diketahui. Itu bukan pada hari ditandatanganinya&nbsp;<a href=\"https://www.prlib.ru/en/history/619792\" target=\"_blank\" rel=\"noopener noreferrer\">Piagam Belovezha</a>&nbsp;atau pada&nbsp;<a href=\"https://id.rbth.com/politics/2016/09/02/mengapa-upaya-kudeta-1991-untuk-selamatkan-soviet-gagal_626389\">kudeta Agustus</a>&nbsp;(1991), melainkan pada 13 September 1985 ketika Menteri Perminyakan Arab Saudi, (Ahmed) Yamani, menyatakan bahwa negaranya&nbsp;keluar dari perjanjian pembatasan produksi minyak dan mulai meningkatkan produksinya di pasar minyak. Setelah itu, Arab Saudi meningkatkan produksi minyak sebesar 5,5 kali lipat dan harga minyak turun 6,1 kali lipat,&rdquo;&nbsp;<a href=\"http://www.sfilatov.ru/publication/165\" target=\"_blank\" rel=\"noopener noreferrer\">tulis</a>&nbsp;Egor Gaidar, pakar reformasi ekonomi di Rusia pasca-Soviet pada 1990-an dan sekaligus pelaksana tugas perdana menteri Rusia pada 1992</p>\r\n<p><img src=\"https://awsimages.detik.net.id/visual/2018/03/27/850da74c-5983-4c9f-b4cf-68b49180a713.jpeg?w=650\" alt=\"\" width=\"500\" height=\"333\" /></p>\r\n<p>Gambar diambil dari detik.com</p>\r\n<p>&ldquo;Ketika harga minyak jatuh, seluruh kemungkinan untuk menghasilkan pendapatan (untuk Uni Soviet) pun runtuh,&rdquo; kata Pyotr Aven</p>\r\n<p>Pyotr Aven, yang kala itu menjabat sebagai menteri hubungan ekonomi luar negeri dalam kabinet Gaidar, dan kini merupakan seorang pengusaha berpengaruh, mendukung interpretasi tersebut. &ldquo;Itu adalah titik balik utama pada 1986. Ketika harga minyak jatuh, seluruh kemungkinan untuk menghasilkan pendapatan (untuk Uni Soviet) pun runtuh.&rdquo; Aven menyebutkan, pendapatan minyak mendanai kebutuhan biji-bijian (17 persen biji-bijian Soviet diimpor). Uang itu juga digunakan untuk &ldquo;menyuap para elite&rdquo; dalam bentuk barang jadi yang dibeli pemerintah dari Barat (Uni Soviet tak mampu menghasilkan barang-barang dengan kualitas sebaik buatan Barat) supaya barang-barang itu tersedia hingga ke lapisan atas. Di sisi lain, turunnya harga minyak ternyata bertepatan dengan perlambatan ekonomi yang, menurut Aven, dimulai pada 1960-an. Tren jangka panjang ini, yang diperparah dengan penurunan pendapatan minyak,&nbsp;<a href=\"https://tvrain.ru/articles/pjat_prichin_raspada_sssr_lektsija_petra_avena-390465/\" target=\"_blank\" rel=\"noopener noreferrer\">menyebabkan</a>&nbsp;runtuhnya model ekonomi Soviet.</p>\r\n<p>Pada saat yang sama, beberapa ahli percaya bahwa, terlepas dari inefisiensi ekonomi Soviet dan kelangkaan barang-barang pokok, situasi kala itu tidak terlalu buruk. Vladimir Shlapentokh, sosiolog terkenal Soviet yang kemudian menjadi warga negara Amerika, mengatakan, &ldquo;Dalam dekade terakhir (keberadaan Uni Soviet), tingkat pertumbuhan ekonomi terus menurun, kualitas barang memburuk, dan kemajuan teknologi melambat &hellip;. Meski demikian, kondisi kala itu sebetulnya lebih bersifat kronis daripada fatal/mematikan.&nbsp;Layaknya orang yang sakit, masyarakat yang sakit pun bisa&nbsp;<a href=\"http://ttolk.ru/articles/vladimir_shlyapentoh_sssr_ruhnul_iz-za_neostalinskih_reform_gorbachyova\" target=\"_blank\" rel=\"noopener noreferrer\">berumur panjang</a>&nbsp;&hellip;.&rdquo; Memang, berdasarkan&nbsp;statistik resmi Soviet, PDB negara baru mengalami penurunan untuk pertama kalinya pada 1990 (setahun sebelum keruntuhan).</p>\r\n<h3>2. Konflik etnis</h3>\r\n<p>Di akhir \'80-an, pada masa Perestroika, terjadi peningkatan kekerasan yang disebabkan persaingan nasionalisme etnis di republik-republik Soviet. Contoh pertama kekerasan etnis terjadi pada akhir 1986 di ibu kota Kazakhstan, Almaty.&nbsp;Saat itu, anak-anak muda Kazakh yang tak puas dengan pengangkatan kepala republik mereka, yang merupakan&nbsp;seorang beretnis Rusia, berdemonstrasi hingga&nbsp;menyebabkan kerusuhan. Akhirnya, pemerintah mengirim pasukan untuk meredakan kerusuhan. Kemudian, ada pogrom (pembunuhan besar-besaran) di Kota Sumgait, Azerbaijan, dan aksi kekerasan di Tbilisi, Baku, dan tempat-tempat lain di seluruh negeri. Konflik paling berdarah terjadi di Karabakh antara Azerbaijan dan Armenia, yang kadang-kadang disebut sebagai &ldquo;<a href=\"https://www.vedomosti.ru/opinion/articles/2016/12/16/669922-alternativi-sssr\" target=\"_blank\" rel=\"noopener noreferrer\">salah satu pemicu politis utama</a>&nbsp;yang mengawali&nbsp;disintegrasi Uni Soviet&rdquo;. Pada akhir 1980-an, konflik etnis berubah menjadi mematikan, menewaskan ratusan orang dalam pertempuran.</p>\r\n<p><img src=\"https://cdni.rbth.com/rbthmedia/images/2018.12/original/5c1d897f85600a643e7aeb17.jpg\" alt=\"Gambar diambil dari rbth.id\" width=\"500\" height=\"333\" /></p>\r\n<p>Gambar diambil dari rbth.id</p>\r\n<div class=\"cover\">\r\n<div class=\"copyright\">\r\n<p>Konflik di Karabakh antara Azerbaijan dan Armenia kadang-kadang disebut sebagai salah satu pemicu politis utama yang mengawali disintegrasi Uni Soviet.</p>\r\nSergey Titov/Sputnik</div>\r\n</div>\r\n<p>Namun, bahkan pada 1990, mayoritas republik Soviet tak ingin meninggalkan Uni Soviet. Menurut sejarawan Rusia Aleksandr Shubin, situasi kala itu terbilang relatif tenang. Dari 15 republik Soviet, hanya negara-negara Baltik (Latvia, Lituania, dan Estonia) dan Georgia yang dengan tegas ingin melepaskan diri. &ldquo;Terlepas dari semua bahaya yang ditimbulkan gerakan separatis nasionalis terhadap keutuhan Uni Soviet, mereka tak memiliki cukup kekuatan&nbsp;untuk menghancurkan negara,&rdquo;&nbsp;<a href=\"https://cyberleninka.ru/article/v/raspad-sssr-obektivnye-prichiny-i-subektivnye-faktory\" target=\"_blank\" rel=\"noopener noreferrer\">ujar</a>&nbsp;sang sejarawan.</p>\r\n<h3>3. Reformasi Gorbachev</h3>\r\n<p>Kinerja ekonomi yang buruk dan berkembangnya gerakan nasionalis tentu berpengaruh pada kejatuhan Soviet, tetapi faktor yang benar-benar dianggap memicu keruntuhan Negeri Tirai Besi adalah tindakan pemimpin negara itu sendiri, yang dimulai pada pertengahan 1980-an dengan kebijakan Perestroika Gorbachev. Ada teori konspirasi yang populer di Rusia bahwa Gorbachev sengaja berusaha menghancurkan sosialisme dan Uni Soviet. Namun, itu tak ditanggapi secara serius karena tidak ada indikasi apa pun yang menunjukkan bahwa ia benar-benar ingin melemahkan kepemimpinannya sendiri.</p>\r\n<p><img src=\"https://cdni.rbth.com/rbthmedia/images/2018.12/original/5c1d898085600a643e7aeb18.jpg\" alt=\"\" width=\"500\" height=\"299\" /></p>\r\n<p>Gambar diambil dari rbth.id</p>\r\n<p>Sebaliknya, Perestroika mencoba mereformasi sistem Soviet, yang pada saat itu menunjukkan tanda-tanda penurunan. Reformasi pertamanya, yang disebut &ldquo;percepatan&rdquo; ekonomi, seharusnya melepaskan potensi &ldquo;sosialisme modern&rdquo;. Shlapentokh menyebut reformasi ini &ldquo;neo-Stalinis&rdquo; karena dilakukan dalam paradigma yang sama dengan kebijakan pendahulu Gorbachev yang kejam.</p>\r\n<p>Meskipun Gorbachev berniat baik, ekonomi gagal untuk &ldquo;mempercepat&rdquo; dan, sebaliknya, kebijakannya yang tidak efektif malah melemahkan negara. Sistem Soviet sebelum Gorbachev memang buruk, tetapi karena reformasinya itu semua langsung berhenti berfungsi. Shlapentokh mengatakan, &ldquo;Demi memodernisasi ekonomi, Gorbachev memulai proses demokratisasi radikal yang membuat kematian sistem Soviet dan negara menjadi tak terelakkan.&rdquo; Sementara itu, muncul aktor-aktor baru, di antaranya Boris Yeltsin, yang ingin menciptakan Rusia yang merdeka. Ini berarti &ldquo;kematian Uni Soviet yang tak terhindarkan&rdquo;.</p>', '/photos/3/unisoviet.jpg', 3, '2021-02-14 01:45:56', '2021-02-14 01:45:56'),
(5, 'Sejarah Pendekatan Detente pada Politik dan Perang', 'Periode detente (Prancis : \'relaksasi\') dalam sejarah Perang Dingin, yang berarti kedua negara adidaya berupaya meredakan ketegangan di antara mereka.', '<div>Uni Soviet dan Amerika Serikat tidak hanya bersaing dalam hal politik, tetapi juga bersaing dalam hal kemajuan teknologi. Pada Agustus 1957, Uni Soviet berhasil meluncurkan peluru kendali balistik antarbenua pertama, dan pada Oktober 1957 juga meluncurkan satelit bumi pertama, Sputnik. Peluncuran Sputnik menandai dimulainya perlombaan angkasa antara kedua negara.</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;&nbsp;&nbsp;&nbsp; Periode 1960-an dan 1970-an lebih dikenal dengan nama periode&nbsp;<em>detente</em>&nbsp;(Prancis : \'relaksasi\') dalam sejarah Perang Dingin, yang berarti kedua negara adidaya berupaya meredakan ketegangan di antara mereka. Kondisi ini tidak terlepas dari empat hal berikut.</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<em>Pertama</em>, berkurangnya gaung pertarungan ideologi di negara-negara dunia ketiga dan munculnya pola-pola baru dalam hubungan internasional. Pada masa ini, misalnya, negara-negara dunia ketiga mendirikan organisasi-organisasi alternatif, seperti Organisasi Negara-Negara Pengekspor Minyak (OPEC) dan Gerakan Nonblok. Melalui OPEC dan Gerakan Nonblok, negara-negara dunia ketiga ingin lebih fokus pada pembangunan ekonomi daripada pertarungan ideologi, setelah sekian abad berada di bawah kolonialisme Barat.</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<em>Kedua</em>, Amerika Serikat menyadari bahwa pertarungan ideologi dengan Uni Soviet tidak boleh mengorbankan masalah ekonomi negara. Secara khusus, Amerika dicengangkan oleh pemulihan dan pertumbuhan ekonomi yang pesat dari negara-negara Eropa Barat dan Jepang sepanjang 1950-an dan 1960-an, setelah sama-sama mengalami kehancuran dalam Perang Dunia II. Tingkat PDB perkapita negara-negara ini hampir mendekati Amerika Serikat.</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<em>Ketiga</em>, Uni Soviet sendiri dipaksa mengalihkan perhatiannya pada isu-isu dalam negeri, seperti masalah ekonomi. Selama periode ini, perekonomian Blok Timur mengalami stagnasi.</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<em>Keempat</em>, negara-negara adidaya semakin sadar bahwa setelah memproklamasikan kemerdekaan, pengaruh negara-negara dunia ketiga semakin kuat seiring dengan semakin luasnya ruang untuk mengekspresikan diri dan jati diri. Hal ini juga berarti mereka tidak mudah diperalat dan bahkan resisten terhadap berbagai tekanan dari kedua negara adidaya.</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;&nbsp;&nbsp;&nbsp; Peredaan ketegangan dalam periode&nbsp;<em>detente</em>&nbsp;itu ditandai setidaknya oleh dua peristiwa penting berikut ini. Pertama, pada Februari 1972, Presiden Amerika Serikat&nbsp;<strong>Richard Nixon</strong>&nbsp;mengumumkan pemulihan hubungan dengan Tiongkok. Ia melakukan kunjungan ke Beijing dan bertemu dengan Mao Zedong dan Zhou Enlai. Kedua, setelah kunjungan tersebut, Nixon bertemu dengan para pemimpin Uni Soviet, termasuk pemimpin Uni Soviet Leonid Brezhnev di Moskow, dalam rangka Perundingan Pembatasan Senjata Strategis (SALT) antara kedua belah pihak. Nixon dan Brezhnev mengumumkan era baru \"hidup berdampingan secara damai\" dan membangun pendekatan hubungan baru. Antara 1972 dan 1974, kedua belah pihak juga sepakat memperkuat hubungan ekonomi.</div>\r\n<div>&nbsp;</div>\r\n<div><img src=\"https://1.bp.blogspot.com/-0CR-6AineGI/W6dhf-canxI/AAAAAAAAASs/_DA7pyZbFCMOn_LSGH2Rb6JIQSNkArhUwCLcBGAs/s1600/280px-Leonid_Brezhnev_and_Richard_Nixon_talks_in_1973.png\" alt=\"\" width=\"280\" height=\"190\" /></div>\r\n<div>Pertemuan Richard Nixon dengan Leonid Breshnev pada tahun 1973</div>\r\n<div>&nbsp;</div>\r\n<div><img src=\"https://3.bp.blogspot.com/-r7uEuGPVHNI/W6dhh0BmLUI/AAAAAAAAASw/GGWJ6i6l2SU95Y0z_i2vAtYNy7JEdYuiwCLcBGAs/s320/nixon_mao-web_0.jpg\" alt=\"\" width=\"320\" height=\"160\" /></div>\r\n<div>&nbsp;</div>\r\n<div>Pertemuan Mao Zedong dengan Richard Nixon pada tahun 1972</div>\r\n<div>&nbsp;</div>\r\n<div>diambil dari https://halobelajar.blogspot.com</div>', '/photos/3/detente.jpeg', 3, '2021-02-14 01:59:09', '2021-02-14 01:59:09'),
(6, 'Pengalaman Saya Belajar Golang', 'Pengalaman saya ketika belajar Golang di tempat kerja baru', '<p id=\"d934\" class=\"hd he dl hf b hg hh hi hj hk hl hm hn ho hp hq hr hs ht hu hv hw hx hy hz ia dd ei\" data-selectable-paragraph=\"\">Haloo, selamat malam! Ini adalah tulisan pertama saya di medium, di tulisan kali ini saya mau&nbsp;<em class=\"ib\">share</em>&nbsp;perjalanan saya belajar&nbsp;<em class=\"ib\">Golang</em>. Mungkin bisa ditiru teman-teman bagi yang baru mulai atau akan mulai belajar&nbsp;<em class=\"ib\">Golang</em>.</p>\r\n<p id=\"5d2d\" class=\"hd he dl hf b hg hh hi hj hk hl hm hn ho hp hq hr hs ht hu hv hw hx hy hz ia dd ei\" data-selectable-paragraph=\"\">Sekitar 6 bulan yang lalu awalnya saya berkenalan dengan&nbsp;<em class=\"ib\">Golang. S</em>ebenernya mendengar nama&nbsp;<em class=\"ib\">Golang</em>&nbsp;sendiri itu sekitar tahun 2015, namun waktu itu saya tidak ada niat untuk mempelajari bahkan mencari tahu sedikit saja mengenai&nbsp;<em class=\"ib\">Golang&nbsp;</em>juga tidak ada. Tetapi sekarang sudah 5 bulan terakhi ini, saya melewati masa-masa dengan si&nbsp;<em class=\"ib\">Golang</em>, sehingga beberapa teman saya mulai menyebut saya &ldquo;<em class=\"ib\">Golang Boy</em>&rdquo;.</p>\r\n<p id=\"b208\" class=\"hd he dl hf b hg hh hi hj hk hl hm hn ho hp hq hr hs ht hu hv hw hx hy hz ia dd ei\" data-selectable-paragraph=\"\">Sebenarnya saya memulai belajar&nbsp;<em class=\"ib\">Golang&nbsp;</em>ketika lulus SMK sekitar bulan April 2018. Persiapan waktu itu adalah saya mencoba mendownload video &ldquo;<em class=\"ib\">Membuat Rest API dengan Golang</em>&rdquo;<em class=\"ib\">&nbsp;,&nbsp;</em>yang mana video ini sampai saat ini belum pernah saya lihat isinya, jadi hanya didownload saja. Awalnya saya mempelajari&nbsp;<em class=\"ib\">Golang</em>&nbsp;karena tuntutan pekerjaan saja, kebetulan&nbsp;<em class=\"ib\">startup</em>&nbsp;tempat saya bekerja, yang awalnya hanya&nbsp;<em class=\"ib\">remote</em>&nbsp;meminta saya untuk&nbsp;<em class=\"ib\">onsite</em>&nbsp;setelah lulus. Ketika&nbsp;<em class=\"ib\">remote,&nbsp;</em>teknologi yang saya kerjakan menggunakan PHP, namun ketika lulus saya disuruh untuk belajar&nbsp;<em class=\"ib\">Golang.&nbsp;</em>Bahkan ketika saya sedang belajar&nbsp;<em class=\"ib\">Golang,&nbsp;</em>ada kabar lagi kalau calon tempat saya bekerja akan berpindah teknologi ke Node.JS dan kebetulan waktu itu saya udah lumayan bisa, jadi saya berhenti mempelajari&nbsp;<em class=\"ib\">Golang</em>.</p>\r\n<p id=\"44dd\" class=\"hd he dl hf b hg hh hi hj hk hl hm hn ho hp hq hr hs ht hu hv hw hx hy hz ia dd ei\" data-selectable-paragraph=\"\">Setelah saya lulus, saya melanjutkan kerja di&nbsp;<em class=\"ib\">startup</em>&nbsp;tempat saya&nbsp;<em class=\"ib\">remote</em>&nbsp;dahulu. Namun di hari kedua saya bekerja ada kabar mengejutkan.&nbsp;<em class=\"ib\">Startup</em>&nbsp;yang jadi tempat saya bekerja memutuskan berhenti. Beruntungnya saya tidak jadi pengangguran karena saya dan salah satu&nbsp;<em class=\"ib\">founder</em>&nbsp;<em class=\"ib\">startup</em>&nbsp;ini berpindah ke&nbsp;<em class=\"ib\">startup</em>&nbsp;lain, dimana nantinya saya menjadi&nbsp;<em class=\"ib\">backend engineer&nbsp;</em>dan beliau menjadi CTO di&nbsp;<em class=\"ib\">startup</em>&nbsp;baru ini.</p>\r\n<p id=\"77cc\" class=\"hd he dl hf b hg hh hi hj hk hl hm hn ho hp hq hr hs ht hu hv hw hx hy hz ia dd ei\" data-selectable-paragraph=\"\">Tempat kerja saya yang baru ini berfokus di&nbsp;<a class=\"ci ic\" href=\"https://ketitik.com/\" rel=\"noopener nofollow\"><em class=\"ib\">network monitoring</em></a>&nbsp;dimana di tempat inilah saya belajar sekaligus mempraktekan langsung. Oke, mungkin terlalu banyak basa-basinya berikut rangkuman step-step saya belajar golang</p>\r\n<h2 id=\"d734\" class=\"id ie dl cc if ig ih ii ij ik il im in io ip iq ir is it iu iv iw ix iy iz ja ei\" data-selectable-paragraph=\"\">Belajar dari&nbsp;<a class=\"ci ic\" href=\"https://tour.golang.org/\" rel=\"noopener nofollow\">Tour Of Go</a></h2>\r\n<p id=\"f9a0\" class=\"hd he dl hf b hg jb hi hj hk jc hm hn ho jd hq hr hs je hu hv hw jf hy hz ia dd ei\" data-selectable-paragraph=\"\">Hal yang saya lakukan ketika mengenal bahasa baru adalah dengan belajar sintaksnya terlebih dahulu.&nbsp;<em class=\"ib\">Golang</em>&nbsp;mempunyai fasilitas yang cukup menarik dan sudah runtut dimana ada halaman&nbsp;<em class=\"ib\">tour golang</em>&nbsp;yang akan membawamu berkeliling berkenalan dengan sintaks-sintaks golang. Kesan pertama&nbsp;<em class=\"ib\">sih</em>&nbsp;tidak begitu kaget dengan sintaksnya karena malah dimudahkan, karena di&nbsp;<em class=\"ib\">Golang</em>&nbsp;tidak ada semicolon bisa dan pernyataan if juga tanpa tanda &ldquo;( )&rdquo;.&nbsp;<em class=\"ib\">Golang</em>&nbsp;itu dibuat dan dikemas menyerupai bahasa C dan kebetulan di SMK diajarkan bahasa C untuk pemrograman dasar jadi saya cukup cepat memahami sintaks&nbsp;<em class=\"ib\">Golang.&nbsp;</em>Kurang lebih 1 hari saya selesai menjalankan tour of Go.</p>\r\n<h2 id=\"5545\" class=\"id ie dl cc if ig ih ii ij ik il im in io ip iq ir is it iu iv iw ix iy iz ja ei\" data-selectable-paragraph=\"\">Belajar membuat Rest API</h2>\r\n<p id=\"8c1d\" class=\"hd he dl hf b hg jb hi hj hk jc hm hn ho jd hq hr hs je hu hv hw jf hy hz ia dd ei\" data-selectable-paragraph=\"\">Mungkin sebagian besar saat ini membuat Rest API itu seperti suatu pengenalan untuk mengenal suatu bahasa. Sebenarnya karena untuk kebutuhan kerja juga jadi saya memutuskan membuat suatu mini&nbsp;<em class=\"ib\">project</em>&nbsp;APi CRUD. Ketika belajar Rest API dengan&nbsp;<em class=\"ib\">golang,&nbsp;</em>saya sarankan membuat dengan seVanila mungkin atau sepolos mungkin jangan&nbsp;<a class=\"ci ic\" href=\"https://medium.com/code-zen/why-i-don-t-use-go-web-frameworks-1087e1facfa4\" rel=\"noopener\">menggunakan framework,</a>&nbsp;karena&nbsp;<em class=\"ib\">native</em>&nbsp;<em class=\"ib\">Golang</em>&nbsp;sudah sebagian besar menyediakan. Kalau terpaksa menggunakan ya boleh saja&nbsp;<em class=\"ib\">sih.</em></p>\r\n<p id=\"5d7e\" class=\"hd he dl hf b hg hh hi hj hk hl hm hn ho hp hq hr hs ht hu hv hw hx hy hz ia dd ei\" data-selectable-paragraph=\"\">Rest API yang saya bangun, untuk router saya menggunakan&nbsp;<a class=\"ci ic\" href=\"http://gorillatoolkit.org/pkg/mux\" rel=\"noopener nofollow\">Gorilla Mux</a>. Waktu itu&nbsp;<em class=\"ib\">database</em>&nbsp;yang saya gunakan adalah MongoDB sehingga saya memakai&nbsp;<em class=\"ib\">package driver</em>&nbsp;dari mgo/bson, tetapi untuk sekarang&nbsp;<em class=\"ib\">driver</em>&nbsp;tersebut sudah unmaintained dan MongoDB sudah membuat driver resminya. Jadi ketika sekarang belajar bisa mencoba menggunakan yang terbaru. Jika kalian menggunakan&nbsp;<em class=\"ib\">database&nbsp;</em>yang berbasis SQL, saya sarakan menggunakan db/sql.</p>\r\n<h2 id=\"6072\" class=\"id ie dl cc if ig ih ii ij ik il im in io ip iq ir is it iu iv iw ix iy iz ja ei\" data-selectable-paragraph=\"\">Belajar Meningkatkan Kualitas Kode dan Testing</h2>\r\n<p id=\"dab5\" class=\"hd he dl hf b hg jb hi hj hk jc hm hn ho jd hq hr hs je hu hv hw jf hy hz ia dd ei\" data-selectable-paragraph=\"\">Setelah saya bisa membuat Rest API dan mulai berkontribusi untuk membuat&nbsp;<em class=\"ib\">tools network monitoring</em>&nbsp;di tempat kerja, saya kira belajar saya berhenti sampai disitu, ternyata tidak. Saya merasakan bahwa dunia IT khususnya di&nbsp;<em class=\"ib\">software development&nbsp;</em>begitu luas. Dimana saya dikenalkan dengan&nbsp;<em class=\"ib\">unit testing, tdd, design pattern, linting, CI/CD, microservices</em>&nbsp;dll. Dalam belajar&nbsp;<em class=\"ib\">Golang</em>&nbsp;saya sarankan untuk belajar&nbsp;<em class=\"ib\">pattern</em>&nbsp;dan juga&nbsp;<em class=\"ib\">testing.&nbsp;</em>Kedua ini sangat berkaitan. Jujur ketika saya mempelajari dua hal ini, cukup pusing bagi saya untuk memahaminya. Ada referensi buku yang cukup jelas ketika kalian belajar&nbsp;<em class=\"ib\">pattern</em>&nbsp;dan&nbsp;<em class=\"ib\">testing</em>. Buku ini juga mengenalkan&nbsp;<strong class=\"hf jg\"><em class=\"ib\">TDD(Test Driven Development).</em></strong></p>\r\n<p class=\"hd he dl hf b hg jb hi hj hk jc hm hn ho jd hq hr hs je hu hv hw jf hy hz ia dd ei\" data-selectable-paragraph=\"\"><img src=\"https://miro.medium.com/max/2400/0*W4zmV3GhTlV5j5db.png\" alt=\"\" width=\"500\" height=\"617\" /></p>\r\n<p id=\"c5f1\" class=\"hd he dl hf b hg hh hi hj hk hl hm hn ho hp hq hr hs ht hu hv hw hx hy hz ia dd ei\" data-selectable-paragraph=\"\">Buku itu awalnya sayatemukan gratis di&nbsp;<em class=\"ib\">packtpub.&nbsp;</em>Namun ternyada ada 2&nbsp;<em class=\"ib\">chapter</em>&nbsp;yang tidak ada di versi gratisnya. Jadi saya memutuskan untuk meminta bos saya untuk membelinya wkwk. Jadinya dibelilah buku itu tersebut seharga kurang lebih 600 ribu. Buku ini cukup bagus untuk meningkatkan kualitas koding kita serta belajar menulis program&nbsp;<em class=\"ib\">Golang</em>&nbsp;sesuai kaidah yang diberikan. Memang perlu waktu dan pemahaman ekstra untuk mempelajarinya namun semua itu akan indah ketika sudah bisa hehe :D</p>\r\n<h2 id=\"e285\" class=\"id ie dl cc if ig ih ii ij ik il im in io ip iq ir is it iu iv iw ix iy iz ja ei\" data-selectable-paragraph=\"\">Terus Ngoding!!! Dan Cari Case Baru</h2>\r\n<p id=\"bbdc\" class=\"hd he dl hf b hg jb hi hj hk jc hm hn ho jd hq hr hs je hu hv hw jf hy hz ia dd ei\" data-selectable-paragraph=\"\">Yaaa, terus ngoding akan membuatmu cepat menyelesaikan masalah-masalah dalam membangun software. Terus ngoding akan melatih cara berpikirmu untuk menyelesaikan masalah dengan&nbsp;<em class=\"ib\">Golang.</em>&nbsp;Jangan terfokus terhadap masalah yang sama terus, carilah&nbsp;<em class=\"ib\">case</em>&nbsp;baru. Kalau saya ketika kerjaan kelar dan casenya sama, biasanya saya mencari case baru untuk mengerjakan soal-soal logika, atau soal-soal di hackerrank. Karena selain melatih kemampuan ngoding juga akan melatih otak kamu.</p>\r\n<h2 id=\"5bd9\" class=\"id ie dl cc if ig ih ii ij ik il im in io ip iq ir is it iu iv iw ix iy iz ja ei\" data-selectable-paragraph=\"\">Kalo Bisa Cari Guru atau Teman yang Sudah Mahir</h2>\r\n<p id=\"1ca4\" class=\"hd he dl hf b hg jb hi hj hk jc hm hn ho jd hq hr hs je hu hv hw jf hy hz ia dd ei\" data-selectable-paragraph=\"\">Ada pepatah yang mengatakan jikalau kita berteman dengan penjual parfurm maka kita akan mendapat seminimal mungkin adalah bau wangi parfurmnya.&nbsp;<em class=\"ib\">Nah</em>&nbsp;dengan punya teman atau kenalan yang sudah mahir tentunya kamu akan dibimbing dalam belajar serta dimudahkan juga. Karena belajar otodidak juga lumayan sulit, serta biasanya case-case baru akan selalu datang.</p>\r\n<p id=\"15b2\" class=\"hd he dl hf b hg hh hi hj hk hl hm hn ho hp hq hr hs ht hu hv hw hx hy hz ia dd ei\" data-selectable-paragraph=\"\">Jadi kurang lebih tulisan diatas merupakan pengalaman saat saya terjun ke golang.&nbsp;<em class=\"ib\">Alhamdulillah,&nbsp;</em>saat ini saya sudah bisa menerapkan TDD, dan&nbsp;<em class=\"ib\">pattern.</em>&nbsp;Saya sangat berterimakasih kepada&nbsp;<a class=\"ci ic\" href=\"http://ketitik.com/\" rel=\"noopener nofollow\">tempat kerja saya&nbsp;</a>saat ini karena banyak sekali&nbsp;<em class=\"ib\">case</em>&nbsp;dan ilmu baru yang saya dapat&nbsp;<a class=\"ci ic\" href=\"http://ketitik.com/\" rel=\"noopener nofollow\">disini</a>. Jadi buat teman-teman yang sedang belajar&nbsp;<em class=\"ib\">Golang</em>&nbsp;atau akan belajar&nbsp;<em class=\"ib\">Golang</em>&nbsp;semoga beberapa gambaran diatas bisa sedikit mencerahkan.</p>\r\n<p id=\"e3a2\" class=\"hd he dl hf b hg hh hi hj hk hl hm hn ho hp hq hr hs ht hu hv hw hx hy hz ia dd ei\" data-selectable-paragraph=\"\">Terimakasih&nbsp;</p>\r\n<p class=\"hd he dl hf b hg hh hi hj hk hl hm hn ho hp hq hr hs ht hu hv hw hx hy hz ia dd ei\" data-selectable-paragraph=\"\">diambil dari https://medium.com/easyread/pengalaman-saya-belajar-golang-94478b98331d</p>', '/photos/3/golang.png', 3, '2021-02-14 02:07:24', '2021-02-14 02:07:24');
INSERT INTO `article` (`id`, `title`, `short_description`, `content`, `image`, `user_id`, `created_at`, `updated_at`) VALUES
(7, 'Belajar PHP Dasar', 'Pengenalan PHP dan Belajar PHP untuk para pemula', '<p id=\"c674\" class=\"hf hg fo hh b hi hj hk hl hm hn ho hp hq hr hs ht hu hv hw hx hy dh gk\" data-selectable-paragraph=\"\"><strong class=\"hh cu\">PHP</strong>&nbsp;adalah&nbsp;<em class=\"hz\">bahasa pemrograman script server-side yang didesain untuk pengembangan web. Selain itu, PHP juga bisa digunakan sebagai bahasa pemrograman umum</em>&nbsp;(<a class=\"dn ia\" href=\"https://en.wikipedia.org/wiki/PHP\" rel=\"noopener nofollow\">wikipedia</a>). PHP disebut bahasa pemrograman&nbsp;<strong class=\"hh cu\">server side</strong>&nbsp;karena PHP diproses pada komputer server. Hal ini berbeda dibandingkan dengan bahasa pemrograman client-side seperti JavaScript yang diproses pada web browser (client).</p>\r\n<blockquote class=\"ib ic id\">\r\n<p id=\"835a\" class=\"hf hg hz hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">Sejarah PHP</p>\r\n</blockquote>\r\n<p id=\"10b8\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\"><strong class=\"hh cu\">PHP</strong>&nbsp;diciptakan oleh Rasmus Lerdorf pada tahun 1994<span id=\"rmm\">,</span>&nbsp;awalnya dia tidak bermaksud unutk membuat bahasa pemrograman, dia membuat sebuah progrma dengan bahasa C untuk mengelola halaman pribadinya / Personal Home Page. Disebut PHP karena dari Personal Home Page. Dihalamannya dia terdapat form yang menghubungkan dalam database unutk mengelola data dia.</p>\r\n<p id=\"4c65\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">Pertama dibuat dengan nama</p>\r\n<p id=\"4ef7\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">~ PHP/FI (1994)</p>\r\n<p id=\"c544\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">Personal Home Page/ Form Interpreter</p>\r\n<p id=\"7e0f\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">~ PHP Tools v.1 (1995)</p>\r\n<p id=\"c953\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">~ PHP Tools v.2 (1997)</p>\r\n<p id=\"cbb7\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">~ PHP 3 (1998)</p>\r\n<p id=\"8c31\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">Ada dua orang yang membantu dalam perkembangan pemrogrman PHP ini yang bernama Zeev Suraski &amp; Andi Gutmans dan juga membuat perusahaan yang bernama Zend Technologies, 2 orang ini berjasa dlam membuat sebuah program yang dapat membaca sintaks PHP supaya PHP bisa mengetahui yang kita tulis. Sejak saat itu namanya diganti yang awalnya Personal Home Page diganti dengan PHP: Hypertext Preprocessor.</p>\r\n<p id=\"4fc5\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">~ PHP 4 (2000)</p>\r\n<p id=\"28cc\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">Didalamnya sudah ada Zend Engine yaitu mesin untuk mengelola PHP nya, yang diciptakan oleh Zend Technologies.</p>\r\n<p id=\"65d4\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">~PHP 5 (2004)</p>\r\n<p id=\"8b39\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">PHP versi 5 adalah updatan PHP yang paling besar karean didalamnya ada fitur-fitur dan fungsi-fungsi kedalam librarynya, juga telah diperbaiki lagi Engine yang dinamakan Zend Engine 2. Didalam PHP sudah terdapat OOP (Object Oriented Programming), PDO (PHP Data Object) mesin yang dapat mengelola banyak database dengan menggunakan PDO ini kita cukup mengganti nama datasbase nya dan tidak perlu diubah arsitektur program kalian.</p>\r\n<p id=\"95a2\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">~ PHP 4 berhenti berkembang (2008)</p>\r\n<p id=\"b554\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">Pada tahun itu ada gerakan GoPHP5, karena sebelumnya masih banyak yang menggunakan server PHP 4, kenapa ada gerakan GoPHP5 yaitu untuk merubah ke PHP 5 karena PHP 4 sudah berhenti berkembang</p>\r\n<p id=\"ad29\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">~ PHP 6</p>\r\n<p id=\"adcb\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">PHP 6 itu project yang ditunda dan akhirnya ditinggalkan, karena di PHP 6 ini mau memperbaiki masalah di unicode</p>\r\n<p id=\"4494\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">~ PHP 5.4 (2010)</p>\r\n<p id=\"d77e\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">PHP 5 ini masih dikembangkan sampai saat ini</p>\r\n<p id=\"052b\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">~ PHP 7 (2014)</p>\r\n<p id=\"3942\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">PHP 7 ini lebih bagus karena Zend Engine nya berkembang menjadi Zend Engine 3.</p>\r\n<blockquote class=\"ib ic id\">\r\n<p id=\"a7b2\" class=\"hf hg hz hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">Karakteristik PHP</p>\r\n</blockquote>\r\n<p id=\"1437\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">~ ekstensi file .php</p>\r\n<p id=\"fba3\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">~ ditulis dalam tag php</p>\r\n<p id=\"e53a\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">setiap sintaks yang ditulis harus dalam tag php dengan awal &lt;?php &hellip;. ?&gt;</p>\r\n<p id=\"545f\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">~ bisa digunakan dengan HTML</p>\r\n<p id=\"47e2\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">Bisa menulis PHP di HTML atau sebaliknya.</p>\r\n<p id=\"e68e\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">~ mengikuti bahasa C</p>\r\n<p id=\"2329\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">kaidah kaidah PHP mengikuti bahasa C karena dibuat dengan bahasa C.</p>\r\n<blockquote class=\"ib ic id\">\r\n<p id=\"dc07\" class=\"hf hg hz hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">Kenapa harus menggunakan bahasa pemrogrman PHP ??</p>\r\n</blockquote>\r\n<p id=\"4007\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">1.&nbsp;<em class=\"hz\">Sangat mudah untuk dipahami bagi pemula</em></p>\r\n<p id=\"5d1b\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">Karena dalam penulisan sintak untuk output tulisan di PHP sangat mudah, misalnya kita ingin membuat tulisan Hello World tampil di layar browser contoh &lt;?php echo&rdquo;Hello World&rdquo;; ?&gt; sintaknya sangat mudah, jadi kita tidak harus menggunakan perintah yang lainnya cukup menggunakan perintah echo&rdquo;&hellip;&rdquo;;</p>\r\n<figure class=\"ij ik il im in io\">\r\n<div class=\"ip s ah\">\r\n<div class=\"ut ir s\"><iframe class=\"fe et ep pt w\" title=\"PHP\" src=\"https://medium.com/media/135b32274f1800acf0a34d24f029b66a\" width=\"680\" height=\"105\" frameborder=\"0\" scrolling=\"auto\" allowfullscreen=\"allowfullscreen\" data-mce-fragment=\"1\"></iframe></div>\r\n</div>\r\n<figcaption class=\"is it fd fb fc iu iv av b aw ax bt\">Contoh penulisan PHP</figcaption>\r\n</figure>\r\n<p id=\"34fc\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">2.&nbsp;<em class=\"hz\">Saat memahami PHP dibutuhkan HTML &amp; CSS</em></p>\r\n<p id=\"90cb\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">HTML &amp; CSS sendiri bisa bekerja sama baik dengan PHP, cukup dengan pemahaman HTML juga bisa memahami PHP ini. Bisa memahami HTML dengan baik maka sangat menguntungkan unutk belajar PHP.</p>\r\n<p id=\"c9c8\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">3.&nbsp;<em class=\"hz\">Open Sources &amp; Gratis</em></p>\r\n<p id=\"0a57\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">PHP gratis dan Open Sources, bisa download dan instalasi di komputer kalian dengan alamat website resmi PHP&nbsp;<a class=\"dn ia\" href=\"http://php.net/downloads.php\" rel=\"noopener nofollow\">php.net/downloads.php</a></p>\r\n<p id=\"6452\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">4.&nbsp;<em class=\"hz\">Dukungan Komunitas Sangat Besar</em></p>\r\n<p id=\"03ce\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">Komunitas PHP ini sangat besar, juga bisa dibuka&nbsp;<a class=\"dn ia\" href=\"https://stackoverflow.com/\" rel=\"noopener nofollow\">stackoverflow</a>&nbsp;(googlenya para programmer) ada banyak artikel yang ada stackoverflow di Indonesia ada grup yang namanya PHP Indonesia.</p>\r\n<p id=\"64da\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">5.&nbsp;<em class=\"hz\">Dokumentasi yang Lengkap</em></p>\r\n<p id=\"1e1d\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">Buka website resmi PHP&nbsp;<a class=\"dn ia\" href=\"http://php.net/manual/en\" rel=\"noopener nofollow\">http://php.net/manual/en</a>&nbsp;disana dokumentasinya asangat lengkap, salah satu pemrograman yang dokumentasinya sangat lengkap.</p>\r\n<p id=\"a9bc\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">6.&nbsp;<em class=\"hz\">PHP Dibuat Khusus Untuk Membuat Web</em></p>\r\n<p id=\"8d83\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">Diciptakan kuhusus unutk pembuatan web</p>\r\n<p id=\"ac31\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">7.&nbsp;<em class=\"hz\">Kebanyakan Website yang ada saat ini dibuat dengan PHP</em></p>\r\n<p id=\"1449\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">PHP ini bahasa pemrograman yang sangat populer, menurut&nbsp;<a class=\"dn ia\" href=\"https://w3techs.com/\" rel=\"noopener nofollow\">https://w3techs.com</a>&nbsp;website yang dibuat dengan PHP sangat banyak</p>\r\n<p id=\"3c6c\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">8.&nbsp;<em class=\"hz\">Website Besar Dibuat Dengan PHP</em></p>\r\n<p id=\"3367\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">Banyak sekali website besar yang menggunakan pemrograman PHP contohnya:</p>\r\n<p id=\"0810\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">a. Facebook, (&nbsp;<a class=\"dn ia\" href=\"https://www.facebook.com/\" rel=\"noopener nofollow\">https://www.facebook.com/</a>&nbsp;) pertama kali dibuat dengan PHP, walaupun facebook menggunakan bahasa sendiri namun didalamnya masih terdapat PHP.</p>\r\n<p id=\"93e2\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">b. Yahoo (&nbsp;<a class=\"dn ia\" href=\"https://id.yahoo.com/\" rel=\"noopener nofollow\">https://id.yahoo.com/</a>&nbsp;)</p>\r\n<p id=\"b736\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">c. Wikipedia (<a class=\"dn ia\" href=\"https://www.wikipedia.org/\" rel=\"noopener nofollow\">https://www.wikipedia.org/</a>)</p>\r\n<p id=\"4bcd\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">9.&nbsp;<em class=\"hz\">CMS (Content Management System) yang bagus dengan menggunakan PHP</em></p>\r\n<p id=\"55b7\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">Content Management System yang dibuat dengan PHP, Content Management System itu untuk mempermudah developer dalam pembuatan website, bagi yang belum paham tentang PHP bisa menggunakan CMS ini dalam pembuatan website, akan lebih baik kalau kita belajar memahami pemrograman PHP ini.</p>\r\n<p id=\"124a\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">10.&nbsp;<em class=\"hz\">Banyak framework PHP yang bagus</em></p>\r\n<p id=\"0e61\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">Framework ini bertujuan unutk mempermudah kita dalam pembuatan website. Contohnya: CodeIgniter (&nbsp;<a class=\"dn ia\" href=\"https://codeigniter.com/\" rel=\"noopener nofollow\">https://codeigniter.com/</a>&nbsp;), CakePHP (&nbsp;<a class=\"dn ia\" href=\"https://cakephp.org/\" rel=\"noopener nofollow\">https://cakephp.org/</a>&nbsp;), yiiframework (&nbsp;<a class=\"dn ia\" href=\"http://www.yiiframework.com/\" rel=\"noopener nofollow\">http://www.yiiframework.com/</a>&nbsp;), laravel (&nbsp;<a class=\"dn ia\" href=\"https://laravel.com/\" rel=\"noopener nofollow\">https://laravel.com/</a>&nbsp;). Banyak sekali perusahaan yang ingin merekrut programmer yang menguasai salah satu dari framework tersebut.</p>\r\n<p id=\"008b\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">Dikutip dari&nbsp;<a class=\"dn ia\" href=\"https://www.youtube.com/channel/UCkXmLjEr95LVtGuIm3l2dPg\" rel=\"noopener nofollow\">Web Programming UNPAS</a></p>\r\n<p id=\"99b9\" class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">Terimakasih telah membaca artikel ini semoga bermanfaat bagi nusa bangsa serta agama.</p>\r\n<p class=\"hf hg fo hh b hi ie hj hk hl if hm hn ho ig hp hq hr ih hs ht hu ii hv hw hy dh gk\" data-selectable-paragraph=\"\">diambil dari https://medium.com/@aunur.royyan/belajar-php-dasar-untuk-pemula-c673ccb97bc3</p>', '/photos/3/php.png', 3, '2021-02-14 02:38:06', '2021-02-14 02:38:06'),
(8, 'Penangkapan dan Baku Tembak di Meksiko', 'Detik detik penangkapan dan baku tembak polisi pemerintahan dengan kartel narkoba meksiko', '<p><iframe id=\"instagram-embed-0\" class=\"instagram-media instagram-media-rendered\" style=\"background: white; max-width: 540px; width: calc(100% - 2px); border-radius: 3px; border: 1px solid #dbdbdb; box-shadow: none; display: block; margin: 0px 0px 12px; min-width: 326px; padding: 0px;\" src=\"https://www.instagram.com/p/B3wqUqnnegq/embed/captioned/?cr=1&amp;v=13&amp;wp=540&amp;rd=http%3A%2F%2F192.168.100.8&amp;rp=%2Farticle%2F8#%7B%22ci%22%3A0%2C%22os%22%3A113657.0250000077%2C%22ls%22%3A113629.19500000135%2C%22le%22%3A113636.74499999615%7D\" height=\"1050\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"allowfullscreen\" data-instgrm-payload-id=\"instagram-media-payload-0\"></iframe></p>\r\n<p>\r\n<script async=\"\" src=\"//www.instagram.com/embed.js\"></script>\r\n&nbsp;Bak film aksi Hollywood, operasi penangkapan putra raja narkoba&nbsp;<a href=\"https://www.tempo.co/tag/el-chapo\" target=\"_blank\" rel=\"noopener\">El Chapo&nbsp;</a>diwarnai baku tembak antara pasukan keamanan Meksiko dengan anggota kartel narkoba bersenjata lengkap.</p>\r\n<p>Joaqu&iacute;n Guzm&aacute;n Loera, raja narkoba yang dikenal sebagai El Chapo, menghindari telah mengelabui pemerintah berkali-kali, ketika kabur lewat terowongan, di belakang lemari, di bawah bak mandi, dan melalui jurang curam di pegunungan Sinaloa yang terpencil. Dia bahkan berhasil melarikan diri dari penjara, dua kali. Pada akhirnya El Chapo ditangkap, diekstradisi ke AS, dan diadili di New York.</p>\r\n<div data-id=\"zvV8DfD51RdaKuIf_NcgppVDhjEKgS1PDxuZwMsh47bPT8yIAA2e\">\r\n<div class=\"orp-player-wrapper orp-player-ipm orp-player-ipm-hidden orp-force-hide-player\">&nbsp;</div>\r\n</div>\r\n<p>Kini putra El Chapo yang diburu. Putra El Chapo, Ovidio Guzm&aacute;n Lopez, membuat malu pemerintahannya sendiri minggu ini, ketika kaki tangan kartel memaksa patroli dari 30 anggota pasukan pemerintah untuk membebaskannya setelah ia ditangkap, menurut laporan New York Times, 19 Oktober 2019.</p>\r\n<p>Sejumlah anggota pasukan Meksiko yang menggrebek Ovidio disandera oleh penjahat dan dipaksa untuk melepaskan putra El Chapo.</p>\r\n<p>---</p>\r\n<p>&nbsp;Baku tembak dimulai dengan pengepungan di kota Culiacan pada hari Kamis oleh anggota Kartel Sinaloa, yang pernah dipimpin oleh El Chapo. Video pertempuran sengit di jalan, orang-orang bersenjata memblokir jalan, penduduk melarikan diri ke tempat yang aman dan kepulan asap hitam naik dari kendaraan yang terbakar membanjiri media sosial.</p>\r\n<p>&nbsp;</p>\r\n<p>Laporan-laporan menyatakan bahwa setelah penangkapan Ovido, kartelnya melakukan serangan sengit untuk membebaskannya dan mencegah ekstradisinya ke Amerika Serikat. Tetapi pemerintah tetap diam, meminta warga untuk tetap tinggal di dalam rumah dan menghindari jalan sepanjang hari.</p>\r\n<p>Kemudian pemerintah mengatakan patroli telah menemukan Guzm&aacute;n, tetapi telah menangguhkan operasi ketika aparat kalah jumlah oleh anggota kartel. Keesokan paginya pada Jumat, pemerintah mengakui bahwa patroli itu sebenarnya operasi yang direncanakan untuk menangkap Guzm&aacute;n dan mengekstradisi dia ke Amerika Serikat.</p>\r\n<p>Angkatan bersenjata berhasil menahannya, tetapi mereka dipaksa untuk melepaskannya setelah delapan anggota patroli diculik dan disandera, kata pemerintah. Dikelilingi oleh musuh, tanpa rencana cadangan yang jelas di darat atau di udara, dan tidak ada strategi evakuasi yang jelas, para prajurit mengalah dan mengembalikan Guzm&aacute;n junior.</p>\r\n<p>\"Keputusan dibuat saya dukung dan saya setujui karena situasinya menjadi sangat buruk dan banyak warga yang terancam. Akhirnya&nbsp;dibuat keputusan untuk melindungi kehidupan rakyat,\" kata Presiden Andr&eacute;s Manuel L&oacute;pez Obrador.</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://cdn.tmpo.co/data/2019/10/19/id_881895/881895_720.jpg\" alt=\"\" width=\"500\" height=\"281\" /></p>\r\n<p>Namun, beberapa orang yang terkait dengan kartel ditahan dan terluka, kata Sekretaris Keamanan Sinaloa Cristobal Castaneda, dikutip dari RT.com. Dia menambahkan bahwa pemerintah setempat bekerja dengan Garda Nasional, Angkatan Darat, dan Angkatan Laut dalam operasi tersebut.</p>\r\n<p>Menurut seorang mantan pejabat Amerika dan orang lain yang memberi pengarahan tentang masalah ini, kekuatan di balik respons kartel yang cepat dan efektif dalah putra tertua El Chapo, Ivan, yang telah mengambil peran penting dalam kartel sejak ayahnya ditangkap, diekstradisi ke Amerika Serikat dan dijatuhi hukuman penjara seumur hidup pada bulan Juli atas tuduhan narkoba, pembunuhan dan pencucian uang.</p>\r\n<p>Mereka mengatakan bahwa Ivan pada awalnya ditangkap oleh militer juga, tetapi antek-anteknya dengan cepat mengalahkan angkatan bersenjata dan memastikan pembebasannya. Setelah bebas, Ivan kemudian mengatur rencana membebaskan saudaranya, Ovidio.</p>\r\n<p>Upaya itu tidak hanya mencakup menyandera tentara, tetapi juga menculik keluarga mereka, menurut sumber yang mengetahui masalah ini. Belum ada komentar dari pemerintah terkait laporan ini.</p>\r\n<p>Peristiwa di Culiacan terjadi setelah satu minggu yang dimulai dengan pembunuhan 13 petugas polisi negara bagian oleh kartel lain di Michoacan dan baku tembak di luar Iguala di Guerrero yang menewaskan 15 orang.</p>\r\n<p>Ayah Guzm&aacute;n, El Chapo, ditangkap beberapa kali sebelum dijatuhi hukuman penjara seumur hidup di Amerika Serikat. Para pemimpin&nbsp;<a href=\"https://dunia.tempo.co/read/1261681/kartel-narkoba-serang-polisi-meksiko-karena-tangkap-anak-el-chapo\" target=\"_blank\" rel=\"noopener\">kartel narkoba</a>&nbsp;lain, yakni Kartel Zeta, Kartel Teluk dan kartel lainnya telah ditangkap dalam tindakan terkoordinasi antara penegak hukum dan angkatan bersenjata Meksiko.</p>', '/photos/3/kartel.jpg', 3, '2021-02-15 15:02:02', '2021-02-15 08:02:02'),
(9, 'Menjadi Kanojo Pencinta Anime alias Pacaran dengan Wibu', 'Beginilah rasanya pacaran dengan wibu, sementara saya baru menyadarinya ketika sang pacar sudah hampir membayar lunas dakimakura bergambar Tachibana Kanade.', '<div id=\"cb-featured-image\" class=\"cb-fis cb-fis-block-standard\">\r\n<div class=\"cb-mask\"><img class=\"attachment-cb-759-500 size-cb-759-500 wp-post-image\" src=\"https://i0.wp.com/mojok.co/wp-content/uploads/2018/12/pacaran-dengan-wibu-mojok.jpg?resize=759%2C500&amp;ssl=1\" sizes=\"(max-width: 759px) 100vw, 759px\" srcset=\"https://i0.wp.com/mojok.co/wp-content/uploads/2018/12/pacaran-dengan-wibu-mojok.jpg?w=759&amp;ssl=1 759w, https://i0.wp.com/mojok.co/wp-content/uploads/2018/12/pacaran-dengan-wibu-mojok.jpg?resize=300%2C198&amp;ssl=1 300w, https://i0.wp.com/mojok.co/wp-content/uploads/2018/12/pacaran-dengan-wibu-mojok.jpg?resize=100%2C65&amp;ssl=1 100w, https://i0.wp.com/mojok.co/wp-content/uploads/2018/12/pacaran-dengan-wibu-mojok.jpg?resize=260%2C170&amp;ssl=1 260w\" alt=\"\" width=\"759\" height=\"500\" loading=\"lazy\" /></div>\r\n<div class=\"cb-entry-header hentry cb-meta clearfix\">\r\n<h1 class=\"entry-title cb-entry-title entry-title cb-title\">Menjadi Kanojo Pencinta Anime alias Pacaran dengan Wibu</h1>\r\n<div class=\"cb-byline\"><span class=\"cb-author vcard author\"><span class=\"fn\"><a href=\"https://mojok.co/penulis/apk/\"><img class=\"avatar avatar-20 wp-user-avatar wp-user-avatar-20 alignnone photo\" src=\"https://i2.wp.com/mojok.co/wp-content/uploads/2018/03/mbak-lia.jpg?fit=20%2C20&amp;ssl=1\" alt=\"Aprilia Kumala\" width=\"20\" height=\"20\" />APRILIA KUMALA</a></span></span><span class=\"cb-date\"><time class=\" updated\" datetime=\"2018-12-04\">4 DESEMBER 2018</time></span></div>\r\n<div class=\"cb-post-meta\"><span class=\"cb-category cb-element\"><a title=\"View all posts in Pojokan\" href=\"https://mojok.co/pojokan/\">POJOKAN</a></span><span class=\"cb-lks cb-element\"><span id=\"cb-likes-44638\" class=\"cb-like-count cb-button cb-like-button cb-font-title  cb-lkd-0\" data-cb-pid=\"44638\">&nbsp;<span class=\"cb-likes-int\">9</span></span></span></div>\r\n</div>\r\n</div>\r\n<section class=\"cb-entry-content clearfix\">\r\n<div class=\"heateorSssClear\">&nbsp;</div>\r\n<div class=\"heateor_sss_sharing_container heateor_sss_horizontal_sharing\">\r\n<div class=\"heateor_sss_sharing_title\">&nbsp;</div>\r\n<ul class=\"heateor_sss_sharing_ul\">\r\n<li class=\"heateorSssSharingRound\">&nbsp;</li>\r\n<li class=\"heateorSssSharingRound\">&nbsp;</li>\r\n<li class=\"heateorSssSharingRound\">&nbsp;</li>\r\n<li class=\"heateorSssSharingRound\">&nbsp;</li>\r\n<li class=\"heateorSssSharingRound\">&nbsp;</li>\r\n<li class=\"heateorSssSharingRound\">&nbsp;</li>\r\n</ul>\r\n<div class=\"heateorSssClear\">&nbsp;</div>\r\n</div>\r\n<div class=\"heateorSssClear\">&nbsp;</div>\r\n<p><strong><a href=\"https://mojok.co/apk/pojokan/pacaran-dengan-wibu/mojok.co\">MOJOK.CO</a>&nbsp;</strong>&ndash;&nbsp;<em>Beginilah rasanya pacaran dengan wibu, sementara saya baru menyadarinya ketika sang pacar sudah hampir membayar lunas dakimakura bergambar Tachibana Kanade.</em></p>\r\n<p>Pandangan soal anime, produk serial khas&nbsp;<a href=\"https://mojok.co/ray/esai/pengalaman-tinggal-di-jepang-yang-bakal-bikin-kamu-merasa-aneh/\">Jepang</a>, sedikit berubah di mata saya di tahun pertama perkuliahan. Kala itu, kekasih hati saya (<em>sekarang mantan,&nbsp;semoga doi nggak baca ini</em>)&mdash;sebut saja namanya Suripto&mdash;mendadak menjelma menjadi orang dengan karakter baru yang membuat saya terkejut. Hobinya membaca komik meningkat, ditambah dengan kemudahan internet yang membuatnya makin sering men-<em>donwload&nbsp;</em>anime-anime yang judulnya saja saya nggak tahu.</p>\r\n<p>Saya&mdash;yang&nbsp;<em>playlist&nbsp;</em>lagu di hapenya cuma&nbsp;<em>soundtrack&nbsp;</em>telenovela zaman dulu, semacam&nbsp;<em>Amigos X Siempre, Mariana y Silvana,&nbsp;</em>serta lagu-lagu lawas ala Broery Marantika dan Bob Tutupoli&mdash;jelas tidak tahu lagu apa yang didendangkan Suripto tiap kali kami menunggu pesanan kami datang di warung nasi. Saya juga tidak tahu siapa karakter mbak-mbak berambut ungu yang menghiasi layar hapenya dengan tulisan&nbsp;<em>&ldquo;Ganbatte, Surip-kun!&rdquo;&nbsp;</em>besar-besar. Saya kira, ketertarikannya pada anime normal-normal saja karena saat itu saya juga menggunakan foto Presiden SBY sebagai&nbsp;<em>wallpaper&nbsp;</em>hape.</p>\r\n<p>Tapi, lambat laun, saya mulai merasa ada yang aneh. Dengan intuisi seorang wanita, saya mulai bergerak mengamati Suripto, baik diam-diam maupun terang-terangan. Setelah dicermati dalam-dalam, barulah saya sadar bahwa Suripto sudah &ldquo;berkembang&rdquo; ke arah yang mengejutkan.</p>\r\n<p>*JENG JENG JENG*</p>\r\n<p>Obsesinya terhadap budaya Jepang meningkat&mdash;bahkan berlebih-lebihan. Obsesi ini berbanding lurus dengan kegemarannya pada anime, manga, dan&nbsp;<em>figure&nbsp;</em>berbau Jepang yang lalu lalang di internet. Dia mulai lupa tanggal ulang tahun saya (<em>&ldquo;Kamu ulang tahunnya hari ini apa tiga bulan yang lalu, ya, Beb?&rdquo;</em>) dan lebih ingat tanggal rilis anime baru di situs yang isinya cuma tulisan judul kecil-kecil dan selalu dibukanya setiap kali kami kencan ke warnet.</p>\r\n<p>Iya, iya, kencan kami pun ke&nbsp;<a href=\"https://mojok.co/agm/ulasan/pojokan/tipikal-user-warnet-yang-menyebalkan/\">warnet</a>, bukan ke tempat ngopi biar kayak pasangan&nbsp;<em>indie.&nbsp;</em>Alasannya? Ya biar dia bisa men-<em>download&nbsp;</em>anime-anime teranyar,&nbsp;<em>mylov~</em></p>\r\n<p>Kalau pacar-pacar orang lain suka memberi kejutan pada kekasihnya, atau minimal sesekali mengajak jalan-jalan ke tempat yang menarik dan&nbsp;<a href=\"https://mojok.co/apk/rame/list/5-kegiatan-ngabuburit-instagramable/\">Instagramable</a>, tidak demikian dengan Suripto. Ia lebih suka berkata, &ldquo;Yah, duitku abis. Makan di angkringan lagi aja, Beb,&rdquo; padahal besoknya pamer habis-habisan, &ldquo;Aku baru saja beli&nbsp;<em>figure&nbsp;</em>karakter anime yang baru. Untung murah, cuma sejuta enam ratus.&rdquo;</p>\r\n<p>[!!!!11!!!!!!1!!!!]</p>\r\n<p>Foto profil Facebook-nya terus menerus berganti berupa karakter anime perempuan yang rambutnya warna-warni kayak Tante Rambut Palsu di telenovela&nbsp;<em>Carita de Angel.&nbsp;</em>Nama akunnya juga berubah berbau Jejepangan, diikuti dengan gaya-gaya komen yang mulai menyisipkan istilah bahasa Jepang. Dia tidak lagi menulis status semacam &ldquo;Kemarin aku pergi bareng pacarku,&rdquo; melainkan menggunakan kalimat yang lebih ribet, seperti &ldquo;Kemarin&nbsp;<em>watashi</em>&nbsp;pergi bareng&nbsp;<em>ore no kanojo</em>.&rdquo; Sebelum saya mencari tahu&nbsp;<em>kanojo&nbsp;</em>itu artinya apa, saya juga melihat istilah-istilah lain yang dilontarkannya dan teman-temannya di media sosial:&nbsp;<em>oppai,&nbsp;ecchi,&nbsp;hentai,&nbsp;loli,</em>&nbsp;dan lain sebagainya.</p>\r\n<p>Waktu saya&nbsp;<em>googling,&nbsp;</em>muka saya memerah. Rasanya kesal setengah mati. Kok bisa-bisanya mereka pakai istilah-istilah itu di publik tanpa rasa bersalah sama sekali???</p>\r\n<p>Pada akhirnya, saya mengenal karakter anime yang kian lama kian sering muncul di&nbsp;<em>gadget&nbsp;</em>dan akun media sosial Suripto: Tachibana Kanade, karakter dari anime&nbsp;<em>Angel Beats.&nbsp;</em>Dalam beberapa diskusi di kolom komentar Facebook-nya, Suripto bahkan memproklamirkan Kanade sebagai&nbsp;<em>waifu-</em>nya. Tak jarang, ia menyebutkan keinginannya untuk memiliki&nbsp;<em>dakimakura&nbsp;</em>bergambar Kanade. Dulu, karena saya nggak tahu&nbsp;<em>dakimakura&nbsp;</em>itu apa, saya hanya menanggapi sekadarnya.</p>\r\n<p><em>&ldquo;Beb, watashi mau beli dakimakura.&rdquo;</em></p>\r\n<p><em>&ldquo;Apaan itu?&rdquo;</em></p>\r\n<p><em>&ldquo;Bantal. Gede.&rdquo;</em></p>\r\n<p><em>&ldquo;Beli aja.&rdquo;</em></p>\r\n<p><em>&ldquo;Tapi malu nyuci sarungnya. Ada gambar anime-nya.&rdquo;</em></p>\r\n<p><em>&ldquo;Ya nanti aku cuciin.&rdquo;</em></p>\r\n<p>[!!!!11!!!!!!1!!!!]</p>\r\n<p>O, astaga, saya ternyata pacaran dengan wibu, Saudara-saudara!!! Dan saya baru menyadarinya ketika ia sudah hampir membayar lunas&nbsp;<em>dakimakura</em>&nbsp;bergambar Tachibana Kanade!!!!!!11!!1!!!!</p>\r\n<p>FYI, wibu sering kali merujuk pada orang-orang yang mencintai budaya Jepang dengan kadar berlebihan. Tapi, tenang saja, tulisan ini bukan dibuat untuk merendahkan wibu, apalagi Suripto yang kini tengah berbahagia dengan anak cucunya (<em>lah, tua amat?!</em>). Lagi pula, sebagai wibu, Suripto cukup bersih dan menarik, tidak berbau bawang seperti yang digosipkan orang-orang. Suripto cukup wangi, parfumnya ganti setiap bulan, bajunya juga rapi&mdash;meskipun bentuknya tetap saja berupa kaus dengan gambar Kanade di tengahnya.</p>\r\n<p>Tapi, saran saya bagi Anda-Anda yang tertarik pacaran dengan wibu atau merelakan diri menjadi&nbsp;<em>kanojo-</em>nya pencinta anime cuma satu:&nbsp;<a href=\"https://mojok.co/cps/esai/yansen-binti-dan-meikarta-yang-tidak-sabaran/\">sabar</a>.</p>\r\n<p>Kenapa sabar?</p>\r\n<p>Ya gimana ya,&nbsp;<em>Sist</em>&mdash; nggak pernah, kan, kamu pacaran tapi disuruh pakai akun media sosial yang nama profilnya Tachibana Kanade biar pacar kamu seneng saat membaca komentarmu bertuliskan&nbsp;<em>&ldquo;<a href=\"https://mojok.co/apk/ulasan/pojokan/urgensi-panggilan-sayang/\">Sayangku</a>&rdquo;&nbsp;</em>tapi dari akun si Kanade&mdash;bukan dari akun dengan namamu? Kebayang nggak kamu disaranin untuk berpenampilan&nbsp;<em>kawaii&nbsp;</em>dengan poni penuh menutupi dahimu kayak di anime-anime, padahal dahimu gampang berjerawat kalau pakai poni? Siap nggak kamu jarang diapelin karena pacarmu menjunjung tinggi prinsip &ldquo;malam minggu adalah waktunya nonton anime&rdquo;? Rela nggak kamu dibagi cintanya dengan karakter perempuan 2D yang disukainya sedikit berlebihan, sementara orang-orang menganggapmu hanya sebagai &ldquo;pacar pura-pura&rdquo;-nya pacarmu yang dianggap maniak di masyarakat?</p>\r\n<div>\r\n<div>&nbsp;</div>\r\n</div>\r\n<p>Yang nggak kalah penting, kuat nggak kamu nemenin dia nonton anime, sedangkan kamu sebenarnya langsung auto-ngantuk di menit pertama???</p>\r\n<p>Selain itu, bagi beberapa wibu, hukum bersosialisasi memang sedikit berbeda. Kalau kita merasa berinteraksi dengan orang lain adalah suatu kewajiban dan kebutuhan, wibu justru sebaliknya. Aksinya ini didasarkan pada prinsipnya yang meyakini bahwa orang-orang di 3D (dunia nyata) tidak lebih penting dan cerdas daripada tokoh-tokoh anime alias dunia 2D. Tak jarang, ia terang-terangan menulis kebenciannya pada semua manusia 3D di hidupnya&hellip;</p>\r\n<p>&hellip;tentu dengan embel-embel gombal berupa, &ldquo;Tapi kecuali kamu, Beb. Hehe. Pokoknya&nbsp;<em>suki da yo.</em>&rdquo;</p>\r\n<p>Hiliiiiih!!!!!11!!!!!1!!!</p>\r\n<p>O, itu belum seberapa. Ada juga klan wibu yang merasa bahwa tindakan menarik diri dari lingkungan adalah sesuatu yang&nbsp;<em>cool&nbsp;</em>dan keren, daripada harus bergabung dengan orang lain dan merasakan kebodohan mereka.&nbsp;<em>Halah, memangnya kamu itu bebas dari kebodohan, bu, wibu???</em></p>\r\n<p>Pada akhirnya, saya memang menyerah dalam perjalanan pacaran dengan wibu. Sekali lagi, ini tak ada hubungannya dengan bau bawang, tapi sepertinya memang pacaran dengan wibu belum menjadi bakat saya, apalagi&nbsp;<em>passion.</em></p>\r\n<p>Yaaah, mungkin nanti suatu hari saya bisa, dengan catatan: saya rela bertingkah lucu-lucu gemas pas lagi marah,&nbsp;<em>tsundere,&nbsp;</em>atau bersedia memanggil kekasih saya dengan sapaan&nbsp;<em>Onii-chan&nbsp;</em>setiap hari sambil ber-<em>moe-moe-kyun.</em></p>\r\n<p>Tapi yang jelas, saya nggak mau lagi pacaran sambil disuruh pakai akun palsu bernama Tachibana Kanade. Hih!</p>\r\n<p>&nbsp;</p>\r\n</section>', '/photos/3/pacaran-dengan-wibu-mojok.jpg', 3, '2021-04-10 23:52:17', '2021-04-10 23:52:17'),
(10, 'Eren dkk. Membuktikan bahwa ‘Attack on Titan’ Hanyalah Kisah Romantis yang Menyamar', 'Pembahasan tokoh Eren Yeager Attack on Titan sedang seru-serunya dan sebuah hipotesis bahwa anime ini hanyalah kisah romansa yang menyamar sudah terbukti.', '<div id=\"cb-featured-image\" class=\"cb-fis cb-fis-block-standard\">\r\n<div class=\"cb-mask\">&nbsp;</div>\r\n</div>\r\n<section class=\"cb-entry-content clearfix\">\r\n<p><a href=\"https://mojok.co/\"><strong><em>MOJOK.CO</em></strong></a><strong><em>&nbsp;&ndash;&nbsp;</em></strong><em>Pembahasan tokoh Eren Yeager Attack on Titan sedang seru-serunya dan sebuah hipotesis bahwa anime ini hanyalah kisah romansa yang menyamar sudah terbukti.</em></p>\r\n<p>Hanya sedikit penggemar<a href=\"https://mojok.co/terminal/eren-yeager-di-attack-on-titan-cenderung-jahat-dan-abuse-of-power/\" target=\"_blank\" rel=\"noopener\">&nbsp;seinen</a>&nbsp;yang bakal mengaku mereka juga gemar baca serial cantik dan anime-anime romantis semacam&nbsp;<em>yaoi</em>. Aliran seinen mempercayai bahwa kisah yang mereka konsumsi melalui manga dan anime adalah kisah yang cukup rumit, pelik, dan serius. Nggak menye-menye dan melulu soal cinta. Tapi, hari ini setelah&nbsp;<em>AoT</em>&nbsp;chapter 139 rilis, premis itu seakan ambyar.</p>\r\n<p>Saya nggak bermaksud ngasih spoiler, tapi kalian harus tahu bahwa intinya Eren punya motivasi seputar cinta di balik tindakan-tindakan gilanya.&nbsp;<em>Lha edan po, cah cinta</em>&nbsp;<em>og</em>!</p>\r\n<p>Makanya saya berani memberikan tanda-tanda spesifik kenapa&nbsp;<em>Attack on Titan&nbsp;</em>(yang di chapter 139) mulai bikin oleng para wibu, sebenarnya kisah romantis yang menyamar dalam seinen. Sambil mengingat-ingat kembali apa yang terjadi dan bersiap dengan plot twist-nya yang begitu itulah.</p>\r\n<h4><strong>#1 Syal merah Mikasa yang diberikan Eren Yeager adalah koentji</strong></h4>\r\n<p>Eren Yeager menyelamatkan Mikasa di masa kecil ketika ia diserang oleh perompak yang juga membunuh orang tua Mikasa Ackerman. Usai kejadian mengerikan itu, Mikasa tampak&nbsp;<em>shock</em>&nbsp;dengan apa yang menimpa dirinya. Eren Yeager yang masih kinyis-kinyis kemudian memberikan sebuah syal berwarna merah dan mengalungkannya ke leher Mikasa. Uwh, generik drama romantis banget!</p>\r\n<p>Tidak disangka, sepanjang hidup Mikasa Ackerman yang jago berantem itu, syal merah ini sering banget dipakai. Nggak tahu dah pernah dicuci apa nggak. Hanya sedikit sekali adegan yang memperlihatkan adegan Mikasa tanpa syal merah. Syal merah pemberian Eren adalah jimat, benda kesayangan, sekaligus&nbsp;<em>language of love</em>.</p>\r\n<h4><strong>#2 Mikasa pernah refleks menyerang Armin ketika bersitegang dengan Eren</strong></h4>\r\n<p>Ada sebuah&nbsp;<em>shot</em>&nbsp;ikonik dari Armin yang bikin pencinta&nbsp;<a href=\"https://mojok.co/terminal/levi-ackerman-vs-sehun-exo-berhentilah-menyamakan-keduanya/\" target=\"_blank\" rel=\"noopener\">Levi Ackerman</a>&nbsp;di seluruh dunia oleh saking gantengnya wajah Armin di anime. Ketika itu Armin dibenturkan ke meja dan lengannya dikunci oleh Mikasa karena berusaha menyerang Eren. Mikasa melakukan ini seolah seperti refleks, saking cintanya dia dengan sahabat kecilnya itu. Padahal Armin juga sahabatnya loh, kenapa yang dibela cuma si gondrong Titan Penyerang?</p>\r\n<p>Sebaliknya, Eren mengatakan bahwa ini terjadi akibat darah Ackerman yang mengalir pada tubuh Mikasa. Hadeh, padahal mungkin jantung Eren berdebar lebih cepat seperti genderang mau perang begitu tahu sebesar itu perasaan Mikasa padanya.</p>\r\n<h4><strong>#3 Kisah cinta Historia dan Ymir KW yang dapat porsi lumayan banyak</strong></h4>\r\n<p>Secara pribadi saya sebenarnya nggak suka banget sama kisah dua gadis yang saling mencintai karena cinlok di Survey Corps ini. Cenderung cringe dan dipaksa untuk terlihat tulus. Padahal, apa yang terjadi pada&nbsp;<a href=\"https://mojok.co/terminal/4-detail-penting-yang-jadi-misteri-di-balik-kehamilan-historia-reiss-attack-on-titan/\" target=\"_blank\" rel=\"noopener\">Historia Reiss</a>&nbsp;dan Ymir KW (bukan Ymir pemilik Titan Pendiri loh ya!) adalah keegoisan. Implementasi sempurna dari istilah dunia milik berdua, yang lain ngontrak. Gara-gara mereka bucin, rencana Reiner dan Betholdt kacau, Porco Galliard pun akhirnya jadi Titan Jaw selanjutnya.</p>\r\n<p>Secara tidak langsung&nbsp;<em>Attack on Titan</em>&nbsp;memberi porsi yang cukup lumayan buat alur cinta Historia dan Ymir KW. Bukti lain bahwa Hajime Isayama percaya, cinta-cintaan itu tetap jadi alasan utama dari segala tindakan manusia.</p>\r\n<h4><strong>#4 Yelena dan cinta butanya</strong></h4>\r\n<p>Saya membayangkan sosok Yelena sebagai tokoh yang tangguh, keras kepala, dan tegas. Tapi, ujung-ujungnya banyak tindakan yang dia lakukan berdasarkan perasaan kagum (dan mungkin cintanya) kepada&nbsp;<a href=\"https://mojok.co/terminal/zeke-yeager-adalah-contoh-nyata-jika-kekuatan-orang-dalam-dimaksimalkan-dengan-baik/\" target=\"_blank\" rel=\"noopener\">Zeke Yeager</a>. Bagi Yelena Zeke seperti dewa, penyelamat sekaligus pusat alam semesta. Ah, Yelena,&nbsp;<em>big girls don&rsquo;t cry</em>, ya!</p>\r\n<p>Bagaimanapun saya tetap kagum sama kekuatan cinta Mikasa pada Eren yang kayaknya&nbsp;<em>unconditional</em>&nbsp;itu. Mau gelut kaya apa pun, Mikasa siap pasang badan paling depan buat Eren. Mungkin saya kalau jadi Mikasa pun melakukan hal yang sama walau kadang balasannya nggak sepadan.</p>\r\n<p>Tapi, kalau motivasi ini dijadikan sebuah pemantik dari kesimpulan&nbsp;<em>ending<a href=\"https://mojok.co/terminal/mappa-dan-deadline-gila-yang-diberikan-kepada-mereka-dalam-mengerjakan-attack-on-titan/\" target=\"_blank\" rel=\"noopener\">&nbsp;Attack on Titan</a></em>, rasanya kok saya nggak rela. Lebih kayak menyaksikan&nbsp;<em>Attack on Titan</em>&nbsp;shippuden dari kisah bergenre shounen. Ternyata Hajime Isayama alias Pak Haji sebagai kreator pun mempertimbangkan alur cerita dengan perasaan, haduuuh, hatiku yang plot twist, Pak. Terutama setelah tahu apa yang tertuang di&nbsp;<em>Attack on Titan&nbsp;</em>chapter 139.</p>\r\n</section>', '/photos/3/aot.jpg', 3, '2021-04-10 23:58:31', '2021-04-10 23:58:31'),
(11, 'Menghadapi Kelakuan Menyebalkan Netizen di Bioskop', '“CUMA NGECEK HP NGGAK BOLEH YA? KAMU PANITIA, HAH? KOK NGATUR-NGATUR???”', '<p>[<strong>MOJOK.CO</strong>]&nbsp;&ldquo;CUMA NGECEK HP NGGAK BOLEH YA? KAMU PANITIA, HAH? KOK NGATUR-NGATUR???&rdquo;</p>\r\n<p>Beberapa hari yang lalu saya datang ke&nbsp;<em>premiere</em>&nbsp;film di sebuah&nbsp;<span class=\"il\">bioskop</span>&nbsp;yang layarnya&nbsp;<em>guedhe tenan&nbsp;</em>dan kebetulan satu studio terisi penuh. Secara keseluruhan film tersebut adalah sebuah kombinasi yang baik antara tema yang diangkat, sinematografi&nbsp;<em>pancen well,&nbsp;</em>juga latar tempatnya yang memanjakan lahir dan batin. Akan tetapi, sebagus apa pun film yang diputar, bakal nggak bagus kalau tidak dibarengi dengan perilaku para penontonnya.</p>\r\n<p>Gimana sih cara nonton di&nbsp;<span class=\"il\">bioskop</span>&nbsp;yang baik dan benar itu? Harus sedakep? Sikap sempurna? Sambil yoga? Sikap lotus? Hapal pancasila? Atau nggak bawa nasi padang terus makan di dalam studio?</p>\r\n<p>Media sosial seperti Instagram sekarang punya satu fitur yang khusus dibuat untuk pamer-pamer lucu, yaitu Stories. Konon dahulu kala ada satu media sosial dengan fitur sejenis yang terkenal karena filter anjingnya dan sekarang sudah banyak ditinggal penggunanya karena banyak yang akhirnya sadar bahwa wajah mereka tidak lucu-lucu amat (malah&nbsp;<em>nggatheli</em>) ketika memakai filter tersebut.</p>\r\n<p>Semua orang ingin terlihat paling terkini dengan membagikan hal-hal yang menurut mereka menarik di Stories, salah satunya merekam adegan saat film sedang berlangsung di dalam&nbsp;<span class=\"il\">bioskop</span>. Sungguh salah satu contoh golongan orang dermawan yang selalu ingin berbagi ke orang-orang di sekitarnya.</p>\r\n<div>\r\n<div><span class=\"ctaText\">Baca juga:</span>&nbsp;&nbsp;<span class=\"postTitle\">Film Posesif: Sebuah Naskah Remake Versi Mojok</span></div>\r\n</div>\r\n<p>Sebelum film diputar, pasti ditayangkan dulu aturan-aturan di dalam&nbsp;<span class=\"il\">bioskop</span>&nbsp;yang seharusnya dipatuhi demi kenyamanan semua orang yang sudah membayar tiket yang tidak murah tersebut. Toh sama-sama bayar, jadi tidak seharusnya saling mengganggu, shay.</p>\r\n<p>Beberapa aturan tersebut adalah tidak boleh mengobrol sepanjang film berlangsung, tidak boleh naikin kaki ke kursi di depannya, dan tidak boleh merekam menggunakan alat apa pun.</p>\r\n<p>Udah ngerti belum? Pasti belum.</p>\r\n<p>Nggak boleh ngobrol itu karena kita semua datang ke&nbsp;<span class=\"il\">bioskop</span>&nbsp;buat nonton film, bukan buat ngerumpi dan komentar setiap adegan ngalor ngidul. Kalau mau kayak gitu sepanjang film berlangsung, mending&nbsp;<em>copy</em>&nbsp;film dari warnet&nbsp;terus tonton di kosan sambil&nbsp;<em>yang-yangan&nbsp;sekarepe dewe</em>. Tapi, jelas ini pembajakan. Saya nggak mendukung, tapi kalau situ barbar, apa boleh bikin.</p>\r\n<p>Nah, yang agak kurang ajar dan lumayan nyebelin adalah perilaku penonton yang nggak paham etiket. Naikin kaki ke kursi di depannya. Orang macam ini biasanya dulu pas pelajaran PPKn cuma pas sampai niat. Yha gimana, kepala ketemu kaki. Belum lagi suka ada yang iseng tendang kursinya. Kalau Anda sopan, kami sopyan, Bung.</p>\r\n<p>Dan ini yang paling penting, tidak boleh merekam menggunakan alat apa pun. Mungkin di tahun 2008 ke bawah, alat buat rekam paling bagus ya kalau nggak kamera kantong paling banter&nbsp;<em>handycam</em>&nbsp;yang harganya juga lumayan. Belum lagi harus menguasai teknik ninja biar nggak ketahuan pegawai&nbsp;<span class=\"il\">bioskop</span>&nbsp;dan proses editing ala kadarnya karena tangan mz perekam goyang-goyang aduhaiii.</p>\r\n<div>\r\n<div><span class=\"ctaText\">Baca juga:</span>&nbsp;&nbsp;<span class=\"postTitle\">A Man Called Ahok dan Hanum &amp; Rangga: Monumen, Atau &ldquo;Marketing&rdquo; Belaka?</span></div>\r\n</div>\r\n<p>Sekarang, hampir semua orang pakai&nbsp;<em>smartphone&nbsp;</em>yang kualitas kameranya mumpuni dan hampir sama dengan kamera profesional. Ditambah media sosial, terciptalah golongan pengisap lem Aibon yang merekam setiap adegan film lalu mengunggah ke Instagram hingga barisan&nbsp;<em>update</em>-nya menyerupai titik-titik ujian sekolah. Memangnya kamu Dian Sastro?</p>\r\n<p>Kelakuan yang begitu sangat, sangat, sangat mengganggu dan merusak&nbsp;<em>mood</em>. Cahaya dari hape yang sangat terang bakal mengganggu dan akan mengalihkan perhatian dari layar&nbsp;<span class=\"il\">bioskop</span>&nbsp;ke hape yang menyala. Ilustrasinya gini deh, coba Anda tidur, terus tiba-tiba mata Anda disodok pake cahaya petromaks, apa ya nggak rumit? Orang-orang datang untuk cari hiburan malah sambat terus-terusan.</p>\r\n<p>Hal lain yang mungkin mengganggu adalah mengajak anak di bawah umur untuk nonton film dewasa. Lha dikira karena filmnya kartun atau superhero, maka otomatis buat anak-anak? Film seperti&nbsp;<em>Logan</em>&nbsp;atau&nbsp;<em>Deadpool</em>&nbsp;ya buat orang dewasa. Kalau ada orang tua yang marah karena film superhero kok bunuh-bunuhan sampai mutilasi, ya mungkin orang tua ini sekolahnya cuma sampai pamit.</p>\r\n<p>Dan belum lama ini ada&nbsp;<a href=\"http://wartakota.tribunnews.com/2017/10/30/cgv-hentikan-tayangan-anime-di-bioskop-karena-pembajakan\" target=\"_blank\" rel=\"noopener\" data-saferedirecturl=\"https://www.google.com/url?hl=en&amp;q=http://wartakota.tribunnews.com/2017/10/30/cgv-hentikan-tayangan-anime-di-bioskop-karena-pembajakan&amp;source=gmail&amp;ust=1511710089193000&amp;usg=AFQjCNGPtfoJkcm6oM4oBVYIdSj2KsYsbQ\">perusahaan besar penyalur film yang terpaksa menghentikan pemutaran sebuah film anime&nbsp;</a>karena maraknya perekaman yang dibagikan lewat media sosial. Tuh kan? Emang enak kalau film yang pengin ditonton nggak jadi tayang di&nbsp;<span class=\"il\">bioskop</span>&nbsp;gara-gara kebodohan sendiri? Kalo Bu Susi tahu, ditenggelamin situ.</p>\r\n<div>&nbsp;</div>\r\n<p>Selain itu kita kerap mendengar ejekan perilaku nonton yang kerap kurang tata krama, dianggap&nbsp;<em>ndeso</em>, udik, katrok. Lha, padahal persoalan etiket ini nggak ada hubungan dengan tempat asal kita tinggal, tapi bagaimana kita dibesarkan. Mbok berhenti ngatain orang&nbsp;<em>ndeso</em>&nbsp;untuk kelakuan yang ugal-ugalan. Jangan sampai disleding Kak Seto.</p>\r\n<p>Agar tidak terjadi hal-hal yang seperti itu, tolonglah, perilakunya diubah. Nggak usah serampangan. Jangan sedikit-sedikit rekam lalu&nbsp;<em>share</em>. Ini nonton&nbsp;<span class=\"il\">bioskop</span>, bukan&nbsp;<em>nanggap</em>&nbsp;Syahrini. Selain bakal kena semprot orang lain secara langsung, bakal disemprot juga sama netizen.</p>\r\n<p>Ingat, mahabenar nerizen atas segala sesuatunya.</p>', '/photos/3/main-hp.jpg', 3, '2021-04-11 00:02:06', '2021-04-11 00:02:06');
INSERT INTO `article` (`id`, `title`, `short_description`, `content`, `image`, `user_id`, `created_at`, `updated_at`) VALUES
(12, 'Roket Kim Jong-un dan Murka Para Pecinta One Piece', 'Melalui surat ini, saya meminta Bapak Kim Jong-Un untuk melakukan jumpa pers dan meminta maaf secara terbuka kepada para pecinta One Piece di seluruh dunia yang telah dirugikan oleh Anda.', '<p>Assalamualaikum, Bapak Kim Jong-un &hellip;.</p>\r\n<p>Perkenalkan, nama saya Ilham Ibrahim dari Swiss van Java, Garut. Saya jelas bukan siapa-siapa di mata Bapak. Negarawan bukan, tokoh internasional juga bukan, agamawan apalagi. Saya hanya seorang mahasiswa yang sedang mencari sesuap ilmu di kota paling romantis,&nbsp;<a href=\"https://mojok.co/jogja/\" target=\"_blank\" rel=\"noopener\">Jogjakarta</a>. Meski Bapak pastinya belum kenal saya, tapi saya tahu kok siapa Bapak. Bahkan, meskipun negara pimpinan Bapak, Korea Utara, adalah negara yang konon paling tertutup di dunia, saya juga bisa menebak dengan presisi apa warna sempak yang setiap malam Jumat Kliwon Anda kenakan. Bapak tidak percaya? Sama, saya sendiri juga tidak.</p>\r\n<p>Baiklah, Pak, demi mempersingkat durasi, saya tak akan berbasa-basi. Dalam surat yang niatnya saya terjemahkan juga ke dalam bahasa Swahili ini, saya hendak membincang soal isu&nbsp;<a href=\"http://indianexpress.com/article/world/world-news/north-korea-says-rocket-launch-successful-kwangmyong-4-placed-into-orbit/\" target=\"_blank\" rel=\"noopener\">Korea Utara yang diduga telah meluncurkan roket Kwangmyong 4 sebagai uji coba rudal balistik</a>. Ada tiga hal pokok yang ingin saya sampaikan kepada Bapak terkait isu tersebut.</p>\r\n<p><strong>I</strong></p>\r\n<p>Bapak Kim yang saya hormati,</p>\r\n<p>Saya sempat membayangkan bagaimana dampak dari semua asumsi dan dugaan tersebut. Barangkali Korea Utara tambah dikecam dunia, tambah dikucilkan seperti anak tiri, juga tambah dibuli habis-habisan oleh Amerika Serikat dan para kompatriotnya. Segenap&nbsp;<em>haters</em>&nbsp;Bapak tentunya juga akan bertambah banyak, seperti orang miskin di negara saya yang konon haibat ini: Indonesia.</p>\r\n<p>Saya jadi bertanya-tanya, apa Bapak kuat hidup dalam tekanan seperti itu? Kalau Bapak kuat, apa rakyat Korea Utara juga sanggup? Hidup dengan berkalang benci dari khalayak ramai, dipergunjingkan kanan-kiri, digosipkan dengan isu-isu miring, diwaspadai seperti moncong senapan selama bertahun-tahun tentu bukan hidup yang menyenangkan. Kecuali semua rakyat Bapak, termasuk Bapak sendiri, punya gejala&nbsp;<a href=\"https://mojok.co//?s=jonru\" target=\"_blank\" rel=\"noopener\">ke-Jonru-Jonru-an</a>. Itu sih soal lain.</p>\r\n<div>\r\n<div><span class=\"ctaText\">Baca juga:</span>&nbsp;&nbsp;<span class=\"postTitle\">Begini Rasanya Jadi Pacar Nicholas Saputra</span></div>\r\n</div>\r\n<p>Kalau saya tidak salah nih, Pak, pendanaan militer Korea Utara konon besarnya mencapai sepertiga dari pendapatan negara, yang mana jadinya menguras kebutuhan investasi dan konsumsi masyarakat. Duh, saya kok jadi kasihan dengan mereka. Dulu Korea Utara memang bisa cengar-cengir karena masih ada Uni Soviet. Makan ditraktir, berobat dibayarin, sekolahan dibikinin. Lah, sekarang? Memang Bapak berani nyenggol Vladimir Putin yang hobi menunggangi beruang dan berburu elang itu? Harusnya Bapak mikir, dengan sikap keras kepala Bapak, kemungkinan besar investor tidak mau lagi bekerja sama dengan Korea Utara. Termasuk Rusia. Kalau sudah (miskin) begitu, nanti negara Bapak bisa masuk ke dalam kategori&nbsp;<em>7 Negara terdhuafa</em>&nbsp;versi On The Spot, lho.</p>\r\n<p>Bapak sudah siap?</p>\r\n<p><strong>II</strong></p>\r\n<p>Bapak Kim yang saya banggakan,</p>\r\n<p>Saya dan jutaan orang di dunia lain sebetulnya telah berusaha untuk tidak berpikir bahwa rudal yang diluncurkan Korea Utara bermaksud sebagai propaganda, namun kami terlanjur ber-<em>suudzon</em>&nbsp;berjamaah. Mungkin kami telah kemakan pemberitaan&nbsp;<em>mainstream</em>&nbsp;betapa Korea Utara adalah sebuah ladang penuh teror kebengisan. Dan citra Bapak sebagai penebar sensasi seperti Farhat Abbas juga sepertinya telah terlanjur melekat di benak kami. Tolonglah, Pak, berubah sikap, deh. Cukup si Farhat itu saja yang mendapatkan rezeki dengan berjualan kontroversi, Anda mah jangan, Pak.</p>\r\n<p>Jauh lebih penting dari itu semua, Pak, citra komunisme yang selama ini telah rusak, akan tambah hancur lagi, Pak. Yah, walaupun Korea Utara sebetulnya lebih tepat disebut sebagai negara totalitarian, sih.&nbsp;<em>Juche</em>, kalau dalam istilah kakek Anda, Kim Il Sung. Tapi &lsquo;kan pemberitaan arus utama sering sengaja memukul rata soal perbedaan antar ideologi ini. Oleh karena itulah, Pak, suatu hari nanti bukan tak mungkin jualan komunisme akan dianggap teroris, seperti halnya jualan&nbsp;<em>Islamic State</em>. Coba pikir kesana deh, tolong.</p>\r\n<div>\r\n<div><span class=\"ctaText\">Baca juga:</span>&nbsp;&nbsp;<span class=\"postTitle\">Cocokologi Keberadaan Kim Jong-un dan Huru-hara Korut</span></div>\r\n</div>\r\n<p>Pihak Korea Utara memang telah menyangkal bahwa peluncuran roket ini tak lebih dari upaya peningkatan ilmu pengetahuan dan teknologi, tapi masyarakat mana percaya? Media-media di seluruh dunia menggambarkan peluncuran tersebut sebagai era dimulainya Perang Dingin jilid dua. Agak lebay sih, memang. Tapi, jika memang betul nantinya Perang Dingin kembali meletus seperti tahun 50-an antara Amerika Serikat dan Uni Soviet, kecurigaan antar negara akan tambah menjadi-jadi. Jujur saja, saya belum rela tewas karena menjadi korban senjata pemusnah massal, Pak. Rasanya kok kurang syahid gimana gitu.</p>\r\n<p><strong>III</strong></p>\r\n<p>Bapak Kim yang saya cintai,</p>\r\n<p>Inti dari surat saya sebetulnya ada di poin nomor tiga ini, Pak. Jadi, surat ini saya tulis niatnya sebagai penyambung lidah&nbsp;<em>anime lovers&nbsp;</em>di Indonesia, terutama para pecinta komik One Piece. Terus terang saja ya, Pak, kami semua merasa kecewa berat dengan ulah Bapak yang meluncurkan roket Kwangmyong 4 itu. Sebab,&nbsp;<a href=\"https://www.bbc.com/indonesia/dunia/2016/02/160207_dunia_roket_koreautara\" target=\"_blank\" rel=\"noopener\">roket itu sempat melewati wilayah Pulau Okinawa di Jepang,</a>&nbsp;hingga membuat pemerintah mereka berang. Lalu apa hubungannya dengan kami?</p>\r\n<p>Itu artinya, kemungkinan kami tak bisa lagi mengunduh komik dan film terbaru One Piece karena Jepang akan memperketat keamanan (jaringan internet) mereka!</p>\r\n<p>Sebelumnya kami sudah cukup sakit hati dengan sikap si kampret&nbsp;<a href=\"http://nasional.kompas.com/read/2008/07/14/15560390/kpi.tunggu.respons.global.tv.terkait.kartun.quotone.piecequot.\" target=\"_blank\" rel=\"noopener\">Komisi Penyiaran Indonesia (KPI) yang melarang seluruh tayangan One Piece di televisi lokal</a>&nbsp;karena alasan yang lebih cocok dikemukakan di Abad Pertengahan. Kini Bapak menambah lebar luka kami. Untuk One Piece edisi minggu ini saja sampai di-<em>delay</em>&nbsp;karena ulah negaramu, Pak. Besok-besok bisa jadi aksesnya tertutup total. Ketahuilah, Pak, ada jutaan pasang mata di dunia ini (mungkin juga di Korea Utara) yang begitu menyukai One Piece. Saya peringatkan: Bapak jangan sampai membuat kami murka.</p>\r\n<div>\r\n<div><span class=\"ctaText\">Baca juga:</span>&nbsp;&nbsp;<span class=\"postTitle\">Donald Trump-Kim Jong Un: Dulu Saling Ejek, Sekarang Udah Baikan?</span></div>\r\n</div>\r\n<p>Maka, melalui surat ini, saya meminta Bapak Kim Jong-Un untuk melakukan jumpa pers dan meminta maaf secara terbuka kepada para pecinta One Piece di seluruh dunia yang telah dirugikan oleh Anda. Saya tunggu 24 jam dari sekarang. Jika Bapak tetap tidak menggubrisnya, saya akan lapor ke RT setempat.</p>', '/photos/3/Kim_Jong-un_sketch.jpg', 3, '2021-04-11 00:06:39', '2021-04-11 00:06:39'),
(13, 'Kenapa Liputan Bencana Alam Malah Bagai Telenovela dan Penuh Air Mata?', 'Liputan bencana alam di tanah air biasanya adalah soal penggalangan dana dan salat gaib bersama, atau keluarga korban yang menangis histeris.', '<p><strong>MOJOK.CO</strong>&nbsp;&ndash;&nbsp;<em>Liputan bencana alam di tanah air biasanya adalah soal penggalangan dana dan salat gaib bersama, atau keluarga korban yang menangis histeris.</em></p>\r\n<p>Seorang sahabat saya yang pernah mukim di Tokyo, Jepang, beberapa tahun lalu mengeluh dengan kondisi&nbsp;<a href=\"https://mojok.co/ddl/esai/penyanderaan-di-papua-bagaimana-media-melahirkan-bias/\">media massa</a>&nbsp;nasional dalam soal pemberitaan bencana. &ldquo;Media di Indonesia terlalu melodramatik (untuk tidak menyebut cengeng),&rdquo; katanya, &ldquo;dan cenderung hanya berambisi menguras air mata. Mereka lupa bahwa ada peran edukatif yang diemban media massa.&rdquo; Begitu kira-kira celotehnya suatu sore di kantin kampus.</p>\r\n<p>Saya mengangguk, meski lebih merasa semacam &ldquo;pengakuan dosa&rdquo; pribadi karena cara berpikir demikian sesungguhnya telah mendarah daging dalam praktik jurnalistik sehari-hari.</p>\r\n<p>&ldquo;Di Jepang,&rdquo; ia melanjutkan, &ldquo;media massa memberitakan potensi bencana sebelum bencana tersebut benar-benar datang. Pemerintah dan masyarakat yang membaca berita tadi melakukan upaya antisipasi sebelum bencana datang.&rdquo;</p>\r\n<p>Ya, maklum saja, Negeri Samurai tersebut banyak belajar dari bencana yang menimpa negeri mereka. Ilmuwan di sana &nbsp;dengan begitu tekun membaca semua gejala alam, membuat hipotesis, mengumpulkan data, dan menyimpulkan &ldquo;kehendak semesta&rdquo;. Hasilnya? Bangunan-bangunan didesain agar tahan terhadap gempa bumi, ruang publik siap untuk digunakan sebagai tempat evakuasi, kurikulum sekolah mengajarkan siswa agar tanggap bencana, dan sebagainya.</p>\r\n<p>Mengenai ketahanan bangunan terhadap gempa, masyarakat Kanekes di pedalaman Banten Selatan sesungguhnya punya desain rumah yang baik sebagai contoh. Semua perencanaan berlangsung dalam kalkulasi dingin tanpa selubung mitos dan simplifikasi argumen mengenai tuah dosa manusia.</p>\r\n<div>\r\n<div><span class=\"ctaText\">Baca juga:</span>&nbsp;&nbsp;<span class=\"postTitle\">Indonesia Berduka, Gempa Beruntun Guncang Donggala</span></div>\r\n</div>\r\n<p>Di sisi lain, jurnalis punya dasar mengenai wawasan seputar kebencanaan dan memegang kuat etika dalam kerja jurnalisme. Keduanya bekerja dalam hubungan solutif dan memberikan harapan kepada masyarakat, bukannya jatuh pada pesimisme dan duka yang berlarut-larut.</p>\r\n<p>Sebagai contoh nyata, laman&nbsp;<a href=\"http://www.japan-guide.com/\">www.japan-guide.com</a>&nbsp;menulis peristiwa gempa dan tsunami setinggi 40 meter pada 11 Maret 2011 di Tohoku, Jepang, dalam artikel berjudul&nbsp;<em>Earthquake and Tsunami Update</em>. Media di negeri Matahari Terbit tersebut menulis dampak akibat gempa, tsunami, dan insiden radioaktif akibat pecahnya pembangkit listrik tenaga nuklir di sekitar kawasan PLTN Fukushima, Daichi. Selebihnya, media menampilkan foto dampak kerusakan bangunan akibat gempa dan tsunami, lengkap dengan infografis mengenai titik gempa dan wilayah terdampak.</p>\r\n<p>Di sana, saya nggak nemu, tuh, gambar seperti tim penanggulangan bencana yang tergopoh-gopoh menggotong kantong mayat, korban-korban berjejeran, raut wajah korban yang sedih, keluarga korban yang menangis histeris kehilangan anggota keluarga, atau ucapan bela sungkawa yang disertai suara tercekat dan tangis.</p>\r\n<p>Pada pemberitaan lain, saya juga menemukan berita mengenai topan berkekuatan besar mendekati kawan Okinawa di portal berita&nbsp;<a href=\"http://www.japantoday.com/\">www.japantoday.com</a>. Dalam berita berjudul&nbsp;<em>Strong Typhoon Passes Near Okinawa; Set to Hit Mainland</em>, kesan yang saya dapat justru berita tersebut menekankan langkah antisipatif dan pentingnya sikap waspada dibandingkan sekadar teror ketakutan akan datangnya bahaya. Nah, dalam batin saya, justru begitulah seharusnya karya jurnalistik yang berempati terhadap pembaca. Sialnya, saya belum melakukannya!</p>\r\n<div>\r\n<div><span class=\"ctaText\">Baca juga:</span>&nbsp;&nbsp;<span class=\"postTitle\">Palu, Sigi, dan Donggala Bangkit Bersama Canda Tawa</span></div>\r\n</div>\r\n<p>Benar, reporter seperti saya malah akan lebih tertarik mengejar pengakuan korban di lokasi kejadian tanpa memberi ruang argumentasi ilmiah para pakar dan peneliti yang tekun menyelidik cuaca dan ilmu bumi. Akibatnya, jadilah parade rutin pascabencana sebagai hari berkabung nasional.</p>\r\n<p>Liputan yang ramai setelah bencana di tanah air biasanya adalah soal penggalangan dana, salat gaib bersama, atau&nbsp;<a href=\"https://mojok.co/red/rame/moknyus/kunjungi-korban-gempa-palu-jokowi-diminta-tak-pakai-fasilitas-negara/\">kunjungan orang-orang penting</a>&nbsp;ke lokasi bencana. Informasi tambahan pascagempa dan&nbsp;<a href=\"https://mojok.co/red/rame/moknyus/tsunami-palu-sementara-tercatat-384-korban-gunung-kerinci-aman-meski-erupsi/\">tsunami di Palu</a>&nbsp;pun tak kalah memilukan, yakni kaburnya narapidana akibat runtuhnya rumah tahanan dan penjarahan karena lambannya bantuan untuk korban bencana.</p>\r\n<p>Berita-berita di atas lahir dari adagium klasik yang berbunyi&nbsp;<em>bad news is good news.&nbsp;</em>Sayangnya, hal tersebut masih menjadi acuan para jurnalis&mdash;ya, termasuk saya ini. Sementara itu, antitesis gerakan penyajian berita berupa&nbsp;<em>good news is good news&nbsp;</em>ala&nbsp;<em>Shauna Crockett-Burrows</em>&nbsp;(1930-2012) malah tidak banyak berkambang meski sudah digagas sejak 1993 melalui&nbsp;<em>The Positive News&nbsp;</em>(&ldquo;<em>Shauna Crockett-Burrows 1930-2012</em>&rdquo; melalui&nbsp;<a href=\"http://www.positive.news/\">www.positive.news</a>)<em>.&nbsp;</em>Pemberitaan positif biasanya hanya akan mudah ditemukan pada advertorial alias berita berbayar.</p>\r\n<p>Pertanyaannya, apakah&nbsp;<em>bad news is good news&nbsp;</em>mesti ditinggalkan? Saya kira tidak. Namun, tidak untuk kasus berita bencana alam.</p>\r\n<p>Begini loh,&nbsp;<em>bad news is good news&nbsp;</em>akan sangat berguna untuk isu-isu hukum, terutama indikasi adanya korupsi yang menyangkut dana publik yang dikelola institusi negara. Namun, titik pijaknya bukan semata kebencian membabi buta untuk menghajar dan menghakimi pihak lain. Penekanannya justru ada pada poin kedua dalam&nbsp;<em>The Elements of Journalism, What Newspeople Should Know and the Public Should Expect</em>&nbsp;(New York: Crown Publishers) karya Bill Kovach dan Tom Rosenstiel (2001). Hmm, apakah itu?</p>\r\n<div>\r\n<div><span class=\"ctaText\">Baca juga:</span>&nbsp;&nbsp;<span class=\"postTitle\">Tiga Hal Baru di Mandiri ArtJog 9</span></div>\r\n</div>\r\n<p>Bahwa loyalitas pertama jurnalisme adalah kepada warga (<em>citizens</em>). Selain itu, poin kedua tersebut berkaitan dengan poin kelima yang menyebutkan bahwa jurnalis harus melayani sebagai pemantau independen terhadap kekuasaan.</p>\r\n<p>Lantas kini, saya mesti kembali bertanya: apakah tugas seorang jurnalis sebenarnya justru selayaknya artis telenovela dalam meliput bencana? Apakah tugas jurnalis akan dianggap sukses besar jika mampu menguras air mata pemirsa?</p>\r\n<p>Saya, sih, ingin menjawab, &ldquo;Tidak.&rdquo; Nggak tahu, deh, kalau Mas Anang. Hehe.</p>', '/photos/3/esai-sore-media-dan-air-mata-mojok.jpg', 3, '2021-04-11 00:10:35', '2021-04-11 00:10:35');

-- --------------------------------------------------------

--
-- Table structure for table `article_tags`
--

CREATE TABLE `article_tags` (
  `id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `article_tags`
--

INSERT INTO `article_tags` (`id`, `article_id`, `topic_id`) VALUES
(16, 4, 2),
(17, 4, 7),
(18, 5, 2),
(19, 5, 6),
(20, 6, 5),
(21, 7, 5),
(23, 2, 2),
(24, 2, 6),
(32, 8, 6),
(33, 9, 1),
(34, 10, 1),
(35, 11, 1),
(36, 12, 1),
(37, 13, 1),
(38, 3, 2),
(39, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_10_12_000000_create_artikels_table', 2),
(5, '2019_10_15_055625_create_personal_infos_table', 3),
(6, '2019_10_15_073949_create_web_infos_table', 4),
(7, '2020_07_22_214140_create_permission_tables', 5);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 2),
(1, 'App\\User', 3),
(4, 'App\\User', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', '2020-07-22 14:50:05', '2020-07-22 14:50:05'),
(2, 'role-create', 'web', '2020-07-22 14:50:05', '2020-07-22 14:50:05'),
(3, 'role-edit', 'web', '2020-07-22 14:50:05', '2020-07-22 14:50:05'),
(4, 'role-delete', 'web', '2020-07-22 14:50:05', '2020-07-22 14:50:05'),
(5, 'menu-list', 'web', '2020-07-22 14:50:05', '2020-07-22 14:50:05'),
(6, 'menu-create', 'web', '2020-07-22 14:50:05', '2020-07-22 14:50:05'),
(7, 'menu-edit', 'web', '2020-07-22 14:50:05', '2020-07-22 14:50:05'),
(8, 'menu-delete', 'web', '2020-07-22 14:50:05', '2020-07-22 14:50:05'),
(9, 'category-list', 'web', '2020-07-22 14:50:05', '2020-07-22 14:50:05'),
(10, 'category-create', 'web', '2020-07-22 14:50:05', '2020-07-22 14:50:05'),
(11, 'category-edit', 'web', '2020-07-22 14:50:05', '2020-07-22 14:50:05'),
(12, 'category-delete', 'web', '2020-07-22 14:50:05', '2020-07-22 14:50:05'),
(13, 'user-list', 'web', NULL, NULL),
(14, 'user-create', 'web', NULL, NULL),
(15, 'user-delete', 'web', NULL, NULL),
(16, 'user-edit', 'web', NULL, NULL),
(17, 'table-list', 'web', NULL, NULL),
(18, 'table-create', 'web', NULL, NULL),
(19, 'table-edit', 'web', NULL, NULL),
(20, 'table-delete', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_infos`
--

CREATE TABLE `personal_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `motto` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_infos`
--

INSERT INTO `personal_infos` (`id`, `name`, `image`, `motto`, `about`, `email`) VALUES
(1, 'Mohammad Rangga Jayaswara', '/photos/1/Avatar/kazuma.jpg', 'A No Life Programmer', 'A No Life Programmer work at Nusa Premier Data as the backend programmer   and want to shared his knowledge', 'mohammadrangga27@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'web', '2020-07-24 00:56:36', '2020-07-24 00:56:36'),
(3, 'Member', 'web', '2020-07-24 01:34:03', '2020-07-24 01:34:03'),
(4, 'Guest', 'web', '2020-07-24 04:28:19', '2020-07-24 04:28:19');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(5, 3),
(5, 4),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(9, 3),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE `topic` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cover` varchar(80) DEFAULT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topic`
--

INSERT INTO `topic` (`id`, `name`, `cover`, `company_id`) VALUES
(1, 'Traveling', '/photos/3/travelling.jpg', 0),
(2, 'History', '/photos/3/history.jpg', 0),
(4, 'Sports', '/photos/3/sports.jpg', 0),
(5, 'Technology', '/photos/3/technology.jpg', 0),
(6, 'Politic', '/photos/3/politic.jpg', 3),
(7, 'Geography', '/photos/3/geography.jpg', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `email_verified_at`, `password`, `remember_token`, `avatar`, `created_at`, `updated_at`) VALUES
(3, 'Mr.Stein', 'joestar@gmail.com', '0895325845247', NULL, '$2y$10$9XkIjrRbyZvroErA0qJ/oenp8DJOvVRkzzkFrFQjbCjUUOQ7V1MgW', NULL, '/photos/3/216545.jpg', '2020-07-24 04:29:52', '2021-04-17 05:46:30'),
(4, 'Dio Brando', 'dio@gmail.com', '', NULL, '$2y$12$MGTRkkl8ZmfrfuF1YtJeju/8xy/IUGN.M9Hy2/87gfPK0iVqxFBMO ', NULL, '/photos/2/sergio.jpg', '2020-07-24 04:55:46', '2020-07-24 07:31:32');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `youtube_key` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `title`, `description`, `user_id`, `youtube_key`, `created_at`, `updated_at`) VALUES
(1, 'konser ara batur di Abbey,Inggris', 'Video Konsert SIgur Ros ini sangat merdu sekali yang diadakan diAbbey inggris', 3, 'vUK_ou_mTQE', '2021-02-13 08:05:20', '2021-04-16 09:52:24'),
(2, 'Sejarah Perang dan Kanibalisme pada Liberia', 'Vice.com menjelaskan tentang bagaimana perang dan kanibalisme dimulai di Liberia serta seks bebas dan narkoba', 3, 'ZRuSS0iiFyo', '2021-02-16 07:27:41', '2021-02-16 07:27:41'),
(3, '30 Tahun Konflik di Somalia', 'Berikut ini wawancara dan liputan tentang Somalia dan juga serta penjelasan tentang sejarah konflik Bersenjata Somalia yang dijelaskan oleh BBC News', 3, '0FY96qD_W1k', '2021-02-18 07:01:13', '2021-02-18 07:01:13'),
(4, 'Kondisi Jerman setelah kalah di Dunia Perang', 'Berikut ini adalah keadaan Jerman setelah kekalahan pada Perang Dunia ke 2,Setelah Hitler bunuh diri dan juga para petinggi Nazi lainnya juga beberapa ada yang bunuh diri untuk menghindari penangkapan dan eksekusi mati oleh tentara Sekutu,ini adalah video yang diambil dari akun Youtube \"The Best Film Archives\"', 3, 'x8XG-nbM3BE', '2021-02-18 07:05:22', '2021-02-18 07:05:22'),
(5, 'Mengunjungi tempat dengan radiasi tertinggi di Kazakhstan', 'Berikut ini adalah laporan dari VICE tentang tempat beradiasi tinggi di daerah Kazakhstan', 3, 'wrn_ekMx6cw', '2021-02-18 07:15:16', '2021-02-18 07:15:16');

-- --------------------------------------------------------

--
-- Table structure for table `video_tags`
--

CREATE TABLE `video_tags` (
  `id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video_tags`
--

INSERT INTO `video_tags` (`id`, `video_id`, `topic_id`) VALUES
(5, 2, 2),
(6, 2, 6),
(7, 2, 7),
(8, 3, 1),
(9, 3, 2),
(10, 3, 6),
(11, 4, 2),
(12, 4, 6),
(13, 5, 1),
(14, 5, 2),
(15, 1, 4),
(16, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `web_infos`
--

CREATE TABLE `web_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `web_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `web_cover` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `web_logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `web_infos`
--

INSERT INTO `web_infos` (`id`, `web_name`, `web_cover`, `about`, `web_logo`) VALUES
(1, 'Mr.Stein', '/photos/1/web_cover/bukhara.jpg', 'Bersedekah Ilmu', '/photos/1/web_logo/golang_logo.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article_tags`
--
ALTER TABLE `article_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_infos`
--
ALTER TABLE `personal_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video_tags`
--
ALTER TABLE `video_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_infos`
--
ALTER TABLE `web_infos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `article_tags`
--
ALTER TABLE `article_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `personal_infos`
--
ALTER TABLE `personal_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `topic`
--
ALTER TABLE `topic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `video_tags`
--
ALTER TABLE `video_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `web_infos`
--
ALTER TABLE `web_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
