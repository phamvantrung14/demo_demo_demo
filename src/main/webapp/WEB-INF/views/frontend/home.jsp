
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="pageTitle" scope="request" value="Home"/>
<%@include file="/WEB-INF/views/layout/frontend/header.jsp" %>
<%@include file="/WEB-INF/views/layout/frontend/navbar.jsp" %>


        <section class="home">
            <div class="tittle-block">
                <div class="logo">
                    <a href="index.html">
                        <img src="/assets/frontend/img/logo.png" alt="logo">
                    </a>
                </div>
                <h1>DELICIOUS Food</h1>
                <h2>Tomato is a delitious restaurant website template</h2>
            </div>
            <div class="scroll-down hidden-xs">
                <a href="#about">
                    <img src="/assets/frontend/img/arrow-down.png" alt="down-arrow">
                </a>
            </div>
        </section>

        <section class="about" id="about">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="page-header wow fadeInDown">
                            <h1>the restaurant<small>A little about us and a breif history of how we started.</small></h1>
                        </div>
                    </div>
                </div>
                <div class="row wow fadeInUp">
                    <div class="col-md-4">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-xs-12 hidden-sm about-photo">
                                    <div class="image-thumb">
                                        <img src="/assets/frontend/img/thumb1.png" data-mfp-src="/assets/frontend/img/fullImages/pic1.jpg" class="img-responsive" alt="logo">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6 about-photo hidden-xs">
                                    <img src="/assets/frontend/img/thumb2.png" data-mfp-src="/assets/frontend/img/fullImages/pic2.jpg" class="img-responsive" alt="logo">
                                </div>
                                <div class="col-sm-6 about-photo hidden-xs">
                                    <img src="/assets/frontend/img/thumb3.png" data-mfp-src="/assets/frontend/img/fullImages/pic3.jpg" class="img-responsive" alt="logo">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <p>
                            Cras ut viverra eros. Phasellus sollicitudin sapien id luctus tempor. Sed hendrerit interdum sagittis. Donec nunc lacus, dapibus nec interdum eget, ultrices eget justo. Nam purus lacus, efficitur eget laoreet sed, finibus nec neque. Cras eget enim in diam dapibus sagittis. In massa est, dignissim in libero ac, fringilla ornare mi. Etiam interdum ligula purus, placerat aliquam odio faucibus a. Pellentesque et pulvinar lectus. Fusce scelerisque nisi id nisl gravida ultricies.
                        </p>
                        <br>
                        <p>
                            Ultrices eget justo. Nam purus lacus, efficitur eget laoreet sed, finibus nec neque. Cras eget enim in diam dapibus sagittis. In massa est, dignissim in libero ac, fringilla ornare mi.
                        </p>
                        <img src="/assets/frontend/img/signature.png" alt="signature">
                    </div>
                </div>
            </div>
        </section>
        <section class="features">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="page-header wow fadeInDown">
                            <h1 class="white">Our features<small>Little things make us best in town</small></h1>
                        </div>
                    </div>
                </div>
                <div class="row wow fadeInUp">
                    <div class="col-md-4 col-sm-6">
                        <div class="features-tile">
                            <div class="features-img">
                                <img src="/assets/frontend/img/thumb5.png" alt="" />
                            </div>
                            <div class="features-content">
                                <div class="page-header">
                                    <h1>Serving with love</h1>
                                </div>
                                <p>Aenean suscipit vehicula purus quis iaculis. Aliquam nec leo nisi. Nam urna arcu, maximus eget ex nec, consequat pellentesque enim. Aliquam tempor fringilla odio, vel ullamcorper turpis varius eu.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <div class="features-tile">
                            <div class="features-img">
                                <img src="/assets/frontend/img/thumb6.png" alt="" />
                            </div>
                            <div class="features-content">
                                <div class="page-header">
                                    <h1>Serving with love</h1>
                                </div>
                                <p>Aenean suscipit vehicula purus quis iaculis. Aliquam nec leo nisi. Nam urna arcu, maximus eget ex nec, consequat pellentesque enim. Aliquam tempor fringilla odio, vel ullamcorper turpis varius eu.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <div class="features-tile">
                            <div class="features-img">
                                <img src="/assets/frontend/img/thumb7.png" alt="" />
                            </div>
                            <div class="features-content">
                                <div class="page-header">
                                    <h1>Serving with love</h1>
                                </div>
                                <p>Aenean suscipit vehicula purus quis iaculis. Aliquam nec leo nisi. Nam urna arcu, maximus eget ex nec, consequat pellentesque enim. Aliquam tempor fringilla odio, vel ullamcorper turpis varius eu.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 visible-sm">
                        <div class="features-tile">
                            <div class="features-img">
                                <img src="/assets/frontend/img/thumb5.png" alt="" />
                            </div>
                            <div class="features-content">
                                <div class="page-header">
                                    <h1>Serving with love</h1>
                                </div>
                                <p>Aenean suscipit vehicula purus quis iaculis. Aliquam nec leo nisi. Nam urna arcu, maximus eget ex nec, consequat pellentesque enim. Aliquam tempor fringilla odio, vel ullamcorper turpis varius eu.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="trusted">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="page-header wow fadeInDown">
                            <h1>Trusted By<small>These fine folks trusted tha award winning restaurant</small></h1>
                        </div>
                    </div>
                </div>
                <div class="row wow fadeInUp">
                    <div class="col-md-12">
                        <div class="trusted-sponsors">
                            <div class="item">
                                <a href="index.html">
                                    <img src="/assets/frontend/img/sponsor/foodsquare.png" alt="sponsors">
                                </a>
                            </div>
                            <div class="item">
                                <a href="index.html">
                                    <img src="/assets/frontend/img/sponsor/opentable.png" alt="sponsors">
                                </a>
                            </div>
                            <div class="item">
                                <a href="index.html">
                                    <img src="/assets/frontend/img/sponsor/tripadvisor.png" alt="sponsors">
                                </a>
                            </div>
                            <div class="item">
                                <a href="index.html">
                                    <img src="/assets/frontend/img/sponsor/zomato.png" alt="sponsors">
                                </a>
                            </div>
                            <div class="item">
                                <a href="index.html">
                                    <img src="/assets/frontend/img/sponsor/foodsquare.png" alt="sponsors">
                                </a>
                            </div>
                            <div class="item">
                                <a href="index.html">
                                    <img src="/assets/frontend/img/sponsor/opentable.png" alt="sponsors">
                                </a>
                            </div>
                            <div class="item">
                                <a href="index.html">
                                    <img src="/assets/frontend/img/sponsor/tripadvisor.png" alt="sponsors">
                                </a>
                            </div>
                            <div class="item">
                                <a href="index.html">
                                    <img src="/assets/frontend/img/sponsor/zomato.png" alt="sponsors">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="trusted-quote">
                <div class="container">
                    <div class="row">
                        <div class="col-md-offset-1 col-md-10">
                            <div class="trusted-slider">
                                <ul class="slides">
                                    <li>
                                        <img src="/assets/frontend/img/quote.png" alt="quote">
                                        <p class="quote-body">The world’s a big, big stage for this notorious deli smack in the middle of the theatre district, infamously famous for its over-the-top corned beef and pastrami sandwiches, chopped liver, blintzes, celebrities, salami, smoked fish and New York’s finest cheesecake.</p>
                                        <p class="quote-author">Anthony Reed, <span>New York</span></p>
                                    </li>
                                    <li>
                                        <img src="/assets/frontend/img/quote.png" alt="quote">
                                        <p class="quote-body">You might not find dragon meat on the menu, but you’ll find pretty much anything else that walks, swims or flies, cooked up in more ways than there are people in the Guangdong province. This Midtown mainstay has a 20-year history of delivering mouth-watering and Cantonese style chow.</p>
                                        <p class="quote-author">Gemma Arterton, <span>Bay Area</span></p>
                                    </li>
                                    <li>
                                        <img src="/assets/frontend/img/quote.png" alt="quote">
                                        <p class="quote-body">This NYC historical landmark in the heart of the Theatre District has been serving up suds and down home pub food since 1892, surviving prohibition by renting the front of its then Rockefeller Center façade to Greek florists, while the Hurley brothers ran a speak-easy in back.</p>
                                        <p class="quote-author">Zachary Burton, <span>Sanfransisco</span></p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <section class="subscribe">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1>Subscribe</h1>
                        <p>Get updates about new dishes and upcoming events</p>
                        <form class="form-inline" action="https://demo.web3canvas.com/themeforest/tomato/php/subscribe.php" id="invite" method="POST">
                            <div class="form-group">
                                <input class="e-mail form-control" name="email" id="address" type="email" placeholder="Your Email Address" required>
                            </div>
                            <button type="submit" class="btn btn-default">
                                <i class="fa fa-angle-right"></i>
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </section>
<%@include file="/WEB-INF/views/layout/frontend/footer.jsp" %>


