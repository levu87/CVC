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
			nextEl: '.swiper-btnnext',
			prevEl: '.swiper-btnprev'
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
$(document).ready(function () {
	headerfixed()
	setBackground()
	swiperInit()
	language()
	mappingSearch()
	mappingMenu()
	productCate()
	toggleMenu()
	Accordion()
	viewMore()
})