<?php
$sentiment = new \PHPInsight\Sentiment();

use Abraham\TwitterOAuth\TwitterOAuth;

$this->load->model('k_models');
$this->load->model('s_models');

$connection = new TwitterOAuth('Oadgku9IWIz7eQWCGQQo6QMwt', 'pZKcMWMYIjBAMICJgS4QX5FfDf3ZSDAvWcNPCm6A6KX8vLgez1', '1156935537774587905-45EL5NsQr8NkfW0qtgQ6ityi9MGrrP', 'uWNQCvHG8tRM4sB0ziOyojkY3nladi1485LvNf6QUV2aa');
$content = $connection->get("account/verify_credentials");

function saveToContentTable($tweet)
{
	$ci = get_instance();
	$data = [
			'idKonten' => substr($tweet->id, 0, 10),
			'namaAkun' => $tweet->user->screen_name,
			'namaPengguna' => $tweet->user->name,
			'tanggalPosting' => date('Y-m-d', strtotime($tweet->created_at)),
			'isiKonten' => $tweet->full_text,
			'jumlahLike' => $tweet->favorite_count,
			'sosialMedia' => "Twitter"
	];
	$ci->k_models->insert_konten($data);
}

function saveToSentimenTable($tweet, $sentimen, $score)
{
	$ci =& get_instance();
	$data = [
			'idKonten' => substr($tweet->id, 0, 10),
			'sentimenPositif' => $score['positif'],
			'sentimenNegatif' => $score['negatif'],
			'sentimenNetral' => $score['netral'],
			'sentimen' => $sentimen
	];
	$ci->s_models->insert_sentimen($data);
}

//Tweet Tentang Unpad
$unpad = $connection->get("search/tweets", ['exclude_replies' => true, 'q' => 'unpad', 'tweet_mode' => 'extended']);
$tweet_unpad = $unpad->statuses;
usort($tweet_unpad, function ($a, $b) {
	if ($a->favorite_count == $b->favorite_count)
		return 0;
	return $a->favorite_count < $b->favorite_count ? 1 : -1;
});

//Tweet Tentang Pendidikan Unpad
$pendidikan = $connection->get("search/tweets", ['exclude_replies' => true, 'q' => 'pendidikan unpad', 'tweet_mode' => 'extended']);
$tweet_pendidikan = $pendidikan->statuses;
usort($tweet_pendidikan, function ($a, $b) {
	if ($a->favorite_count == $b->favorite_count)
		return 0;
	return $a->favorite_count < $b->favorite_count ? 1 : -1;
});

//Tweet Tentang Penelitian Unpad
$penelitian = $connection->get("search/tweets", ['exclude_replies' => true, 'q' => 'penelitian unpad', 'tweet_mode' => 'extended']);
$tweet_penelitian = $penelitian->statuses;
usort($tweet_penelitian, function ($a, $b) {
	if ($a->favorite_count == $b->favorite_count)
		return 0;
	return $a->favorite_count < $b->favorite_count ? 1 : -1;
});

// Tweet Tentang Mahasiswa Unpad
$mahasiswa = $connection->get("search/tweets", ['exclude_replies' => true, 'q' => 'mahasiswa unpad', 'tweet_mode' => 'extended']);
$tweet_mahasiswa = $mahasiswa->statuses;
usort($tweet_mahasiswa, function ($a, $b) {
	if ($a->favorite_count == $b->favorite_count)
		return 0;
	return $a->favorite_count < $b->favorite_count ? 1 : -1;
});

// Tweet Tentang Alumni Unpad
$alumni = $connection->get("search/tweets", ['exclude_replies' => true, 'q' => 'alumni unpad', 'tweet_mode' => 'extended']);
$tweet_alumni = $alumni->statuses;
usort($tweet_alumni, function ($a, $b) {
	if ($a->favorite_count == $b->favorite_count)
		return 0;
	return $a->favorite_count < $b->favorite_count ? 1 : -1;
});

// Tweet Tentang Penerimaan Unpad
$penerimaan = $connection->get("search/tweets", ['exclude_replies' => true, 'q' => 'penerimaan unpad', 'tweet_mode' => 'extended']);
$tweet_penerimaan = $penerimaan->statuses;
usort($tweet_penerimaan, function ($a, $b) {
	if ($a->favorite_count == $b->favorite_count)
		return 0;
	return $a->favorite_count < $b->favorite_count ? 1 : -1;
});

// Tweet Tentang Pelayanan Unpad
$pelayanan = $connection->get("search/tweets", ['exclude_replies' => true, 'q' => 'pelayanan unpad', 'tweet_mode' => 'extended']);
$tweet_pelayanan = $pelayanan->statuses;
usort($tweet_pelayanan, function ($a, $b) {
	if ($a->favorite_count == $b->favorite_count)
		return 0;
	return $a->favorite_count < $b->favorite_count ? 1 : -1;
});

?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title><?= $title ?></title>

	<!-- Google Font: Source Sans Pro -->
	<link rel="stylesheet"
		  href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="<?= base_url('assets/'); ?>plugins/fontawesome-free/css/all.min.css">
	<!-- Ionicons -->
	<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
	<!-- Tempusdominus Bootstrap 4 -->
	<link rel="stylesheet"
		  href="<?= base_url('assets/'); ?>plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
	<link rel="stylesheet" href="<?= base_url('assets/'); ?>plugins/bootstrap/css/bootstrap.min.css">
	<!-- Theme style -->
	<link rel="stylesheet" href="<?= base_url('assets/'); ?>dist/css/adminlte.min.css">
	<!-- overlayScrollbars -->
	<link rel="stylesheet" href="<?= base_url('assets/'); ?>plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

	<!-- Preloader -->
	<div class="preloader flex-column justify-content-center align-items-center">
		<img class="animation__shake" src="<?= base_url('assets/'); ?>img/logo.png" alt="AdminLTELogo" height="60"
			 width="60">
	</div>

	<!--Navbar -->
	<?php $this->load->view('partials/navbar'); ?>
	<!-- /.navbar -->

	<!-- Main Sidebar Container -->
	<?php $this->load->view('partials/left-navbar'); ?>

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<div class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<h1 class="m-0">Dashboard</h1>
					</div><!-- /.col -->
				</div><!-- /.row -->
			</div><!-- /.container-fluid -->
		</div>
		<!-- /.content-header -->

		<!-- Main content -->
		<section class="content">
			<div class="container-fluid">
				<!-- Small boxes (Stat box) -->
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-md-5 col-lg-4">
							<div class="clean-pricing-item">
								<div class="heading">
									<h3>Sentimen Positif</h3>
								</div>
								<?php
								//Foreach Pendidikan
								foreach ($tweet_unpad as $tweet) {
									$isi = $tweet->full_text;
									$scores = $sentiment->score($isi);
									$class = $sentiment->categorise($isi);
									if ($class == "positif") {
										?>
										<div class="d-flex media">
											<div class="media-body">
												<div><h5 style="float : left">@<?php echo $tweet->user->name; ?></h5>
												</div>
												<br>
												<p class="text-start"><?php echo $isi; ?></p>
												<hr>
											</div>
										</div>
										<?php
										saveToContentTable($tweet);
										saveToSentimenTable($tweet, $class, $scores);
									}
								}
								?>
								<a href="<?php echo base_url() . 'Dashboard/Positif' ?>" class="small-box-footer">Selengkapnya
									<i class="fas fa-arrow-circle-right"></i></a>
							</div>
						</div>
						<div class="col-md-5 col-lg-4">
							<div class="clean-pricing-item">
								<div class="heading">
									<h3>Sentimen Negatif</h3>
								</div>
								<?php
								//Foreach Pendidikan
								foreach ($tweet_unpad as $tweet) {
									$isi = $tweet->full_text;
									$scores = $sentiment->score($isi);
									$class = $sentiment->categorise($isi);
									if ($class == "negatif") {
										?>
										<div class="d-flex media">
											<div class="media-body">
												<div><h5 style="float : left">@<?php echo $tweet->user->name; ?></h5>
												</div>
												<br>
												<p class="text-start"><?php echo $isi; ?></p>
												<hr>
											</div>
										</div>
										<?php
										saveToContentTable($tweet);
										saveToSentimenTable($tweet, $class, $scores);
									}
								}
								?>
								<a href="<?php echo base_url() . 'Dashboard/Negatif' ?>" class="small-box-footer">Selengkapnya
									<i class="fas fa-arrow-circle-right"></i></a>
							</div>
						</div>
						<div class="col-md-5 col-lg-4">
							<div class="clean-pricing-item">
								<div class="heading">
									<h3>Sentimen Netral</h3>
								</div>
								<?php
								//Foreach Pendidikan
								foreach ($tweet_unpad as $tweet) {
									$isi = $tweet->full_text;
									$scores = $sentiment->score($isi);
									$class = $sentiment->categorise($isi);
									if ($class == "netral") {
										?>
										<div class="d-flex media">
											<div class="media-body">
												<div><h5 style="float : left">@<?php echo $tweet->user->name; ?></h5>
												</div>
												<br>
												<p class="text-start"><?php echo $isi; ?></p>
												<hr>
											</div>
										</div>
										<?php
										saveToContentTable($tweet);
										saveToSentimenTable($tweet, $class, $scores);
										break;
									}
								}
								?>
								<a href="<?php echo base_url() . 'Dashboard/Netral' ?>" class="small-box-footer">Selengkapnya
									<i class="fas fa-arrow-circle-right"></i></a>
							</div>
						</div>
					</div>
				</div>
				<h1 class="text-center" style="margin-top: 20px; margin-bottom: 20px">#Trending</h1>
				<div class="row">
					<div class="col-lg-3 col-4">
						<!-- small box -->
						<div class="small-box bg-info">
							<div class="inner">
								<h3>#Pendidikan</h3>
								<div class="media-body">
									<h5>@<?php echo $tweet_pendidikan[0]->user->name; ?></h5>
									<p class="text-start"><?php echo $tweet_pendidikan[0]->full_text; ?></p>
								</div>
							</div>
							<div class="icon">
								<i class="ion ion-bag"></i>
							</div>
							<a href="<?php echo base_url() . 'Dashboard/Pendidikan'; ?>" class="small-box-footer">More
								info <i class="fas fa-arrow-circle-right"></i></a>
						</div>
					</div>
					<!-- ./col -->
					<div class="col-lg-3 col-4">
						<!-- small box -->
						<div class="small-box bg-success">
							<div class="inner">
								<h3>#Penelitian</h3>
								<div class="media-body">
									<h5>@<?php echo $tweet_penelitian[0]->user->name; ?></h5>
									<p class="text-start"><?php echo $tweet_penelitian[0]->full_text; ?></p>
								</div>
							</div>
							<div class="icon">
								<i class="ion ion-stats-bars"></i>
							</div>
							<a href="<?php echo base_url() . 'Dashboard/Penelitian' ?>" class="small-box-footer">More
								info <i class="fas fa-arrow-circle-right"></i></a>
						</div>
					</div>
					<!-- ./col -->
					<div class="col-lg-3 col-4">
						<!-- small box -->
						<div class="small-box bg-warning">
							<div class="inner">
								<h3>#Mahasiswa</h3>
								<div class="media-body">
									<h5>@<?php echo $tweet_mahasiswa[0]->user->name; ?></h5>
									<p class="text-start"><?php echo $tweet_mahasiswa[0]->full_text; ?></p>
								</div>
							</div>
							<div class="icon">
								<i class="ion ion-person-add"></i>
							</div>
							<a href="<?php echo base_url() . 'Dashboard/Mahasiswa' ?>" class="small-box-footer">More
								info <i class="fas fa-arrow-circle-right"></i></a>
						</div>
					</div>
					<!-- ./col -->
					<div class="col-lg-3 col-4">
						<!-- small box -->
						<div class="small-box bg-danger">
							<div class="inner">
								<h3>#Alumni</h3>
								<div class="media-body">
									<h5>@<?php echo $tweet_alumni[0]->user->name; ?></h5>
									<p class="text-start"><?php echo $tweet_alumni[0]->full_text; ?></p>
								</div>
							</div>
							<div class="icon">
								<i class="ion ion-pie-graph"></i>
							</div>
							<a href="<?php echo base_url() . 'Dashboard/Alumni'; ?>" class="small-box-footer">More info
								<i class="fas fa-arrow-circle-right"></i></a>
						</div>
					</div>
					<!-- ./col -->
					<div class="col-lg-3 col-4">
						<!-- small box -->
						<div class="small-box bg-danger">
							<div class="inner">
								<h3>#Penerimaan</h3>
								<div class="media-body">
									<h5>@<?php echo $tweet_penerimaan[0]->user->name; ?></h5>
									<p class="text-start"><?php echo $tweet_penerimaan[0]->full_text; ?></p>
								</div>
							</div>
							<div class="icon">
								<i class="ion ion-pie-graph"></i>
							</div>
							<a href="<?php echo base_url() . 'Dashboard/Penerimaan' ?>" class="small-box-footer">More
								info <i class="fas fa-arrow-circle-right"></i></a>
						</div>
					</div>
					<div class="col-lg-3 col-4">
						<!-- small box -->
						<div class="small-box bg-danger">
							<div class="inner">
								<h3>#Pelayanan</h3>
								<div class="media-body">
									<h5>@<?php echo $tweet_pelayanan[0]->user->name; ?></h5>
									<p class="text-start"><?php echo $tweet_pelayanan[0]->full_text; ?></p>
								</div>
							</div>
							<div class="icon">
								<i class="ion ion-pie-graph"></i>
							</div>
							<a href="<?php echo base_url() . 'Dashboard/Pelayanan' ?>" class="small-box-footer">More
								info <i class="fas fa-arrow-circle-right"></i></a>
						</div>
					</div>
				</div>
			</div><!-- /.container-fluid -->
		</section>
		<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->
	<footer class="main-footer">
		<strong>Copyright &copy; 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.</strong>
		All rights reserved.
		<div class="float-right d-none d-sm-inline-block">
			<b>Version</b> 3.1.0
		</div>
	</footer>

	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
		<!-- Control sidebar content goes here -->
	</aside>
	<!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="<?= base_url('assets/'); ?>plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="<?= base_url('assets/'); ?>plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
	$.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="<?= base_url('assets/'); ?>plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="<?= base_url('assets/'); ?>plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- overlayScrollbars -->
<script src="<?= base_url('assets/'); ?>plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="<?= base_url('assets/'); ?>dist/js/adminlte.js"></script>
</body>
</html>
