<template>    
    <div class="columns-container">
    <div class="container" id="columns">
        <!-- breadcrumb -->
        <div class="breadcrumb clearfix">
            <a class="home" href="#" title="Return to Home">Home</a>
            <span class="navigation-pipe">&nbsp;</span>
            <span class="navigation_page">Thời trang</span>
        </div>
        <!-- ./breadcrumb -->
        <!-- row -->
        <div class="row">
            <!-- Left colunm -->
            <div class="column col-xs-12 col-sm-3" id="left_column">
                <!-- block category -->
                <div class="block left-module">
                    <p class="title_block">Today's Deals</p>
                    <div class="block_content">
                        <!-- layered -->
                        <div class="layered">
                            <div class="layered-content">
                                <div class="today-deals">
                                    <ul class="deals-product-list owl-carousel" data-dots="false" data-loop="true" data-nav = "true" data-autoplayTimeout="1000" data-autoplayHoverPause = "true" data-responsive='{"0":{"items":1},"600":{"items":3,"margin":20},"1000":{"items":1}}'>
                                        <li>
                                            <div class="product-conatainer">
                                                <div class="product-thumb">
                                                    <a href="#">
                                                        <img src="publuc/public/assets/data/ld2.jpg" alt="Product">
                                                    </a>
                                                </div>
                                                <div class="product-info">
                                                    <div class="show-count-down">
                                                        <span class="countdown-lastest" data-y="2015" data-m="7" data-d="1" data-h="00" data-i="00" data-s="00"></span>
                                                    </div>
                                                    <h5 class="product-name">
                                                        <a href="#"> Jackets and coats</a>
                                                    </h5>
                                                    <div class="product-meta">
                                                        <span class="price">$38,95</span>
                                                        <span class="old-price">$52,00</span>
                                                        <span class="star">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-half-o"></i>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="product-conatainer">
                                                <div class="product-thumb">
                                                    <a href="#">
                                                        <img src="public/assets/data/ld1.jpg" alt="Product">
                                                    </a>
                                                </div>
                                                <div class="product-info">
                                                    <div class="show-count-down">
                                                        <span class="countdown-lastest" data-y="2015" data-m="7" data-d="1" data-h="00" data-i="00" data-s="00"></span>
                                                    </div>
                                                    <h5 class="product-name">
                                                        <a href="#"> Jackets and coats</a>
                                                    </h5>
                                                    <div class="product-meta">
                                                        <span class="price">$38,95</span>
                                                        <span class="old-price">$52,00</span>
                                                        <span class="star">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-half-o"></i>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="product-conatainer">
                                                <div class="product-thumb">
                                                    <a href="#">
                                                        <img src="public/assets/data/ld3.jpg" alt="Product">
                                                    </a>
                                                </div>
                                                <div class="product-info">
                                                    <div class="show-count-down">
                                                        <span class="countdown-lastest" data-y="2015" data-m="7" data-d="1" data-h="00" data-i="00" data-s="00"></span>
                                                    </div>
                                                    <h5 class="product-name">
                                                        <a href="#"> Jackets and coats</a>
                                                    </h5>
                                                    <div class="product-meta">
                                                        <span class="price">$38,95</span>
                                                        <span class="old-price">$52,00</span>
                                                        <span class="star">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-half-o"></i>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- ./layered -->
                    </div>
                </div>
                <!-- ./block category  -->
                <!-- block filter -->
                <div class="block left-module">
                    <p class="title_block">Filter selection</p>
                    <div class="block_content">
                        <!-- layered -->
                        <div class="layered layered-filter-price">
                            <!-- filter categgory -->
                            <div class="layered_subtitle">DANH MỤC</div>
                            <div class="layered-content">
                                <ul class="check-box-list">
                                    <li>
                                        <input type="checkbox" id="c1" name="cc" />
                                        <label for="c1">
                                        <span class="button"></span>
                                        Tops<span class="count">(10)</span>
                                        </label>
                                    </li>                                    
                                </ul>
                            </div> 
                            <!-- ./filter categgory -->
                            <!-- filter price -->
                            <div class="layered_subtitle">GIÁ BÁN</div>
                            <div class="layered-content slider-range">
                                
                                <div data-label-reasult="Range:" data-min="0" data-max="500" data-unit="$" class="slider-range-price" data-value-min="50" data-value-max="350"></div>
                                <div class="amount-range-price">Range: $50 - $350</div>
                                <ul class="check-box-list">
                                    <li>
                                        <input type="checkbox" id="p1" name="cc" />
                                        <label for="p1">
                                        <span class="button"></span>
                                        $20 - $50<span class="count">(0)</span>
                                        </label>   
                                    </li>
                                    <li>
                                        <input type="checkbox" id="p2" name="cc" />
                                        <label for="p2">
                                        <span class="button"></span>
                                        $50 - $100<span class="count">(0)</span>
                                        </label>   
                                    </li>
                                    <li>
                                        <input type="checkbox" id="p3" name="cc" />
                                        <label for="p3">
                                        <span class="button"></span>
                                        $100 - $250<span class="count">(0)</span>
                                        </label>   
                                    </li>
                                </ul>
                            </div>
                            <!-- ./filter price -->
                            <!-- filter color -->
                            <div class="layered_subtitle">MÀU SẮC</div>
                            <div class="layered-content filter-color">
                                <ul class="check-box-list">
                                    <li>
                                        <input type="checkbox" id="color1" name="cc" />
                                        <label style=" background:#aab2bd;" for="color1"><span class="button"></span></label>   
                                    </li>                                  

                                </ul>
                            </div>
                            <!-- ./filter color -->
                            <!-- ./filter brand -->
                            <div class="layered_subtitle">THƯƠNG HIỆU</div>
                            <div class="layered-content filter-brand">
                                <ul class="check-box-list">
                                    <li>
                                        <input type="checkbox" id="brand1" name="cc" />
                                        <label for="brand1">
                                        <span class="button"></span>
                                        Channelo<span class="count">(0)</span>
                                        </label>   
                                    </li>                                
                                </ul>
                            </div>
                            <!-- ./filter brand -->
                            <!-- ./filter size -->
                            <div class="layered_subtitle">Size</div>
                            <div class="layered-content filter-size">
                                <ul class="check-box-list">
                                    <li>
                                        <input type="checkbox" id="size1" name="cc" />
                                        <label for="size1">
                                        <span class="button"></span>X
                                        </label>   
                                    </li>                                    
                                </ul>
                            </div>
                            <!-- ./filter size -->
                        </div>
                        <!-- ./layered -->

                    </div>
                </div>
                <!-- ./block filter  -->
                
                <!-- left silide -->
                <div class="col-left-slide left-module">
                    <ul class="owl-carousel owl-style2" data-loop="true" data-nav = "false" data-margin = "30" data-autoplayTimeout="1000" data-autoplayHoverPause = "true" data-items="1" data-autoplay="true">
                        <li><a href="#"><img src="public/assets/data/slide-left.jpg" alt="slide-left"></a></li>
                        <li><a href="#"><img src="public/assets/data/slide-left2.jpg" alt="slide-left"></a></li>
                        <li><a href="#"><img src="public/assets/data/slide-left3.png" alt="slide-left"></a></li>
                    </ul>

                </div>
                <!--./left silde-->
                <!-- ./SPECIAL -->
                <!-- TAGS -->
                <div class="block left-module">
                    <p class="title_block">TAGS</p>
                    <div class="block_content">
                        <div class="tags">
                            <a href="#"><span class="level1">actual</span></a>
                            <a href="#"><span class="level2">adorable</span></a>
                            <a href="#"><span class="level3">change</span></a>
                        </div>
                    </div>
                </div>
                <!-- ./TAGS -->
            </div>
            <!-- ./left colunm -->
            <!-- Center colunm-->
            <div class="center_column col-xs-12 col-sm-9" id="center_column">
                <!-- category-slider -->
                <div class="category-slider">
                    <ul class="owl-carousel owl-style2" data-dots="false" data-loop="true" data-nav = "true" data-autoplayTimeout="1000" data-autoplayHoverPause = "true" data-items="1">
                        <li>
                            <img src="public/assets/data/category-slide.jpg" alt="category-slider">
                        </li>
                        <li>
                            <img src="public/assets/data/slide-cart2.jpg" alt="category-slider">
                        </li>
                    </ul>
                </div>
                <!-- ./category-slider -->

                <!-- category short-description -->
                <div class="cat-short-desc">
                    <div class="desc-text text-left">
                        <p>
                            Mauris accumsan nulla vel diam. Sed in lacus ut enim adipiscing aliquet. Nulla venenatis. In pede mi, aliquet sit amet, euismod in, auctor ut, ligula. Aliquam dapibus tincidunt metus. Praesent justo dolor, lobortis quis, lobortis dignissim, pulvinar ac, lorem. Vestibulum sed ante. Donec sagittis euismod purus. Sed ut perspiciatis sit voluptatem accusantim doloremque laudantim.
                        </p>
                    </div>
                    <div class="cat-short-desc-products">
                        <ul class="row">
                            <li class="col-sm-3">
                                <div class="product-container">
                                    <div class="product-thumb">
                                    <a href="#"><img src="public/assets/data/sub-cat1.jpg" alt="Product"></a>
                                    </div>
                                    <h5 class="product-name">
                                        <a href="#">Sub category 1</a>
                                        <span>(90)</span>
                                    </h5>
                                </div>
                            </li>
                            <li class="col-sm-3">
                                <div class="product-container">
                                    <div class="product-thumb">
                                    <a href="#"><img src="public/assets/data/sub-cat2.jpg" alt="Product"></a>
                                    </div>
                                    <h5 class="product-name">
                                        <a href="#">Sub category 2</a>
                                        <span>(55)</span>
                                    </h5>
                                </div>
                            </li>
                            <li class="col-sm-3">
                                <div class="product-container">
                                    <div class="product-thumb">
                                    <a href="#"><img src="public/assets/data/sub-cat3.jpg" alt="Product"></a>
                                    </div>
                                    <h5 class="product-name">
                                        <a href="#">Sub category 3</a>
                                        <span>(100)</span>
                                    </h5>
                                </div>
                            </li>
                            <li class="col-sm-3">
                                <div class="product-container">
                                    <div class="product-thumb">
                                    <a href="#"><img src="public/assets/data/sub-cat4.jpg" alt="Product"></a>
                                    </div>
                                    <h5 class="product-name">
                                        <a href="#">Sub category 4</a>
                                        <span>(70)</span>
                                    </h5>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- ./category short-description -->
                <!-- view-product-list-->
                <div id="view-product-list" class="view-product-list">
                    <h2 class="page-heading">
                        <span class="page-heading-title">Women</span>
                    </h2>
                    <ul class="display-product-option">
                        <li class="view-as-grid selected">
                            <span>grid</span>
                        </li>
                        <li class="view-as-list">
                            <span>list</span>
                        </li>
                    </ul>
                    <!-- PRODUCT LIST -->
                    <ul class="row product-list style2 grid">
                        <li class="col-sx-12 col-sm-4">
                            <div class="product-container">
                                <div class="left-block">
                                    <a href="#">
                                        <img class="img-responsive" alt="product" src="public/assets/data/p40.jpg" />
                                    </a>
                                    <div class="quick-view">
                                        <a title="Add to my wishlist" class="heart" href="#"></a>
                                        <a title="Add to compare" class="compare" href="#"></a>
                                        <a title="Quick view" class="search" href="#"></a>
                                    </div>
                                </div>
                                <div class="right-block">
                                    <h5 class="product-name"><a href="#">Maecenas consequat mauris</a></h5>
                                    <div class="product-star">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-half-o"></i>
                                    </div>
                                    <div class="content_price">
                                        <span class="price product-price">$38,95</span>
                                        <span class="price old-price">$52,00</span>
                                    </div>
                                    <div class="info-orther">
                                        <p>Item Code: #453217907</p>
                                        <p class="availability">Availability: <span>In stock</span></p>
                                        <div class="product-desc">
                                            Vestibulum eu odio. Suspendisse potenti. Morbi mollis tellus ac sapien. Praesent egestas tristique nibh. Nullam dictum felis eu pede mollis pretium. Fusce egestas elit eget lorem. In auctor lobortis lacus. Suspendisse faucibus, nunc et pellentesque egestas, lacus ante convallis tellus, vitae iaculis lacus elit id tortor.
                                        </div>
                                    </div>
                                    <div class="add-to-cart">
                                        <a title="Add to Cart" href="#add"><span></span>Add to Cart</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        
                        <li class="col-sx-12 col-sm-4">
                            <div class="product-container">
                                <div class="left-block">
                                    <a href="#">
                                        <img class="img-responsive" alt="product" src="public/assets/data/p38.jpg" />
                                    </a>
                                    <div class="quick-view">
                                            <a title="Add to my wishlist" class="heart" href="#"></a>
                                            <a title="Add to compare" class="compare" href="#"></a>
                                            <a title="Quick view" class="search" href="#"></a>
                                    </div>
                                </div>
                                <div class="right-block">
                                    <h5 class="product-name"><a href="#">Maecenas consequat mauris</a></h5>
                                    <div class="product-star">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-half-o"></i>
                                    </div>
                                    <div class="content_price">
                                        <span class="price product-price">$38,95</span>
                                        <span class="price old-price">$52,00</span>
                                    </div>
                                    <div class="info-orther">
                                        <p>Item Code: #453217907</p>
                                        <p class="availability">Availability: <span>In stock</span></p>
                                        <div class="product-desc">
                                            Vestibulum eu odio. Suspendisse potenti. Morbi mollis tellus ac sapien. Praesent egestas tristique nibh. Nullam dictum felis eu pede mollis pretium. Fusce egestas elit eget lorem. In auctor lobortis lacus. Suspendisse faucibus, nunc et pellentesque egestas, lacus ante convallis tellus, vitae iaculis lacus elit id tortor.
                                        </div>
                                    </div>
                                    <div class="add-to-cart">
                                        <a title="Add to Cart" href="#add">Add to Cart</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        
                        <li class="col-sx-12 col-sm-4">
                            <div class="product-container">
                                <div class="left-block">
                                    <a href="#">
                                        <img class="img-responsive" alt="product" src="public/assets/data/p89.jpg" />
                                    </a>
                                    <div class="quick-view">
                                            <a title="Add to my wishlist" class="heart" href="#"></a>
                                            <a title="Add to compare" class="compare" href="#"></a>
                                            <a title="Quick view" class="search" href="#"></a>
                                    </div>
                                </div>
                                <div class="right-block">
                                    <h5 class="product-name"><a href="#">Maecenas consequat mauris</a></h5>
                                    <div class="product-star">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-half-o"></i>
                                    </div>
                                    <div class="content_price">
                                        <span class="price product-price">$38,95</span>
                                        <span class="price old-price">$52,00</span>
                                    </div>
                                    <div class="info-orther">
                                        <p>Item Code: #453217907</p>
                                        <p class="availability">Availability: <span>In stock</span></p>
                                        <div class="product-desc">
                                            Vestibulum eu odio. Suspendisse potenti. Morbi mollis tellus ac sapien. Praesent egestas tristique nibh. Nullam dictum felis eu pede mollis pretium. Fusce egestas elit eget lorem. In auctor lobortis lacus. Suspendisse faucibus, nunc et pellentesque egestas, lacus ante convallis tellus, vitae iaculis lacus elit id tortor.
                                        </div>
                                    </div>
                                    <div class="add-to-cart">
                                        <a title="Add to Cart" href="#add">Add to Cart</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        
                        <li class="col-sx-12 col-sm-4">
                            <div class="product-container">
                                <div class="left-block">
                                    <a href="#">
                                        <img class="img-responsive" alt="product" src="public/assets/data/p92.jpg" />
                                    </a>
                                    <div class="quick-view">
                                            <a title="Add to my wishlist" class="heart" href="#"></a>
                                            <a title="Add to compare" class="compare" href="#"></a>
                                            <a title="Quick view" class="search" href="#"></a>
                                    </div>
                                </div>
                                <div class="right-block">
                                    <h5 class="product-name"><a href="#">Maecenas consequat mauris</a></h5>
                                    <div class="product-star">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-half-o"></i>
                                    </div>
                                    <div class="content_price">
                                        <span class="price product-price">$38,95</span>
                                        <span class="price old-price">$52,00</span>
                                    </div>
                                    <div class="info-orther">
                                        <p>Item Code: #453217907</p>
                                        <p class="availability">Availability: <span>In stock</span></p>
                                        <div class="product-desc">
                                            Vestibulum eu odio. Suspendisse potenti. Morbi mollis tellus ac sapien. Praesent egestas tristique nibh. Nullam dictum felis eu pede mollis pretium. Fusce egestas elit eget lorem. In auctor lobortis lacus. Suspendisse faucibus, nunc et pellentesque egestas, lacus ante convallis tellus, vitae iaculis lacus elit id tortor.
                                        </div>
                                    </div>
                                    <div class="add-to-cart">
                                        <a title="Add to Cart" href="#add">Add to Cart</a>
                                    </div>
                                </div>
                            </div>
                        </li> 
                    </ul>
                    <!-- ./PRODUCT LIST -->
                </div>
                <!-- ./view-product-list-->
                <div class="sortPagiBar">
                    <div class="bottom-pagination">
                        <nav>
                          <ul class="pagination">
                            <li class="active"><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li>
                              <a href="#" aria-label="Next">
                                <span aria-hidden="true">Next &raquo;</span>
                              </a>
                            </li>
                          </ul>
                        </nav>
                    </div>
                    <div class="show-product-item">
                        <select name="">
                            <option value="">Show 18</option>
                            <option value="">Show 20</option>
                            <option value="">Show 50</option>
                            <option value="">Show 100</option>
                        </select>
                    </div>
                    <div class="sort-product">
                        <select>
                            <option value="">Product Name</option>
                            <option value="">Price</option>
                        </select>
                        <div class="sort-product-icon">
                            <i class="fa fa-sort-alpha-asc"></i>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ./ Center colunm -->
        </div>
        <!-- ./row-->
    </div>
</div>
</template>

<script>
    export default {
        mounted() {
            console.log('Filler Component mounted.')
        }
    }
</script>
