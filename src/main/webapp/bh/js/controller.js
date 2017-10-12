(function(){
	
	var current=0; //현재 있는 페이지
	var max = 0; //사진의 갯수
	var container; //슬라이드를 시킬 할 객체
	var interval;
	var width;
	
	function init(){
		container = jQuery(".slide ul");
		max = container.children().length;
		
		console.log("init");
		
		events();
		
		interval = setInterval(next, 3000);
	}
	
	function events(){
		jQuery("button.prev").on("click", prev);
		jQuery("button.next").on("click", next);
	}
	
	function prev( e ){
		current--;
		if(current < 0 ) current = max-1;
		animate();
	}
	
	function next(e){
		current++;
		if(current > max-1) current = 0;
		animate();
	}
	
	function animate(){
		var moveX = current *500; // 300 : 사진의 width
		TweenMax.to( container, 1, {marginLeft: -moveX, ease:Expo.easeOut});
		
		clearInterval(interval);
		interval = setInterval(next, 3000);
	}
	jQuery(document).ready(init);
})();