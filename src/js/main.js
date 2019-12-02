function setBackground() {
	$('[setBackground]').each(function () {
		var background = $(this).attr('setBackground')
		$(this).css({
			"background-image": "url(" + background + ")",
			"background-size": "cover",
			"background-position": "center center"
		})
	})
	$('[setBackgroundRepeat]').each(function () {
		var background = $(this).attr('setBackgroundRepeat')
		$(this).css({
			"background-image": "url(" + background + ")",
			"background-repeat": "repeat"
		})
	})
}
///header fixed
function headerfixed() {
	if ($(window).scrollTop() > 0) {
		$('header').addClass('fixed')
	} else {
		$('header').removeClass('fixed')
	}
	$(window).on('scroll', function () {
		if ($(window).scrollTop() > 0) {
			$('header').addClass('fixed')
		} else {
			$('header').removeClass('fixed')
		}
	})

	$(window).on('scroll', function () {
		if ($(window).scrollTop() > 0) {
			$('.about-nav').addClass('fixed')
			$('.about-nav').addClass('fixed')
		} else {
			$('header').removeClass('fixed')
			$('.about-nav').removeClass('fixed')
		}
	})
}

function language() {
	$(".language-wrapper .language-active").on("click", function (e) {
		$(this)
			.parents(".language-wrapper")
			.toggleClass("active");
		$("html").one("click", function () {
			$(".language-wrapper").removeClass("active");
		});
		e.stopPropagation();
	});
}

function productCate() {
	$('.side-menu .side-menu-item h3').on('click', function () {
		$(this).siblings('ul').slideToggle()
		$(this).parent().toggleClass('active')
		$(this).parent().siblings('.side-menu-item').find('ul').slideUp()
		$(this).parent().siblings('.side-menu-item').removeClass('active')
	})
	$('.side-menu .side-menu-mobile-header').on('click', function () {
		$('.side-menu .side-menu-list').slideToggle()
	})
}

function toggleMenu() {
	$('.mobile-toggle').on('click', function () {
		$('.mobile-toggle').toggleClass('active')
		$('.mobile-menu').toggleClass('active')
		$('.back-drop').toggleClass('active')
		$('body').toggleClass('over-hidden')
	});
	$('.back-drop').on('click', function () {
		$('.mobile-toggle').removeClass('active')
		$('.mobile-menu').removeClass('active')
		$('.back-drop').removeClass('active')
		$('body').removeClass('over-hidden')
	});
}

function mappingSearch() {
	var moveMenu1 = new MappingListener({
		selector: "header .search",
		mobileWrapper: "header .mobile-menu",
		mobileMethod: "appendTo",
		desktopWrapper: "header .contact",
		desktopMethod: "insertBefore",
		breakpoint: 1200,
	}).watch()
}

function mappingMenu() {
	var moveMenu = new MappingListener({
		selector: "header .main-menu",
		mobileWrapper: "header .mobile-menu",
		mobileMethod: "appendTo",
		desktopWrapper: "header .logo-wrapper",
		desktopMethod: "insertAfter",
		breakpoint: 1200,
	}).watch()
}
function mappingContact() {
	var moveMenu = new MappingListener({
		selector: "header .contact",
		mobileWrapper: "header .mobile-menu",
		mobileMethod: "appendTo",
		desktopWrapper: "header .search",
		desktopMethod: "insertAfter",
		breakpoint: 1200,
	}).watch()
}
function mappingSocial() {
	var moveMenu = new MappingListener({
		selector: "header .social",
		mobileWrapper: "header .mobile-menu",
		mobileMethod: "appendTo",
		desktopWrapper: "header .contact",
		desktopMethod: "insertAfter",
		breakpoint: 1200,
	}).watch()
}
function mappingLanguage() {
	var moveMenu = new MappingListener({
		selector: "header .Module-210",
		mobileWrapper: "header .mobile-toggle",
		mobileMethod: "insertBefore",
		desktopWrapper: "header .social",
		desktopMethod: "insertAfter",
		breakpoint: 1200,
	}).watch()
}
function swiperInit() {
	if ($('.product-detail').length > 0) {
		var ProductBigImageSlider = new Swiper('.product-detail .product-images', {
			slidesPerView: 1,
			effect: 'fade',
			lazy: true,
			fadeEffect: {
				crossFade: true,
			},
			on: {
				init: function () {
					$('.product-detail .product-thumbnails').height(340)
				}
			},
			loop: true,
			freeMode: true,
			loopedSlides: 5, //looped slides should be the same
			watchSlidesVisibility: true,
			watchSlidesProgress: true,
			// thumbs: {
			// 	swiper: ProductSmallImageSlider,
			// }
		})
		var ProductSmallImageSlider = new Swiper('.product-detail .product-thumbnails', {
			slidesPerView: 4,
			direction: 'vertical',
			centeredSlides: true,
			freeMode: true,
			spaceBetween: 10,
			slideToClickedSlide: true,
			lazy: true,
			loop: true,
			loopedSlides: 5,
			fadeEffect: {
				crossFade: true,
			},
			navigation: {
				prevEl: '.product-detail .product-thumbnails-nav .lnr-chevron-up',
				nextEl: '.product-detail .product-thumbnails-nav .lnr-chevron-down',
			}
		})
		ProductSmallImageSlider.controller.control = ProductBigImageSlider;
		ProductBigImageSlider.controller.control = ProductSmallImageSlider;
	}



	var ProductUsedByProjects = new Swiper('.product-used-by-projects .swiper-container', {
		slidesPerView: 3,
		spaceBetween: 20,
		loop: true,
		speed: 1200,
		lazy: true,
		autoplay: {
			delay: 4200,
			disabelOnInteraction: false,
		},
		breakpoints: {
			1025: {
				slidesPerView: 2,
			},
			576: {
				slidesPerView: 1,
			}
		},
		navigation: {
			prevEl: '.product-used-by-projects .product-used-by-projects-nav .lnr-arrow-left',
			nextEl: '.product-used-by-projects .product-used-by-projects-nav .lnr-arrow-right',
		},
		on: {
			init: function () {
				$('.product-used-by-projects .swiper-container .swiper-slide .imgbox').each(function () {
					$(this).height($(this).width() / (400 / 225))
				})
			},
			resize: function () {
				$('.product-used-by-projects .swiper-container .swiper-slide .imgbox').each(function () {
					$(this).height($(this).width() / (400 / 225))
				})
			}
		}
	})
	var ProductOthers = new Swiper('.product-others .swiper-container', {
		slidesPerView: 4,
		spaceBetween: 20,
		loop: true,
		speed: 1200,
		lazy: true,
		autoplay: {
			delay: 3200,
			disabelOnInteraction: false,
		},
		breakpoints: {
			1025: {
				slidesPerView: 3,
			},
			576: {
				slidesPerView: 2,
			}
		},
		navigation: {
			prevEl: '.product-others .product-others-nav .lnr-arrow-left',
			nextEl: '.product-others .product-others-nav .lnr-arrow-right',
		}
	})
	var ProjectImageThumbnailSlider = new Swiper('.project-detail .project-image-thumbnails .swiper-container', {
		spaceBetween: 10,
		slidesPerView: 5,
		loop: true,
		lazy: true,
		// freeMode: true,
		loopedSlides: 5, //looped slides should be the same
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
	})
	var ProjectImageBigSlider = new Swiper('.project-detail .project-image-big .swiper-container', {
		loop: true,
		lazy: true,
		loopedSlides: 5, //looped slides should be the same
		effect: 'fade',
		fadeEffect: {
			crossFade: true,
		},
		thumbs: {
			swiper: ProjectImageThumbnailSlider,
		},
	})
	var swiper = new Swiper('.doitac-slider .swiper-container', {
		slidesPerView: 3,
		slidesPerColumn: 2,
		spaceBetween: 30,
		navigation: {
			nextEl: '.swiper2-btn-next',
			prevEl: '.swiper2-btn-prev'
		},
		// autoplay: {
		//   delay: 3000,
		//   disableOnInteraction: false,
		// },
		// If we need pagination
		pagination: {
			el: '.home-slider .swiper-pagination',
			clickable: true,
			type: 'bullets'
		},
		breakpoints: {
			// when window width is <= 320px
			320: {
				slidesPerView: 1,
				spaceBetween: 10
			},
			// when window width is <= 480px
			480: {
				slidesPerView: 2,
				spaceBetween: 20,
				autoplay: {
					delay: 2500,
					disableOnInteraction: false,
				},
			},
			// when window width is <= 640px
			768: {
				slidesPerView: 3,
				spaceBetween: 30
			},
			992: {
				slidesPerView: 2,
				spaceBetween: 30
			}
		},
	});
	var swiper = new Swiper('.khachhang-slider .swiper-container', {
		slidesPerView: 3,
		slidesPerColumn: 2,
		spaceBetween: 30,
		navigation: {
			nextEl: '.swiper-btn-next',
			prevEl: '.swiper-btn-prev'
		},

		// autoplay: {
		//   delay: 3000,
		//   disableOnInteraction: false,
		// },
		// If we need pagination
		pagination: {
			el: '.home-slider .swiper-pagination',
			clickable: true,
			type: 'bullets'
		},
		breakpoints: {
			// when window width is <= 320px
			320: {
				slidesPerView: 1,
				spaceBetween: 10
			},
			// when window width is <= 480px
			480: {
				slidesPerView: 2,
				spaceBetween: 20,
				autoplay: {
					delay: 3000,
					disableOnInteraction: false,
				},
			},
			// when window width is <= 640px
			768: {
				slidesPerView: 3,
				spaceBetween: 30
			},
			992: {
				slidesPerView: 2,
				spaceBetween: 30
			}
		},
	});
	var OtherBrand = new Swiper('.thuong-hieu-ct .swiper-container', {
		slidesPerView: 6,
		loop: true,
		speed: 1200,
		lazy: true,
		autoplay: {
		delay: 3200,
		disabelOnInteraction: false,
		},
		breakpoints: {
		1025: {
		slidesPerView: 3,
		},
		576: {
		slidesPerView: 2,
		}
		}
		});

		return new Swiper('.used-products .swiper-container', {
			autoplay: {
				delay: 4500
			},
			loop: false,
			slidesPerView: 5,
			spaceBetween: 20,
			breakpoints: {
			1025: {
			slidesPerView: 4,
			},
			992: {
				slidesPerView: 3,
				},
				768: {
					slidesPerView: 2,
					},
			576: {
			slidesPerView: 1,
			}
			}
		});
		
}

function Accordion() {

	$(".list-question ol .accordion-title p").click(function (e) {
		e.preventDefault();
		if (!$(this)
			.parent()
			.hasClass("active")
		) {
			$(".list-question ol .accordion-title .accordion-content").slideUp();
			$(this)
				.next()
				.slideToggle();
			$(".list-question ol .accordion-title").removeClass("active");
			$(this)
				.parent()
				.addClass("active");
		} else {
			$(this)
				.next()
				.slideToggle();
			$(".list-question ol .accordion-title").removeClass("active");
		}
	});
}

function viewMore() {
	$(".product-detail .product-info .btn-viewmore").on('click', function () {
		$(".product-detail .product-info").addClass('show')
		$(".product-detail .product-info .btn-wrapper").remove()
	})
}
function nav(){
	$('.mobile-nav').on('click', function () {
		$(this).siblings('nav').slideToggle()
	})
}
function activeMenu(){
		// this will get the full URL at the address bar
	var url = window.location.href; 

	// passes on every "a" tag 
	$("header .main-menu li a").each(function() {
			// checks if its the same on the address bar
		if(url == (this.href)) { 
			$(this).closest("li").addClass("active");
		}
	});
}
function tabActive() {
	// $('.cvc-truyen-thong nav li').click(function(){
	// 	var tab_id = $(this).attr('data-tab');

	// 	$('.cvc-truyen-thong nav li').removeClass('active');
	// 	$('.tab-content').removeClass('active');

	// 	$(this).addClass('active');
	// 	$("#"+tab_id).addClass('active');
	// })

	$('.tabheader').click(function(e){
		e.preventDefault()
		var tabId = $(e.currentTarget).data('tabId');
		$('.' + tabId).hide();
		$('#' + tabId).show();
	   $('.tabheader').removeClass('active');
	   $(e.currentTarget).addClass('active');
		
	});
	$('.show').click();
}
function tabpro(){
	$('ul.detail-navigation li').click(function(){
		var tab_id = $(this).attr('data-tab');

		$('ul.detail-navigation li').removeClass('current');
		$('.noi-dung').removeClass('current');

		$(this).addClass('current');
		$("#"+tab_id).addClass('current');
	})
}
function socialIcon(){
	$(".social-share").jsSocials({
        showLabel: false,
        showCount: false,
        shares: [{
            share: 'twitter',
            logo: 'fab fa-twitter'
        }, {
            share: 'facebook',
            logo: 'fab fa-facebook-f'
        }]
    })
}
function giaithuong(){
	var swiper = new Swiper(".giai-thuong-wrapper .swiper-container", {
		slidesPerView: 4,
		spaceBetween: 10,
		navigation: {
			prevEl: ".product-button-prev",
			nextEl: ".product-button-next"
		  },
		breakpoints: {
		  // when window width is <= 480px
		  480: {
			slidesPerView: 1,
			spaceBetween: 10
		  },
		  // when window width is <= 640px
		  768: {
			slidesPerView: 2,
			spaceBetween: 10
		  },
		  992: {
			slidesPerView: 3,
			spaceBetween: 10
		  },
		  1025: {
			slidesPerView: 4,
			spaceBetween: 10
		  }
		}
	  });
}
function history(){
	return new Swiper('.history-section .swiper-container', {
		slidesPerView: 6,
		spaceBetween: 0,
		navigation: {
			prevEl: ".history-btn-prev",
			nextEl: ".history-btn-next"
		  },
		breakpoints: {
		  // when window width is <= 480px
		  480: {
			slidesPerView: 1,
			spaceBetween: 0
		  },
		  // when window width is <= 640px
		  768: {
			slidesPerView: 2,
			spaceBetween: 0
		  },
		  992: {
			slidesPerView: 3,
			spaceBetween: 0
		  },
		  1025: {
			slidesPerView: 5,
			spaceBetween: 0
		  }
		}	
	});
}
function menuNav(){
	return new Swiper('.about-nav .swiper-container', {
		slidesPerView: 8,
		spaceBetween: 0,
		navigation: {
			prevEl: ".left-menu",
			nextEl: ".right-menu"
		  },
		breakpoints: {
		  // when window width is <= 480px
		  480: {
			slidesPerView: 1,
			spaceBetween: 0
		  },
		  // when window width is <= 640px
		  768: {
			slidesPerView: 2,
			spaceBetween: 0
		  },
		  992: {
			slidesPerView: 3,
			spaceBetween: 0
		  },
		  1025: {
			slidesPerView: 5,
			spaceBetween: 0
		  }
		}	
	});
}
function homeProduct(){
	var swiper = new Swiper(".home-product-2 .swiper-container", {
		slidesPerView: 5,
		spaceBetween: 10,
		navigation: {
			prevEl: ".p2-button-prev",
			nextEl: ".p2-button-next"
		  },
		breakpoints: {
		  // when window width is <= 480px
		  480: {
			slidesPerView: 1,
			spaceBetween: 10
		  },
		  // when window width is <= 640px
		  768: {
			slidesPerView: 2,
			spaceBetween: 10
		  },
		  992: {
			slidesPerView: 3,
			spaceBetween: 10
		  },
		  1025: {
			slidesPerView: 5,
			spaceBetween: 10
		  }
		}
	  });
}
function homeNews(){
	var swiper = new Swiper(".home-news .swiper-container", {
		slidesPerView: 3,
		spaceBetween: 20,
		pagination: true,
		pagination: {
            el: '.home-news .swiper-pagination',
            clickable: true,
            type: 'bullets'
        },
		breakpoints: {
		  // when window width is <= 480px
		  480: {
			slidesPerView: 1,
			spaceBetween: 20
		  },
		  // when window width is <= 640px
		  768: {
			slidesPerView: 1,
			spaceBetween: 20
		  },
		  992: {
			slidesPerView: 2,
			spaceBetween: 20
		  },
		  1025: {
			slidesPerView: 3,
			spaceBetween: 20
		  }
		}
	  });
}
function banlanhdao(){
	var swiper = new Swiper('.pp-home-team .swiper-container', {
		slidesPerView: 3,
		slidesPerColumn: 1,
		spaceBetween: 30,
		navigation: {
			nextEl: '.team--next',
			prevEl: '.team--prev'
		},
		breakpoints: {
			// when window width is <= 320px
			320: {
				slidesPerView: 1,
				spaceBetween: 10
			},
			// when window width is <= 480px
			480: {
				slidesPerView: 1,
				spaceBetween: 20,
				autoplay: {
					delay: 2500,
					disableOnInteraction: false,
				},
			},
			// when window width is <= 640px
			768: {
				slidesPerView: 1,
				spaceBetween: 30
			},
			1025: {
				slidesPerView: 2,
				spaceBetween: 30
			}
		},
	});
}
function homeBanner(){
	var swiper = new Swiper('.home-banner .swiper-container', {
        pagination: {
            el: '.home-banner .swiper-pagination',
            clickable: true,
            type: 'bullets'
		},
		on: {
            slideChangeTransitionStart: function () {
              $('.banner-title .title').hide(0);
              $('.banner-title .title').removeClass('animation').removeClass('animate');
            },
            slideChangeTransitionEnd: function () {
              $('.banner-title .title').show(0);
            },
          },
        navigation: {
            nextEl: '.swiper-btn-next',
            prevEl: '.swiper-btn-prev',
        },
        loop: true,
        speed: 750,
        effect: "fade",
        observer: true,
        observeParents: true,
        autoplay: {
        	delay: 3000
        },
        fadeEffect: {
            crossFade: true
        },
    });
}

function BannerChild(){
	var interleaveOffset = -.5;

var interleaveEffect = {
  
  onProgress: function(swiper, progress){
    for (var i = 0; i < swiper.slides.length; i++){
      var slide = swiper.slides[i];
      var translate, innerTranslate;
      progress = slide.progress;
      
      if (progress > 0) {
        translate = progress * swiper.width;
        innerTranslate = translate * interleaveOffset;        
      }
      else {        
        innerTranslate = Math.abs( progress * swiper.width ) * interleaveOffset;
        translate = 0;
      }

      $(slide).css({
        transform: 'translate3d(' + translate + 'px,0,0)'
      });

      $(slide).find('.slide-inner').css({
        transform: 'translate3d(' + innerTranslate + 'px,0,0)'
      });
    }
  },

  onTouchStart: function(swiper){
    for (var i = 0; i < swiper.slides.length; i++){
      $(swiper.slides[i]).css({ transition: '' });
    }
  },

  onSetTransition: function(swiper, speed) {
    for (var i = 0; i < swiper.slides.length; i++){
      $(swiper.slides[i])
        .find('.slide-inner')
        .andSelf()
        .css({ transition: speed + 'ms' });
    }
  }
};

var swiperOptions = {
  loop: true,
  speed: 1000,
  grabCursor: true,
  watchSlidesProgress: true,
  mousewheelControl: true,
  autoplay: {
	delay: 3000
},
};

swiperOptions = $.extend(swiperOptions, interleaveEffect);

var swiper = new Swiper('.page-banner .swiper-container', swiperOptions);
}


$(document).ready(function() {
	$('.about-nav').find('a').click(function() {
		var $href = $(this).attr('href');
		//var $anchor = $('#'+$href).offset();
		$('html, body').animate({
			scrollTop: $($href).offset().top - 100
		}, 900);
		return false;
	});
		$(window).scroll(function() {
				var scrollDistance = $(window).scrollTop();

				// Show/hide menu on scroll
				if (scrollDistance >= 850) {
						$('.about-nav').fadeIn("fast");
				} else {
						$('.about-nav').fadeOut("fast");
				}
			
				// Assign active class to nav links while scolling
				$('.cvc-about-1').each(function(i) {
						if ($(this).position().top -100 <= scrollDistance) {
								$('.about-nav li.active').removeClass('active');
								$('.about-nav li').eq(i).addClass('active');
						}
				});
		}).scroll();
	
});

function autorun(){
	$('.big .number').each(function () {
	  $(this).prop('Counter',0).animate({
		  Counter: $(this).text()
	  }, {
		  duration: 5000,
		  easing: 'swing',
		  step: function (now) {
			  $(this).text(Math.ceil(now));
			  $('.big').addClass('active');           
		  }
	  });
	//   var something = $(".circle .item")
	//   .css({border:  '1.6rem solid #0799d9'})
	  
	//   .show()        
	//   setTimeout(function(){
	// 	  something.css({border: '1.6rem solid #ffffff'});
	//   },5000);
  });
  }
$(document).ready(function () {
	headerfixed()
	setBackground()
	swiperInit()
	language()
	mappingSearch()
	mappingContact()
	mappingSocial()
	mappingLanguage()
	banlanhdao()
	mappingMenu()
	productCate()
	toggleMenu()
	Accordion()
	viewMore()
	nav()
	homeNews()
	giaithuong()
	history()
	activeMenu()
	tabActive()
	socialIcon()
	tabpro()
	homeBanner()
	homeProduct()
	menuNav()
	autorun()
	BannerChild()
})
