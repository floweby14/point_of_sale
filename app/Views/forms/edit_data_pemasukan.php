<section class="content">

<div class="body_scroll">

    <div class="block-header">

        <div class="row">

            <div class="col-lg-7 col-md-6 col-sm-12">

                <h2>Edit Data Pemasukan</h2>

            </div>

            <div class="col-lg-5 col-md-6 col-sm-12">

                <a href="/home/data_pemasukan">
                    
                    <button class="btn btn-secondary btn-icon float-right" type="buttin"><i class="zmdi zmdi-chevron-left"></i></button>

                </a>

            </div>

        </div>

    </div>

    <div class="container-fluid">

        <div class="row clearfix">

            <div class="col-lg-12 col-md-12 col-sm-12">

                <div class="card">

                    <div class="body">

                        <form class="form-horizontal" action="<?= base_url('/home/aksi_edit_data_pemasukan')?>" method="POST">

                            <input type="hidden" name="id_pemasukan" value="<?php echo $pemasukanData -> id_pemasukan ?>">

                            <div class="row clearfix">

                                <div class="col-lg-2 col-md-2 col-sm-4 form-control-label">

                                    <label for="nama">Tanggal <span style="color: #ff0000;">*</span></label>

                                </div>

                                <div class="col-lg-10 col-md-10 col-sm-8">

                                    <div class="form-group">

                                        <input type="date" value="<?php echo $pemasukanData -> tanggal ?>" name="tanggal" id="tanggal" placeholder="Tanggal" class="form-control" required>

                                    </div>

                                </div>
                                
                            </div>


                            <div class="row clearfix">

                                <div class="col-lg-2 col-md-2 col-sm-4 form-control-label">

                                    <label for="nama">Nama <span style="color: #ff0000;">*</span></label>

                                </div>

                                <div class="col-lg-10 col-md-10 col-sm-8">

                                    <div class="form-group">

                                        <input type="text" value="<?php echo $pemasukanData -> nama_transaksi ?>" name="nama_transaksi" id="nama_transaksi" placeholder="Nama Transaksi" class="form-control" required>

                                    </div>

                                </div>
                                
                            </div>

                            <div class="row clearfix">

                                <div class="col-lg-2 col-md-2 col-sm-4 form-control-label">

                                    <label for="total">Total<span style="color: #ff0000;">*</span></label>

                                </div>

                                <div class="col-lg-10 col-md-10 col-sm-8">

                                    <div class="form-group">

                                        <input type="text" value="<?php echo $pemasukanData -> total ?>" name="total" id="total" placeholder="Total" class="form-control" required>

                                    </div>

                                </div>
                                
                            </div>

                            <div class="row clearfix d-flex justify-content-center">

                                <button type="submit" class="btn btn-md btn-round btn-success">Submit</button>
                                
                            </div>

                        </form>

                    </div>

                </div>
                
            </div>

        </div>

    </div>

</div>