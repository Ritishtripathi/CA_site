<?php $this->load->view('header') ?>
<div class="counter mt-5">
    <div class="container mt-5">
        <div class="row">
        </div> <!-- end of col -->
        <div class="col-lg-12 col-xl-12">
            <div class="text-container">
                <div class="section-title mb-4">Professional Flyers :</div>
                <p class="about-text">Tax Gupshup is Tax Professional Branding Platform helping Chartered Accountants, Company Secretaries, Cost & Management Accountants, Advocates, Tax Professionals, Accountants, Tax Advisor & Tax Consultants to build and promote their businesses.</p>
                <p class="about-text">Don’t wait for reference business, show your presence on social media. Share festival greetings to your clients, prospective clients, friends & others with your business name, contact details, photos & business logo.</p>
                <ul class="list-unstyled li-space-lg">
                    <h6>Contents covered</h6>
                    <li class="media">
                        <i class="fas fa-square"></i>
                        <div class="media-body about-text">Due Date Reminders of Income Tax, GST, ROC, PF, ESIC</div>
                    </li>
                    <li class="media">
                        <i class="fas fa-square"></i>
                        <div class="media-body about-text">Change in Due Dates</div>
                    </li>
                    <li class="media">
                        <i class="fas fa-square"></i>
                        <div class="media-body about-text">Festival greetings</div>
                    </li>
                    <li class="media">
                        <i class="fas fa-square"></i>
                        <div class="media-body about-text">Tax notifications and circulars (with key highlights)</div>
                    </li>
                    <li class="media">
                        <i class="fas fa-square"></i>
                        <div class="media-body about-text">Subsidies and other Government supports</div>
                    </li>
                    <li class="media">
                        <i class="fas fa-square"></i>
                        <div class="media-body about-text">Start up's</div>
                    </li>
                    <li class="media">
                        <i class="fas fa-square"></i>
                        <div class="media-body about-text">MSME</div>
                    </li>
                </ul>

                <p class="about-text">All designs are suitable for WhatsApp, Facebook, Twitter, Instagram, LinkedIn and other social platforms.
                    Subscribed by 500+ CAs, CS, and Advocates etc. Valid under Code of Ethics</p>
                <p class="about-text"><b>Subscription plans</b><br>
                    One Month plan - Rs 300/-<br>
                    Annual Subscription - Rs 3,000/- </p>
                <p class="about-text"><b>For Sample and more details just reply with SAMPLES</b><br />For more such details</p>

            </div>
        </div>
       
   <!-- Projects -->
   <div id="projects" class="filter">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title">Professional Flyer's</div>
                <center>Subscribe our Flyer's services and timely update your clients.</center>
            </div> <!-- end of col -->
        </div> <!-- end of row -->
        <div class="row">
            <div class="col-lg-1"></div>
            <div class="col-lg-10">
                <div class="grid">
                    <?php for ($i = 1; $i <= 27; $i++): ?>
                        <div class="element-item development">
                            <a class="popup-with-move-anim" href="#project<?= $i ?>">
                                <div class="element-item-overlay"><span>Professional Flyer's</span></div>
                                <img src="<?= base_url() ?>assets/img/flayers/<?= $i ?>.png" class="card-img" alt="Book Image <?= $i ?>">
                            </a>
                        </div>
                    <?php endfor; ?>
                </div> <!-- end of grid -->
                <!-- end of filter -->
            </div> <!-- end of col -->
        </div> <!-- end of row -->
    </div> <!-- end of container -->
</div> <!-- end of filter -->
<!-- end of projects -->

<!-- Project Lightboxes -->
<?php for ($i = 1; $i <= 27; $i++): ?>
    <div id="project<?= $i ?>" class="lightbox-basic zoom-anim-dialog mfp-hide">
        <div class="row">
            <button title="Close (Esc)" type="button" class="mfp-close x-button">×</button>
            <div class="col-lg-12">
                <img src="<?= base_url() ?>assets/img/flayers/<?= $i ?>.png" class="card-img lightbox-img" alt="Book Image <?= $i ?>">
            </div> <!-- end of col -->
        </div> <!-- end of row -->
    </div> <!-- end of lightbox-basic -->
<?php endfor; ?>
<!-- end of lightbox -->

    </div> <!-- end of row -->
</div> <!-- end of container -->
</div> <!-- end of counter -->
<?php $this->load->view('footer') ?>