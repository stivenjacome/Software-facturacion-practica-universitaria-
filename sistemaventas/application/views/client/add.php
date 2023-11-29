<!-- Header -->
<div class="header bg-primary pb-6">
    <div class="container-fluid">
    <div class="header-body">
        <div class="row align-items-center py-4">
        <div class="col-lg-6 col-7">
            <h6 class="h2 text-white d-inline-block mb-0">Nuevo</h6>
            <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
                <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
                    <li class="breadcrumb-item"><a href="<?php echo base_url(); ?>"><i class="fas fa-home"></i></a></li>
                    <li class="breadcrumb-item"><a href="<?php echo base_url(); ?>clientes">Clientes</a></li>
                    <li class="breadcrumb-item active">Nuevo</li>
                </ol>
            </nav>
        </div>
        <div class="col-lg-6 col-5 text-right">
            <a href="<?php echo base_url(); ?>productos" class="btn btn-secondary">Volver</a>
        </div>
        </div>
    </div>
    </div>
</div>

<!-- Page content -->
<div class="container-fluid mt--6">
    <div class="row">
        <div class="col-xl-12 order-xl-1">
            <div class="card">
                <div class="card-header">
                    <div class="row align-items-center">
                        <div class="col-8">
                            <h3 class="mb-0">Ingrese datos </h3>
                        </div>
                    </div>
                </div>

                <div class="card-body">
                    <form action="<?php echo base_url();?>nuevo-cliente/save" method="POST">
                        <div class="row">
                        
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label">Nombre</label>
                                    <input type="text" name="name" class="form-control <?php echo form_error('name') ? 'is-invalid':''?>" placeholder="Nombre del cliente"  value="<?php echo set_value('name'); ?>">
                                    <div class="invalid-feedback"><?php echo form_error('name'); ?></div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-8">
                                        <div class="form-group">
                                            <label class="form-control-label">Tipo de cliente</label>
                                            <select id="clients" name="typeClient" class="form-control">
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-lg-4">
                                        <div class="form-group">
                                            <label class="form-control-label">Tipo de documento</label>
                                            <select id="documents" name="typeDocument" class="form-control">
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="form-control-label">Dirección</label>
                                    <input type="text" name="address" class="form-control <?php echo form_error('address') ? 'is-invalid':''?>" placeholder="Dirección del cliente"  value="<?php echo set_value('address'); ?>">
                                    <div class="invalid-feedback"><?php echo form_error('address'); ?></div>
                                </div>
                            </div>

                            <div class="col-lg-6">

                                <div class="form-group">
                                    <label class="form-control-label">Número de documento</label>
                                    <input type="text" name="numDocument" class="form-control <?php echo form_error('numDocument') ? 'is-invalid':''?>" placeholder="Número de documento del cliente"  value="<?php echo set_value('numDocument'); ?>">
                                    <div class="invalid-feedback"><?php echo form_error('numDocument'); ?></div>
                                </div>

                                <div class="form-group">
                                    <label class="form-control-label">Número de teléfono/celular</label>
                                    <input type="text" name="phoneNumber" class="form-control <?php echo form_error('phoneNumber') ? 'is-invalid':''?>" placeholder="Número de teléfono/celular del cliente"  value="<?php echo set_value('phoneNumber'); ?>">
                                    <div class="invalid-feedback"><?php echo form_error('phoneNumber'); ?></div>
                                </div>

                                <div class="form-group">
                                    <label class="form-control-label">Email</label>
                                    <input type="text" name="email" class="form-control <?php echo form_error('email') ? 'is-invalid':''?>" placeholder="Email del cliente"  value="<?php echo set_value('email'); ?>">
                                    <div class="invalid-feedback"><?php echo form_error('email'); ?></div>
                                </div>

                                <div class="form-group text-right">
                                    <button type="submit" class="btn btn-success mt-4">Guardar</button>
                                </div>
                            </div>

                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>