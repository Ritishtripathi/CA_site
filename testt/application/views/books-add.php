<?php $this->load->view('header') ?>
<div class="counter mt-5">
    <div class="container mt-5">
        <div class="row">
            <div class="col-lg-12 col-xl-12">
                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                    add-books
                </button>

                <!-- Modal -->
                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="exampleModalLabel">Add Your Books</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <form method="post" action="<?= site_url('web/saveBook') ?>" enctype="multipart/form-data">
                                    <div class="mb-3">
                                        <label for="book_name" class="form-label">Books name</label>
                                        <input type="text" class="form-control" id="book_name" name="book_name" placeholder="Book name">
                                    </div>
                                    <div class="mb-3">
                                        <label for="about_books" class="form-label">About books</label>
                                        <input type="text" class="form-control" id="about_books" name="about_books" placeholder="About books">
                                    </div>
                                    <div class="mb-3">
                                        <label for="book_cost" class="form-label">Book cost</label>
                                        <input type="number" class="form-control" id="book_cost" name="book_cost" placeholder="Book heading">
                                    </div>
                                    <div class="mb-3">
                                        <label for="book_heading" class="form-label">Book heading</label>
                                        <input type="text" class="form-control" id="book_heading" name="book_heading" placeholder="Book heading">
                                    </div>
                                    <div class="mb-3">
                                        <label for="heading_content" class="form-label">Heading content</label>
                                        <input type="text" class="form-control" id="heading_content" name="heading_content" placeholder="Heading content">
                                    </div>
                                    <div class="mb-3">
                                        <label for="book_image_1" class="form-label">Books Image 1</label>
                                        <input type="file" class="form-control" id="book_image_1" name="book_image_1">
                                    </div>
                                    <div class="mb-3">
                                        <label for="book_image_2" class="form-label">Books Image 2</label>
                                        <input type="file" class="form-control" id="book_image_2" name="book_image_2">
                                    </div>
                                    <div class="mb-3">
                                        <label for="book_image_3" class="form-label">Books Image 3</label>
                                        <input type="file" class="form-control" id="book_image_3" name="book_image_3">
                                    </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-primary">Save</button>
                            </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div> <!-- end of col -->
        </div> <!-- end of row -->
    </div> <!-- end of container -->
</div> <!-- end of counter -->
<?php $this->load->view('footer') ?>
