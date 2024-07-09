<?php $this->load->view('header') ?>
<div class="container mt-5"><br>
    <div class="row mt-5 mb-5">
        <div class="col-12 mt-5">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title"><?= $book->book_heading ?></h5>
                    <p class="card-text"><strong>Book Name:</strong> <?= $book->book_name ?></p>
                    <p class="card-text"><strong>About Book:</strong> <?= $book->about_books ?></p>
                    <p class="card-text"><strong>Price:</strong> RS.- <?= $book->book_cost ?>.00</p>
                    <h5 class="card-text"><strong>Key Highlights of the Book:</strong></h5>
                    <p class="card-text"><?= nl2br($book->heading_content) ?></p>

                    <form action="<?= base_url('web/process_order') ?>" method="POST">
                        <input type="hidden" name="book_id" value="<?= $book->id ?>">
                        <input type="hidden" name="book_name" value="<?= $book->book_name ?>">
                        <div class="form-group">
                            <label for="name">Name</label>
                            <input type="text" class="form-control" name="name" required>
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" class="form-control" name="email" required>
                        </div>
                        <div class="form-group">
                            <label for="contact">Contact</label>
                            <input type="text" class="form-control" name="contact" required>
                        </div>
                        <div class="form-group">
                            <label for="address">Address</label>
                            <textarea class="form-control" name="address" required></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Proceed to Pay</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<?php $this->load->view('footer') ?>
