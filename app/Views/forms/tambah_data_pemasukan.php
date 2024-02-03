<section class="content">

<div class="body_scroll">

    <div class="block-header">

        <div class="row">

            <div class="col-lg-7 col-md-6 col-sm-12">

                <h2>Tambah Data</h2>

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

                        <form class="form-horizontal" action="<?= base_url('/home/aksi_tambah_data_pemasukan')?>" method="POST" enctype="multipart/form-data">

                            <div class="row clearfix">

                                <div class="col-lg-2 col-md-2 col-sm-4 form-control-label">

                                    <label for="tanggal">Tanggal</label>

                                </div>

                                <div class="col-lg-10 col-md-10 col-sm-8">

                                    <div class="form-group">

                                        <input type="date" name="tanggal" id="tanggal" placeholder="Tanggal" class="form-control">
                                        
                                    </div>

                                </div>
                                
                            </div>

                            <div class="row clearfix">

                                <div class="col-lg-2 col-md-2 col-sm-4 form-control-label">

                                    <label for="nama_transaksi">Nama</label>

                                </div>

                                <div class="col-lg-10 col-md-10 col-sm-8">

                                    <div class="form-group">

                                        <input type="text" name="nama_transaksi" id="nama_transksi" placeholder="Nama Transaksi" class="form-control">
                                        
                                    </div>

                                </div>
                                
                            </div>

                            <div class="row clearfix">

                                <div class="col-lg-2 col-md-2 col-sm-4 form-control-label">

                                    <label for="created_by">Total Barang</label>

                                </div>

                                <div class="col-lg-10 col-md-10 col-sm-8">

                                    <div class="form-group">

                                    <input type="text" name="created_by" id="total" placeholder="Total Barang" class="form-control">
                                        
                                    </div>

                                </div>
                                
                            </div>


                            <div class="row clearfix">

                                <div class="col-lg-2 col-md-2 col-sm-4 form-control-label">

                                    <label for="total">Total Harga</label>

                                </div>

                                <div class="col-lg-10 col-md-10 col-sm-8">

                                    <div class="form-group">

                                    <input type="text" name="total" id="total" placeholder="Total Harga" class="form-control">
                                        
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

</section>