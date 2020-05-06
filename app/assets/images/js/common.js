jQuery(function($){

	// ----------------------------------------
	//  Swiper
	// ----------------------------------------

	(function() {

		var mySwiper_keyvisual = new Swiper('.siteKeyvisual__content .swiper-container', {
			slidesPerView: 1,
			watchOverflow: true,
			loop: true,
			autoplay: {
				delay: 5000,
			},
			navigation: {
				nextEl: '.swiper-button-next',
				prevEl: '.swiper-button-prev',
			},
			pagination: {
				el: '.swiper-pagination',
				type: 'bullets',
				clickable: true,
			},
		});

		var mySwiper_facility = new Swiper('.facilityPoint__itemFigure .swiper-container', {
			slidesPerView: 1,
			watchOverflow: true,
			loop: true,
			autoplay: {
				delay: 5000,
			},
			pagination: {
				el: '.swiper-pagination',
				type: 'bullets',
				clickable: true,
			},
		});

	})();

});