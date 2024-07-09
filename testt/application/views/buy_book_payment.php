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

                    <form id="paymentForm" action="<?= base_url('web/payment_success') ?>" method="post">
                        <input type="hidden" name="razorpay_payment_id" id="razorpay_payment_id">
                        <input type="hidden" name="razorpay_signature" id="razorpay_signature">
                        <input type="hidden" name="razorpay_order_id" id="razorpay_order_id">
                        <input type="hidden" name="amount" value="<?= $amount ?>">
                        <input type="hidden" name="name" value="<?= $name ?>">
                        <input type="hidden" name="email" value="<?= $email ?>">
                        <input type="hidden" name="contact" value="<?= $contact ?>">
                        <input type="hidden" name="address" value="<?= $address ?>">
                        <input type="hidden" name="book_id" value="<?= $book->id ?>">
                        <input type="hidden" name="book_name" value="<?= $book->book_name ?>">
                        <button type="button" class="btn btn-primary" id="payButton">Proceed to Pay</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Razorpay Script -->
<script src="https://checkout.razorpay.com/v1/checkout.js"></script>
<script>
    document.getElementById('payButton').onclick = function(e) {
        var options = {
            "key": "<?= $api_key ?>", // Enter the Key ID generated from the Dashboard
            "amount": "<?= $amount ?>", // Amount is in currency subunits. Default currency is INR. Hence, 1000 is 1000 paise or ₹10.
            "currency": "INR",
            "name": "<?= $book->book_name ?>",
            "description": "Purchase of <?= $book->book_name ?>",
            "order_id": "<?= $order_id ?>", //This is a sample Order ID. Pass the `id` obtained in the response of Step 1
            "handler": function (response){
                
                document.getElementById('razorpay_payment_id').value = response.razorpay_payment_id;
                document.getElementById('razorpay_signature').value = response.razorpay_signature;
                document.getElementById('razorpay_order_id').value = response.razorpay_order_id;
                document.getElementById('paymentForm').submit();
            },
            "prefill": {
                "name": "<?= $name ?>",
                "email": "<?= $email ?>",
                "contact": "<?= $contact ?>"
            },
            "theme": {
                "color": "#3399cc"
            }
        };
        
        var rzp1 = new Razorpay(options);
        rzp1.open();
        e.preventDefault();
    }
</script>
<?php $this->load->view('footer') ?>
