<?php $this->load->view('header') ?>
<div class="container mt-5"><br>
    <div class="row mt-5 mb-5">
        <div class="col-12 mt-5">
            <h1 class="mb-4" style="color: #39ff14;">Books List</h1>
            <?php if (!empty($books)) : ?>
                <?php foreach ($books as $book) : ?>
                    <div class="card">
                        <div class="row no-gutters">
                            <div class="col-md-6">
                                <div id="carouselExampleControlsNoTouching<?= $book->id ?>" class="carousel slide" data-bs-touch="false">
                                     <div class="carousel-inner">
                                        <div class="carousel-item active">
                                            <img src="<?= base_url('uploads/' . $book->book_image_1) ?>" class="d-block w-100" style="height: 90vh;" alt="Book Image 1">
                                        </div>
                                        <div class="carousel-item">
                                            <img src="<?= base_url('uploads/' . $book->book_image_2) ?>" class="d-block w-100 " style="height: 90vh;" alt="Book Image 2">
                                        </div>
                                        <div class="carousel-item">
                                            <img src="<?= base_url('uploads/' . $book->book_image_3) ?>" class="d-block w-100" style="height: 90vh;" alt="Book Image 3">
                                        </div>
                                    </div>
                                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControlsNoTouching<?= $book->id ?>" data-bs-slide="prev">
                                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                        <span class="visually-hidden">Previous</span>
                                    </button>
                                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControlsNoTouching<?= $book->id ?>" data-bs-slide="next">
                                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                        <span class="visually-hidden">Next</span>
                                    </button>
                                </div>
                            </div>
                            <div class="col-md-6">
                                 <div class="card-body">
                                    <h5 class="card-title"><?= $book->book_heading ?></h5>
                                    <p class="card-text"><strong>Book Name:</strong> <?= $book->book_name ?></p>
                                    <p class="card-text"><strong>About Book:</strong> <?= $book->about_books ?></p>
                                    <p class="card-text"><strong>Price:</strong> RS.- <?= $book->book_cost ?>.00</p>
                                    <h5 class="card-text"><strong>Key Highlights of the Book:</strong></h5>
                                    <p class="card-text" style="text-align:justify;"><?= nl2br($book->heading_content) ?></p>
                                    <a href="<?= base_url('web/buy/' . $book->id) ?>" style="width:100%;" class="btn btn-primary">Buy now</a>
                                </div>
                            </div>
                        </div>
                    </div><br><br>
                <?php endforeach; ?>
            <?php else : ?>
                <p>No books found.</p>
            <?php endif; ?>
        </div>
    </div>
</div>
<?php $this->load->view('footer') ?>
