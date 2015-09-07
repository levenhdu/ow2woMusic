$(document).ready(function(){
 var num=0;
  var myPlaylist = new jPlayerPlaylist({
    jPlayer: "#jplayer_N",
    cssSelectorAncestor: "#jp_container_N"
  }, [
  ], {
    playlistOptions: {
      enableRemoveControls: true,
      autoPlay: true
    },
    swfPath: "js/jPlayer",
    supplied: "webmv, ogv, m4v, oga, mp3",
    smoothPlayBar: true,
    keyEnabled: true,
    audioFullScreen: false
  });
  
  $(document).on($.jPlayer.event.pause, myPlaylist.cssSelector.jPlayer,  function(){
    $('.musicbar').removeClass('animate');
    $('.jp-play-me').removeClass('active');
    $('.jp-play-me').parent('li').removeClass('active');
  });

  $(document).on($.jPlayer.event.play, myPlaylist.cssSelector.jPlayer,  function(){
    $('.musicbar').addClass('animate');
  });
  
  /**
   * 播放对应歌曲
   */
  
  $(document).on('click', '.recSongDivLeft,.recSongDivRight', function(e){
	  e && e.preventDefault();
	  var $this = $(e.target);
	  if($this.hasClass('active')){
		  myPlaylist.pause();
	      $('.music').not($this).removeClass('pause');
	      $('.music').not($this).removeClass('active');
	      $this.removeClass('active');
	      $this.toggleClass('pause')
	    }
	  else if($this.hasClass('pause')){
		  myPlaylist.play();

	  	  $this.removeClass('pause');
	  	  $this.toggleClass('active');
	  }
	  else{
	    	  myPlaylist.add({
	    		  title:$(this).children(".songName").text(),
	    		  artist:$(this).children(".singerName").text(),
	    		  mp3:$(this).children(".hidden").val(),
	    	  });
	    	  myPlaylist.play(num++);
			  $('.music').not($this).removeClass('pause');
			  $('.music').not($this).removeClass('active');
	    	  	$this.toggleClass('active');
	    	  $this.removeClass('pause');
	    }
	 
  });
  
  
  
  
  

  
  
  
  
  
  /*
   * 随机播放
   */
  /*$(document).on('click', '.', function(e){
    e && e.preventDefault();
    var $this = $(e.target);
    if (!$this.is('a')) $this = $this.closest('a');

    $('.jp-play-me').not($this).removeClass('active');
    $('.jp-play-me').parent('li').not($this.parent('li')).removeClass('active');

    $this.toggleClass('active');
    $this.parent('li').toggleClass('active');
    if( !$this.hasClass('active') ){
      myPlaylist.pause();
    }else{
      var i = Math.floor(Math.random() * (1 + 7 - 1));
      myPlaylist.play(i);
    }
    
  });
*/


  // video

  $("#jplayer_1").jPlayer({
    ready: function () {
      $(this).jPlayer("setMedia", {
        title: "Big Buck Bunny",
        m4v: "http://flatfull.com/themes/assets/video/big_buck_bunny_trailer.m4v",
        ogv: "http://flatfull.com/themes/assets/video/big_buck_bunny_trailer.ogv",
        webmv: "http://flatfull.com/themes/assets/video/big_buck_bunny_trailer.webm",
        poster: "images/m41.jpg"
      });
    },
    swfPath: "js",
    supplied: "webmv, ogv, m4v",
    size: {
      width: "100%",
      height: "auto",
      cssClass: "jp-video-360p"
    },
    globalVolume: true,
    smoothPlayBar: true,
    keyEnabled: true
  });

});