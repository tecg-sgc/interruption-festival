<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <meta name="description" content="">
        <meta name="author" content="">

        <title>Festava Live - Bootstrap 5 CSS Template</title>

        <!-- CSS FILES -->        
        <link rel="preconnect" href="https://fonts.googleapis.com">
        
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        
        <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@100;200;400;700&display=swap" rel="stylesheet">
                
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <link href="css/bootstrap-icons.css" rel="stylesheet">

        <link href="css/templatemo-festava-live.css" rel="stylesheet">
        
<!--

TemplateMo 583 Festava Live

https://templatemo.com/tm-583-festava-live

-->
    </head>
    
    <body>

        <main>

            <header class="site-header">
                <div class="container">
                    <div class="row">
                        
                        <div class="col-lg-12 col-12 d-flex flex-wrap">
                            <p class="d-flex me-4 mb-0">
                                <i class="bi-person custom-icon me-2"></i>
                                <strong class="text-dark">Welcome to Music Festival 2023</strong>
                            </p>
                        </div>

                    </div>
                </div>
            </header>


            <nav class="navbar navbar-expand-lg">
                <div class="container">
                    <a class="navbar-brand" href="index.html">
                        Festava Live
                    </a>

                    <a href="ticket.html" class="btn custom-btn d-lg-none ms-auto me-4">Buy Ticket</a>
    
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
    
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav align-items-lg-center ms-auto me-lg-5">
                            <li class="nav-item">
                                <a class="nav-link click-scroll" href="#section_1">Home</a>
                            </li>
    
                            <li class="nav-item">
                                <a class="nav-link click-scroll" href="#section_2">About</a>
                            </li>
    
                            <li class="nav-item">
                                <a class="nav-link click-scroll" href="#section_3">Artists</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link click-scroll" href="#section_4">Schedule</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link click-scroll" href="#section_5">Pricing</a>
                            </li>
    
                            <li class="nav-item">
                                <a class="nav-link click-scroll" href="#section_6">Contact</a>
                            </li>
                        </ul>

                        <a href="ticket.html" class="btn custom-btn d-lg-block d-none">Buy Ticket</a>
                    </div>
                </div>
            </nav>
            

            <section class="hero-section" id="section_1">
                <div class="section-overlay"></div>

                <div class="container d-flex justify-content-center align-items-center">
                    <div class="row">

                        <div class="col-12 mt-auto mb-5 text-center">
                            <small>Festava Live Presents</small>

                            <h1 class="text-white mb-5">
                                <?= $title ?>
                            </h1>

                            <a class="btn custom-btn smoothscroll" href="#section_2">Let's begin</a>
                        </div>

                        <div class="col-lg-12 col-12 mt-auto d-flex flex-column flex-lg-row text-center">
                            <div class="date-wrap">
                                <h5 class="text-white">
                                    <i class="custom-icon bi-clock me-2"></i>
                                    10 - 12<sup>th</sup>, Dec 2023
                                </h5>
                            </div>

                            <div class="location-wrap mx-auto py-3 py-lg-0">
                                <h5 class="text-white">
                                    <i class="custom-icon bi-geo-alt me-2"></i>
                                    National Center, United States
                                </h5>
                            </div>

                            <div class="social-share">
                                <ul class="social-icon d-flex align-items-center justify-content-center">
                                    <span class="text-white me-3">Share:</span>

                                    <li class="social-icon-item">
                                        <a href="#" class="social-icon-link">
                                            <span class="bi-facebook"></span>
                                        </a>
                                    </li>

                                    <li class="social-icon-item">
                                        <a href="#" class="social-icon-link">
                                            <span class="bi-twitter"></span>
                                        </a>
                                    </li>

                                    <li class="social-icon-item">
                                        <a href="#" class="social-icon-link">
                                            <span class="bi-instagram"></span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="video-wrap">
                    <video autoplay="" loop="" muted="" class="custom-video" poster="">
                        <source src="video/pexels-2022395.mp4" type="video/mp4">

                        Your browser does not support the video tag.
                    </video>
                </div>
            </section>


            <section class="about-section section-padding" id="section_2">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-6 col-12 mb-4 mb-lg-0 d-flex align-items-center">
                            <div class="services-info">
                                <h2 class="text-white mb-4">About Festava 2022</h2>

                                <p class="text-white">Festava Live is free CSS template provided by TemplateMo website. This layout is built on Bootstrap v5.2.2 CSS library. You are free to use this template for your commercial website.</p>

                                <h6 class="text-white mt-4">Once in Lifetime Experience</h6>

                                <p class="text-white">You are not allowed to redistribute the template ZIP file on any other website without a permission.</p>

                                <h6 class="text-white mt-4">Whole Night Party</h6>

                                <p class="text-white">Please tell your friends about our website. Thank you.</p>
                            </div>
                        </div>

                        <div class="col-lg-6 col-12">
                            <div class="about-text-wrap">
                                <img src="images/pexels-alexander-suhorucov-6457579.jpg" class="about-image img-fluid">

                                <div class="about-text-info d-flex">
                                    <div class="d-flex">
                                        <i class="about-text-icon bi-person"></i>
                                    </div>


                                    <div class="ms-4">
                                        <h3>a happy moment</h3>

                                        <p class="mb-0">your amazing festival experience with us</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </section>


            <section class="artists-section section-padding" id="section_3">
                <div class="container">
                    <div class="row justify-content-center">

                        <div class="col-12 text-center">
                            <h2 class="mb-4">Meet Artists</h1>
                        </div>

                        <?php $firstArtist = array_shift($artists); ?>

                        <div class="col-lg-5 col-12">
                            <div class="artists-thumb">
                                <div class="artists-image-wrap">
                                    <img src="images/artists/<?= $firstArtist->thumb ?>" class="artists-image img-fluid">
                                </div>

                                <div class="artists-hover">
                                    <p>
                                        <strong>Name:</strong>
                                        <?= $firstArtist->name ?>
                                    </p>

                                    <p>
                                        <strong>Birthdate:</strong>
                                        <?= date('j F Y', strtotime($firstArtist->birthday)) ?>
                                    </p>

                                    <p>
                                        <strong>Music:</strong>
                                        <?= $firstArtist->genre ?>
                                    </p>

                                    <hr>

                                    <p class="mb-0">
                                        <strong>Youtube Channel:</strong>
                                        <a href="<?= $firstArtist->youtube ?>"><?= $firstArtist->name ?> Official</a>
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-5 col-12">
                            <?php foreach($artists as $index => $artist): ?>
                            
                            <div class="artists-thumb">
                                <div class="artists-image-wrap">
                                    <img src="images/artists/<?= $artist->thumb ?>" class="artists-image img-fluid">
                                </div>

                                <div class="artists-hover">
                                    <p>
                                        <strong>Name:</strong>
                                        <?= $artist->name ?>
                                    </p>

                                    <p>
                                        <strong>Birthdate:</strong>
                                        <?= date('j F Y', strtotime($firstArtist->birthday)) ?>
                                    </p>

                                    <p>
                                        <strong>Music:</strong>
                                        <?= $artist->genre ?>
                                    </p>

                                    <hr>

                                    <p class="mb-0">
                                        <strong>Youtube Channel:</strong>
                                        <a href="<?= $artist->youtube ?>"><?= $artist->name ?> Official</a>
                                    </p>
                                </div>
                            </div>

                            <?php endforeach; ?>
                        </div>

                    </div>
                </div>
            </section>


            <section class="schedule-section section-padding" id="section_4">
                <div class="container">
                    <div class="row">

                        <div class="col-12 text-center">
                            <h2 class="text-white mb-4">Event Schedule</h1>

                            <div class="table-responsive">
                                <table class="schedule-table table table-dark">
                                    <thead>
                                        <?php $headers = array_shift($schedules); ?>
                                        <tr>
                                            <?php foreach($headers as $day): ?>
                                            <th scope="col"><?= $day->name; ?></th>
                                            <?php endforeach; ?>
                                        </tr>
                                    </thead>

                                    <tbody>
                                        <?php foreach($schedules as $row): ?>
                                        <tr>
                                            <?php foreach($row as $schedule): ?>
                                                <?php if($schedule): ?>
                                            <td class="table-background-image-wrap" style="background-image: url(images/artists/<?= $schedule->thumb; ?>);">
                                                <h3><?= $schedule->artist; ?></h3>

                                                <p class="mb-2"><?= $schedule->started_at ?> - <?= $schedule->ended_at ?></p>

                                                <p><?= trim($schedule->genre . ', ' . $schedule->stage, ', ') ?></p>

                                                <div class="section-overlay"></div>
                                            </td>
                                                <?php else: ?>
                                            <td style="background-color: #F3DCD4"></td>
                                                <?php endif; ?>
                                            <?php endforeach; ?>
                                        </tr>
                                        <?php endforeach; ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </section>


            <section class="pricing-section section-padding section-bg" id="section_5">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-8 col-12 mx-auto">
                            <h2 class="text-center mb-4">Plans, you' love</h2>
                        </div>
                        
                        <?php foreach($tickets as $ticket): ?>
                        <div class="col-lg-6 col-12">
                            <div class="pricing-thumb">
                                <div class="d-flex">
                                    <div>
                                        <h3><small><?= $ticket->name ?></small> $<?= number_format(round($ticket->price * ((100 + $ticket->vat) / 100)) / 100, 2, ',', '&nbsp;') ?></h3>

                                        <?php if($ticket->date): ?>
                                            <p><time datetime="<?= date('c', strtotime($ticket->date)) ?>">Le <?= date('j F Y', strtotime($ticket->date)) ?></time></p>
                                        <?php endif; ?>

                                        <?php if($ticket->artists): ?>
                                        <p>Including good things:</p>
                                        <?php endif; ?>
                                    </div>

                                    <?php if($ticket->discount): ?>
                                    <p class="pricing-tag ms-auto">Save up to <span><?= $ticket->discount ?>%</span></p>
                                    <?php endif; ?>
                                </div>

                                <?php if($ticket->artists): ?>
                                <ul class="pricing-list mt-3">
                                    <?php foreach($ticket->artists as $artist): ?>
                                    <li class="pricing-list-item"><?= $artist->name ?></li>
                                    <?php endforeach; ?>
                                </ul>
                                <?php endif; ?>

                                <a class="link-fx-1 color-contrast-higher mt-4" href="ticket.html">
                                    <span>Buy Ticket</span>
                                    <svg class="icon" viewBox="0 0 32 32" aria-hidden="true"><g fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"><circle cx="16" cy="16" r="15.5"></circle><line x1="10" y1="18" x2="16" y2="12"></line><line x1="16" y1="12" x2="22" y2="18"></line></g></svg>
                                </a>
                            </div>
                        </div>
                        <?php endforeach; ?>

                    </div>
                </div>
            </section>


            <section class="contact-section section-padding" id="section_6">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-8 col-12 mx-auto">
                            <h2 class="text-center mb-4">Interested? Let's talk</h2>

                            <nav class="d-flex justify-content-center">
                                <div class="nav nav-tabs align-items-baseline justify-content-center" id="nav-tab" role="tablist">
                                    <button class="nav-link active" id="nav-ContactForm-tab" data-bs-toggle="tab" data-bs-target="#nav-ContactForm" type="button" role="tab" aria-controls="nav-ContactForm" aria-selected="false">
                                        <h5>Contact Form</h5>
                                    </button>

                                    <button class="nav-link" id="nav-ContactMap-tab" data-bs-toggle="tab" data-bs-target="#nav-ContactMap" type="button" role="tab" aria-controls="nav-ContactMap" aria-selected="false">
                                        <h5>Google Maps</h5>
                                    </button>
                                </div>
                            </nav>

                            <div class="tab-content shadow-lg mt-5" id="nav-tabContent">
                                <div class="tab-pane fade show active" id="nav-ContactForm" role="tabpanel" aria-labelledby="nav-ContactForm-tab">
                                    <form class="custom-form contact-form mb-5 mb-lg-0" action="/" method="post" role="form">
                                        <div class="contact-form-body">
                                            <div class="row">
                                                <div class="col-lg-6 col-md-6 col-12">
                                                    <input type="text" name="contact_name" id="contact_name" class="form-control" placeholder="Full name" required>
                                                </div>

                                                <div class="col-lg-6 col-md-6 col-12">
                                                    <input type="email" name="contact_email" id="contact_email" pattern="[^ @]*@[^ @]*" class="form-control" placeholder="Email address" required>
                                                </div>
                                            </div>

                                            <input type="text" name="contact_company" id="contact_company" class="form-control" placeholder="Company" required>

                                            <textarea name="contact_message" rows="3" class="form-control" id="contact_message" placeholder="Message"></textarea>

                                            <div class="col-lg-4 col-md-10 col-8 mx-auto">
                                                <button type="submit" class="form-control">Send message</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>

                                <div class="tab-pane fade" id="nav-ContactMap" role="tabpanel" aria-labelledby="nav-ContactMap-tab">
                                    <iframe class="google-map" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29974.469402870927!2d120.94861466021855!3d14.106066818082482!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd777b1ab54c8f%3A0x6ecc514451ce2be8!2sTagaytay%2C%20Cavite%2C%20Philippines!5e1!3m2!1sen!2smy!4v1670344209509!5m2!1sen!2smy" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                                    <!-- You can easily copy the embed code from Google Maps -> Share -> Embed a map // -->
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </section>
        </main>


        <footer class="site-footer">
            <div class="site-footer-top">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-6 col-12">
                            <h2 class="text-white mb-lg-0">Festava Live</h2>
                        </div>

                        <div class="col-lg-6 col-12 d-flex justify-content-lg-end align-items-center">
                            <ul class="social-icon d-flex justify-content-lg-end">
                                <li class="social-icon-item">
                                    <a href="#" class="social-icon-link">
                                        <span class="bi-twitter"></span>
                                    </a>
                                </li>
    
                                <li class="social-icon-item">
                                    <a href="#" class="social-icon-link">
                                        <span class="bi-apple"></span>
                                    </a>
                                </li>
    
                                <li class="social-icon-item">
                                    <a href="#" class="social-icon-link">
                                        <span class="bi-instagram"></span>
                                    </a>
                                </li>

                                <li class="social-icon-item">
                                    <a href="#" class="social-icon-link">
                                        <span class="bi-youtube"></span>
                                    </a>
                                </li>

                                <li class="social-icon-item">
                                    <a href="#" class="social-icon-link">
                                        <span class="bi-pinterest"></span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="row">

                    <div class="col-lg-6 col-12 mb-4 pb-2">
                        <h5 class="site-footer-title mb-3">Links</h5>

                        <ul class="site-footer-links">
                            <li class="site-footer-link-item">
                                <a href="#" class="site-footer-link">Home</a>
                            </li>

                            <li class="site-footer-link-item">
                                <a href="#" class="site-footer-link">About</a>
                            </li>

                            <li class="site-footer-link-item">
                                <a href="#" class="site-footer-link">Artists</a>
                            </li>

                            <li class="site-footer-link-item">
                                <a href="#" class="site-footer-link">Schedule</a>
                            </li>

                            <li class="site-footer-link-item">
                                <a href="#" class="site-footer-link">Pricing</a>
                            </li>

                            <li class="site-footer-link-item">
                                <a href="#" class="site-footer-link">Contact</a>
                            </li>
                        </ul>
                    </div>

                    <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0">
                        <h5 class="site-footer-title mb-3">Have a question?</h5>

                        <p class="text-white d-flex mb-1">
                            <a href="tel: 090-080-0760" class="site-footer-link">
                                090-080-0760
                            </a>
                        </p>

                        <p class="text-white d-flex">
                            <a href="mailto:hello@company.com" class="site-footer-link">
                                hello@company.com
                            </a>
                        </p>
                    </div>

                    <div class="col-lg-3 col-md-6 col-11 mb-4 mb-lg-0 mb-md-0">
                        <h5 class="site-footer-title mb-3">Location</h5>

                        <p class="text-white d-flex mt-3 mb-2">
                        Silang Junction South, Tagaytay, Cavite, Philippines</p>

                        <a class="link-fx-1 color-contrast-higher mt-3" href="#">
                            <span>Our Maps</span>
                            <svg class="icon" viewBox="0 0 32 32" aria-hidden="true"><g fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"><circle cx="16" cy="16" r="15.5"></circle><line x1="10" y1="18" x2="16" y2="12"></line><line x1="16" y1="12" x2="22" y2="18"></line></g></svg>
                        </a>
                    </div>
                </div>
            </div>

            <div class="site-footer-bottom">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-3 col-12 mt-5">
                            <p class="copyright-text">Copyright © 2036 Festava Live Company</p>
                        </div>

                        <div class="col-lg-8 col-12 mt-lg-5">
                            <ul class="site-footer-links">
                                <li class="site-footer-link-item">
                                    <a href="#" class="site-footer-link">Terms &amp; Conditions</a>
                                </li>

                                <li class="site-footer-link-item">
                                    <a href="#" class="site-footer-link">Privacy Policy</a>
                                </li>

                                <li class="site-footer-link-item">
                                    <a href="#" class="site-footer-link">Your Feedback</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </footer>

<!--

T e m p l a t e M o

-->

        <!-- JAVASCRIPT FILES -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.sticky.js"></script>
        <script src="js/click-scroll.js"></script>
        <script src="js/custom.js"></script>

    </body>
</html>