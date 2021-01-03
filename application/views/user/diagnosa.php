<section id="kontak" class="call-to-action-area section-gap " style="background-image: -webkit-linear-gradient(0deg, #ffffff 0%, #ffffff 100%) !important;" >
	<div class="container">
	<section class="hero-section">
        <carousel class="hero-items" :items="1" :nav="false" :autoplay="true">

		<div class="diagnosa" style="background-color: #41C1FF"> </div>
                <div class="container">
                    <div class="row">
                        <div class="row d-flex justify-content-center">
                            <h2>Selamat Datang di Sistem Diagnosa Penyakit Asma</h2>
                        </div>
                    </div>
                </div>
            
    <!-- Hero Section End -->
	<?php echo form_open()?>
		<div class="row d-flex justify-content-left">
			<div class="menu-content pb-60 col-lg-6">
				<div class="title text-left"> 
					 <h3>Silahkan Masukkan Keluhan Anda !</h3>
				</div>
			</div>
		</div>
		<div class="row d-flex justify-content-center">
			<div class="col-md-12 col-md-offset-2" >
				<?php foreach($listKelompok->result() as $value){?>
				<h4 style="background-color: #00000;" ><?php echo $value->nama?></h4>
					<?php
                    $this->load->model(array('Gejala_model'));
                    $listGejala = $this->Gejala_model->get_by_kelompok($value->id);
                    foreach($listGejala->result() as $value2){?>
					<p></p>
					<input type="checkbox" style="background-color: #00000" name="gejala[]" value="<?php echo $value2->id?>" > <?php echo $value2->kode." - ".$value2->nama_gejala?> <br>
				
				<?php }?>
			<?php } ?>
			</div>
		</div>
		<br>
		<div class="row d-flex justify-content-center">
			<div class="col-md-12" style="float: left; padding: 0;">
				<button type="submit" name="submit" class="btn main-btn" style="background-color: #41C1FF;  border-radius: 0px;">Proses</button>
			</div>
		</div>
	</div>
	<?php echo form_close()?>
</section>

