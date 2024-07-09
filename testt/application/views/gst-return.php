<?php $this->load->view('header') ?>
<div class="counter mt-5">
    <div class="container mt-5">
        <div class="row">
            <div class="col-lg-5 col-xl-6">
                <div class="image-container">
                    <a href="https://youtu.be/1fV2iGQ9pBI" data-vbtype="video" data-autoplay="true">
                        <img class="img-fluid" src="<?= base_url() ?>assets/img/gst-returns.jpg" alt="alternative">
                    </a>
                </div>

                <!-- end of image-container -->
            </div> <!-- end of col -->
            <div class="col-lg-7 col-xl-6">
                <div class="text-container">
                    <div class="section-title">GST Returns</div>
                    <p class="about-text">A GST return is a document containing details of all income/sales and/or expenses/purchases that a GST-registered taxpayer (every GSTIN) is required to file with the tax administrative authorities. This is used by tax authorities to calculate net tax liability.
                     <br>Under GST, a registered dealer has to file GST returns that broadly include:</p>
                
               <ul class="list-unstyled li-space-lg ml-5">
                       <li class="media">
                            <i class="fas fa-square"></i>
                            <div class="media-body about-text">Inwards supplies</div>
                        </li>
                        <li class="media">
                            <i class="fas fa-square"></i>
                            <div class="media-body about-text">Outwards supplies</div>
                        </li>
                        <li class="media">
                            <i class="fas fa-square"></i>
                            <div class="media-body about-text">Output GST (on outward supplies)</div>
                        </li>
                        <li class="media">
                            <i class="fas fa-square"></i>
                            <div class="media-body about-text">Input tax credit (GST paid on inwards supplies)</div>
                        </li>
               </ul>
               </div>
            </div>
            <div class="col-lg-12 col-xl-12 mt-5">
                <div class="container">
                    <ul class="list-unstyled li-space-lg">
                        <div class="section-title">Who should file GST Returns?</div>
                        <li class="media">
                            <i class="fas fa-square"></i>
                            <div class="media-body about-text">Under the GST regime, regular businesses having more than Rs.5 crore as annual aggregate turnover (and taxpayers who have not opted for the QRMP scheme) have to file two monthly returns and one annual return. This amounts to 25 returns each year.</div>
                        </li>
                        <li class="media">
                            <i class="fas fa-square"></i>
                            <div class="media-body about-text">Taxpayers with a turnover of up to Rs.5 crore have the option to file returns under the QRMP scheme. The number of GSTR filings for QRMP filers is 9 each year, which include 4 GSTR-1 and GSTR-3B returns each and an annual return. Note that QRMP filers have to pay tax on a monthly basis even though they are filing returns quarterly.</div>
                        </li>
                        <li class="media">
                            <i class="fas fa-square"></i>
                            <div class="media-body about-text">There are also separate statements/returns required to be filed in special cases such as composition dealers where the number of GSTR filings is 5 each year (4 statement-cum-challans in CMP-08 and 1 annual return GSTR-4).</div>
                        </li>
                    </ul>
                </div> <!-- end of text-container -->
            </div> <!-- end of col -->
        </div> <!-- end of row -->
    </div> <!-- end of container -->
</div> <!-- end of counter -->
<?php $this->load->view('footer') ?>