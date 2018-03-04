function hello(){
var d = new Date();
if(d.getHours()<12){
    alert('Good morning!');
}
else if(d.getHours()<18){
  alert('Good afternoon!');
}
else{
  alert('Good night!');
}
}
$(function(){
	var interval=3500;
	$('.slideshow').each(function(){
		var container=$(this);
		function switchImg(){
			var imgs=container.find('img');
			var first=imgs.eq(0);
			var second=imgs.eq(1);
			first.appendTo(container).fadeOut();
			second.fadeIn()
		}
		setInterval(switchImg, interval);
	});
});
