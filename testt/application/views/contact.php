<?php $this->load->view('header')?>
<div id="contact" class="form-2 mt-5">
    <div class="container mt-5">
        <div class="row">
            <div class="col-lg-6">
                <div class="text-container">
                    <div class="section-title">CONTACT</div>
                    <h2>Get In Touch Using The Form</h2>
                    <p>You can visit by our office and just use the contact form below for any questions and inquiries</p>
                    <ul class="list-unstyled li-space-lg">
                        <li class="address"><i class="fas fa-map-marker-alt"></i>6/5/1, Kirti Nagar Industrial Area, New Delhi - 110015 India</li>
                        <li><i class="fas fa-phone"></i><a href="tel:+919582415400">+91 9582415400</a></li>
                        <li><i class="fas fa-phone"></i><a href="tel:+918527282779">+91 85272-82779 </a></li>
                        <li><i class="fas fa-envelope"></i><a href="mailto:queries@taxgupshup.in">queries@taxgupshup.in</a>
                        <i class="fas fa-envelope"></i><a href="mailto:contactus@taxgupshup.in">contactus@taxgupshup.in</a></li>
                    </ul>
                    <h3>Follow On Social Media</h3>
                    <span class="fa-stack">
                        <a href="https://t.me/joinchat/AAAAAEbVBmlkKWjuRkG_Jg">
                            <span class="hexagon"></span>
                            <i class="fab fa-telegram fa-stack-1x"></i>
                        </a>
                    </span>
                    <span class="fa-stack">
                        <a href="https://x.com/TaxGupshup">
                            <span class="hexagon"></span>
                            <i class="fab fa-twitter fa-stack-1x"></i>
                        </a>
                    </span>
                    <span class="fa-stack">
                        <a href="https://www.instagram.com/taxgupshup/?hl=en">
                            <span class="hexagon"></span>
                            <i class="fab fa-instagram fa-stack-1x"></i>
                        </a>
                    </span>
                    <span class="fa-stack">
                        <a href="https://www.youtube.com/channel/UCfRHGkh3ghJFF9Osf9W1Wtw">
                            <span class="hexagon"></span>
                            <i class="fab fa-youtube fa-stack-1x"></i>
                        </a>
                    </span>
                </div> 
                <!-- end of text-container -->
            </div> <!-- end of col -->
            <div class="col-lg-6">
                <!-- Contact Form -->
                <form id="contactForm" method="post" action="<?= site_url('contact/submit') ?>" data-toggle="validator" data-focus="false">
                    <div class="form-group">
                        <input type="text" class="form-control-input" id="cname" name="name" required>
                        <label class="label-control" for="cname">Name</label>
                        <div class="help-block with-errors"></div>
                    </div>
                    <div class="form-group">
                        <input type="email" class="form-control-input" id="cemail" name="email" required>
                        <label class="label-control" for="cemail">Email</label>
                        <div class="help-block with-errors"></div>
                    </div>
                    <div class="form-group">
                        <textarea class="form-control-textarea" id="cmessage" name="message" required></textarea>
                        <label class="label-control" for="cmessage">Your message</label>
                        <div class="help-block with-errors"></div>
                    </div>
                    <div class="form-group checkbox">
                        <input type="checkbox" id="cterms" value="Agreed-to-Terms" required>I agree with Aria's stated <a href="privacy-policy.html">Privacy Policy</a> and <a href="terms-conditions.html">Terms Conditions</a> 
                        <div class="help-block with-errors"></div>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="form-control-submit-button">SUBMIT</button>
                    </div>
                    <div class="form-message">
                        <div id="cmsgSubmit" class="h3 text-center hidden"></div>
                    </div>
                </form>
                <!-- end of contact form -->
            </div> <!-- end of col -->
        </div> <!-- end of row -->
    </div> <!-- end of container -->
</div> <!-- end of form-2 -->
<?php $this->load->view('footer')?>
