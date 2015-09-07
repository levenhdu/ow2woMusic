<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" >

<head>
<title>ow2wo 聆听音乐</title>
<link href="css/index.css" rel="stylesheet" type="text/css" media="all" />

<script src="js/jquery-2/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="js/bootstrap-3.3.5-dist/js/bootstrap.min.js" type="text/javascript">
</script>

<link href="js/bootstrap-3.3.5-dist/css/bootstrap.min.css" type="text/css" />

	<!-- begin CSS -->
    <link href="css/app.css" type="text/css" rel="stylesheet">
    <link href="css/style.css" type="text/css" rel="stylesheet">
	<link href="css/html5-reset.css" type="text/css" rel="stylesheet">
    <link href="js/aside.css" type="text/css" rel="stylesheet">
	<!-- end CSS -->
	
	<!-- begin JS -->
	<script src="js/modernizr-2.0.6.min.js" type="text/javascript"></script> 
	<!-- end JS -->
	
	 <link rel="stylesheet" href="js/jPlayer/jplayer.flat.css" type="text/css" />
 	 <link rel="stylesheet" href="css/bootstrap.css" type="text/css" />
 	 <link rel="stylesheet" href="css/animate.css" type="text/css" />
 	 <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css" />
 	 <link rel="stylesheet" href="css/simple-line-icons.css" type="text/css" />
 	 <link rel="stylesheet" href="css/font.css" type="text/css" />
 	 <link rel="stylesheet" href="css/app.css" type="text/css" /> 
</head>

<body>
	

	
	<div class="topBarDiv">
      <span id="logoSpan" style="background-color:inherit">
        	 <img  class="topLogo" src="css/img/logo.png" width="88" height="106" alt="logo"/>
        </span>
        <span class="blankSpan"></span>
        
        <div id="container">
            <nav id="navigation">
                <ul>
                    <li><a href="#">HOME</a></li>
                    <li><a href="#">MYMUSIC</a></li>
                    <li><a href="#">TOPLIST</a></li>
                    <li><a href="#">SETTING</a></li>
                    <li><a href="#">ABOUT</a></li>
                </ul>
            </nav>
            <!-- end navigation -->	
        </div>
    </div>
    <hr class="headLine"/>
    <hr/>	
    
    
    <div class="leftDiv">
    	<input type='checkbox' id='sideToggle'>
			<aside id="aside"><h2>Side Menu</h2></aside>
			<div id='wrap'>
   				<label id='sideMenuControl' for='sideToggle'>=</label>
    			<p></p>
  			</div>
    </div>
    
    <div class="centerDiv">
    	<div id="rec1" class="recSongDivLeft">
        	<a href=#>
            	<img  src="${albumImageAddress}<s:property value="#recMusicList[0].album.logoAddress"/>" class="r r-2x img-full music"/>
            </a>
            <div class="play-pause"></div>
            <input class="hidden" type="hidden" value="${musicAddress}<s:property value="#recMusicList[0].musicLink.localAddress"/>"/>
            <a class="songName"><s:property value="#recMusicList[0].musicName"/></a><br/>
            <a class="singerName"><s:property value="#recMusicList[0].singer.singerName"/></a>
            
             	
        </div>
    	<div id="rec2"class="recSongDivRight">
        	<a href=#>
            	<img src="${albumImageAddress}<s:property value="#recMusicList[1].album.logoAddress"/>" class="r r-2x img-full music"/>
            </a>
            <input class="hidden" type="hidden" value="${musicAddress}<s:property value="#recMusicList[1].musicLink.localAddress"/>"/>
            <a class="songName"><s:property value="#recMusicList[1].musicName"/></a><br/>
            <a class="singerName"><s:property value="#recMusicList[1].singer.singerName"/></a>	
        </div>
          <div id="rec3" class="recSongDivLeft">
        	<a href=#>
            	<img src="${albumImageAddress}<s:property value="#recMusicList[2].album.logoAddress"/>" class="r r-2x img-full music"/>
            </a>
            <input class="hidden" type="hidden" value="${musicAddress}<s:property value="#recMusicList[2].musicLink.localAddress"/>"/>
            <a class="songName"><s:property value="#recMusicList[2].musicName"/></a><br/>
            <a class="singerName"><s:property value="#recMusicList[2].singer.singerName"/></a>
        </div>
    	<div id="rec4" class="recSongDivRight">
        	<a href=#>
            	<img src="${albumImageAddress}<s:property value="#recMusicList[3].album.logoAddress"/>" class="r r-2x img-full music"/>
            </a>
            <input class="hidden" type="hidden" value="${musicAddress}<s:property value="#recMusicList[3].musicLink.localAddress"/>"/>
            <a class="songName"><s:property value="#recMusicList[3].musicName"/></a><br/>
            <a class="singerName"><s:property value="#recMusicList[3].singer.singerName"/></a>
        </div>
        <hr/>
        <div id="rec5" class="recSongDivLeft">
        	<a href=#>
            	<img src="${albumImageAddress}<s:property value="#recMusicList[4].album.logoAddress"/>" class="r r-2x img-full music"/>
            </a>
            <input class="hidden" type="hidden" value="${musicAddress}<s:property value="#recMusicList[4].musicLink.localAddress"/>"/>
            <a class="songName"><s:property value="#recMusicList[4].musicName"/></a><br/>
            <a class="singerName"><s:property value="#recMusicList[4].singer.singerName"/></a>
        </div>
    	<div id="rec6" class="recSongDivRight">
        	<a href=#>
            	<img src="${albumImageAddress}<s:property value="#recMusicList[5].album.logoAddress"/>" class="r r-2x img-full music"/>
            </a>
            <input class="hidden" type="hidden" value="${musicAddress}<s:property value="#recMusicList[5].musicLink.localAddress"/>"/>
            <a class="songName"><s:property value="#recMusicList[5].musicName"/></a><br/>
            <a class="singerName"><s:property value="#recMusicList[5].singer.singerName"/></a>
        </div>
          <div  id="rec7" class="recSongDivLeft">
        	<a href=#>
            	<img src="${albumImageAddress}<s:property value="#recMusicList[6].album.logoAddress"/>" class="r r-2x img-full music"/>
            </a>
            <input class="hidden" type="hidden" value="${musicAddress}<s:property value="#recMusicList[6].musicLink.localAddress"/>"/>
            <a class="songName"><s:property value="#recMusicList[6].musicName"/></a><br/>
            <a class="singerName"><s:property value="#recMusicList[6].singer.singerName"/></a>
        </div>
    	<div  id="rec8" class="recSongDivRight">
        	<a href=#>
            	<img src="${albumImageAddress}<s:property value="#recMusicList[7].album.logoAddress"/>" class="r r-2x img-full music"/>
            </a>
            <input class="hidden" type="hidden" value="${musicAddress}<s:property value="#recMusicList[7].musicLink.localAddress"/>"/>
            <a class="songName"><s:property value="#recMusicList[7].musicName"/></a><br/>
            <a class="singerName"><s:property value="#recMusicList[7].singer.singerName"/></a>
        </div>
        <hr/>
        <div id="rec9" class="recSongDivLeft">
        	<a href=#>
            	<img src="${albumImageAddress}<s:property value="#recMusicList[8].album.logoAddress"/>" class="r r-2x img-full music"/>
            </a>
            <input class="hidden" type="hidden" value="${musicAddress}<s:property value="#recMusicList[8].musicLink.localAddress"/>"/>
            <a class="songName"><s:property value="#recMusicList[8].musicName"/></a><br/>
            <a class="singerName"><s:property value="#recMusicList[8].singer.singerName"/></a>
        </div>
    	<div id="rec10" class="recSongDivRight">
        	<a href=#>
            	<img src="${albumImageAddress}<s:property value="#recMusicList[9].album.logoAddress"/>" class="r r-2x img-full music"/>
            </a>
            <input class="hidden" type="hidden" value="${musicAddress}<s:property value="#recMusicList[9].musicLink.localAddress"/>"/>
            <a class="songName"><s:property value="#recMusicList[9].musicName"/></a><br/>
            <a class="singerName"><s:property value="#recMusicList[9].singer.singerName"/></a>
        </div>
          <div  id="rec11" class="recSongDivLeft">
        	<a href=#>
            	<img src="${albumImageAddress}<s:property value="#recMusicList[10].album.logoAddress"/>" class="r r-2x img-full music"/>
            </a>
            <input class="hidden" type="hidden" value="${musicAddress}<s:property value="#recMusicList[10].musicLink.localAddress"/>"/>
            <a class="songName"><s:property value="#recMusicList[10].musicName"/></a><br/>
            <a class="singerName"><s:property value="#recMusicList[10].singer.singerName"/></a>
        </div>
    	<div  id="rec12" class="recSongDivRight">
        	<a href=#>
            	<img src="${albumImageAddress}<s:property value="#recMusicList[11].album.logoAddress"/>" class="r r-2x img-full music"/>
            </a>
            <input class="hidden" type="hidden" value="${musicAddress}<s:property value="#recMusicList[11].musicLink.localAddress"/>"/>
            <a class="songName"><s:property value="#recMusicList[11].musicName"/></a><br/>
            <a class="singerName"><s:property value="#recMusicList[11].singer.singerName"/></a>
        </div>
         <hr/>
    	 <hr class="headLine"/>
    	 <hr/>
         <div class="newSongDiv">
    		<div id="new1" class="recSongDivLeft">
            	<a href=#>
            	<img src="${albumImageAddress}<s:property value="#latestMusicList[0].album.logoAddress"/>" class="r r-2x img-full music"/>
            </a>
            <input class="hidden" type="hidden" value="${musicAddress}<s:property value="#latestMusicList[0].musicLink.localAddress"/>"/>
            <a class="songName"><s:property value="#latestMusicList[0].musicName"/></a><br/>
            <a class="singerName"><s:property value="#latestMusicList[0].singer.singerName"/></a>
            </div>
            <div id="new2" class="recSongDivRight">
            	<a href=#>
            	<img src="${albumImageAddress}<s:property value="#latestMusicList[1].album.logoAddress"/>" class="r r-2x img-full music"/>
            </a>
            <input class="hidden" type="hidden" value="${musicAddress}<s:property value="#latestMusicList[1].musicLink.localAddress"/>"/>
            <a class="songName"><s:property value="#latestMusicList[1].musicName"/></a><br/>
            <a class="singerName"><s:property value="#latestMusicList[1].singer.singerName"/></a>
            </div>
            <div id="new3" class="recSongDivLeft">
            	<a href=#>
            	<img src="${albumImageAddress}<s:property value="#latestMusicList[2].album.logoAddress"/>" class="r r-2x img-full music"/>
            </a>
            <input class="hidden" type="hidden" value="${musicAddress}<s:property value="#latestMusicList[2].musicLink.localAddress"/>"/>
            <a class="songName"><s:property value="#latestMusicList[2].musicName"/></a><br/>
            <a class="singerName"><s:property value="#latestMusicList[2].singer.singerName"/></a>
            </div>
            <div id="new4" class="recSongDivRight">
            	<a href=#>
            	<img src="${albumImageAddress}<s:property value="#latestMusicList[3].album.logoAddress"/>" class="r r-2x img-full music"/>
            </a>
            <input class="hidden" type="hidden" value="${musicAddress}<s:property value="#latestMusicList[3].musicLink.localAddress"/>"/>
            <a class="songName"><s:property value="#latestMusicList[3].musicName"/></a><br/>
            <a class="singerName"><s:property value="#latestMusicList[3].singer.singerName"/></a>
            </div>
 			<hr/>
 			<div id="new5" class="recSongDivLeft">
            	<a href=#>
            	<img src="${albumImageAddress}<s:property value="#latestMusicList[4].album.logoAddress"/>" class="r r-2x img-full music"/>
            </a>
            <input class="hidden" type="hidden" value="${musicAddress}<s:property value="#latestMusicList[4].musicLink.localAddress"/>"/>
            <a class="songName"><s:property value="#latestMusicList[4].musicName"/></a><br/>
            <a class="singerName"><s:property value="#latestMusicList[4].singer.singerName"/></a>
            </div>
            <div id="new6" class="recSongDivRight">
            	<a href=#>
            	<img src="${albumImageAddress}<s:property value="#latestMusicList[5].album.logoAddress"/>" class="r r-2x img-full music"/>
            </a>
            <input class="hidden" type="hidden" value="${musicAddress}<s:property value="#latestMusicList[5].musicLink.localAddress"/>"/>
            <a class="songName"><s:property value="#latestMusicList[5].musicName"/></a><br/>
            <a class="singerName"><s:property value="#latestMusicList[5].singer.singerName"/></a>
            </div>
            <div id="new7" class="recSongDivLeft">
            	<a href=#>
            	<img src="${albumImageAddress}<s:property value="#latestMusicList[6].album.logoAddress"/>" class="r r-2x img-full music"/>
            </a>
            <input class="hidden" type="hidden" value="${musicAddress}<s:property value="#latestMusicList[6].musicLink.localAddress"/>"/>
            <a class="songName"><s:property value="#latestMusicList[6].musicName"/></a><br/>
            <a class="singerName"><s:property value="#latestMusicList[6].singer.singerName"/></a>
            </div>
            <div id="new8" class="recSongDivRight">
            	<a href=#>
            	<img src="${albumImageAddress}<s:property value="#latestMusicList[7].album.logoAddress"/>" class="r r-2x img-full music"/>
            </a>
            <input class="hidden" type="hidden" value="${musicAddress}<s:property value="#latestMusicList[7].musicLink.localAddress"/>"/>
            <a class="songName"><s:property value="#latestMusicList[7].musicName"/></a><br/>
            <a class="singerName"><s:property value="#latestMusicList[7].singer.singerName"/></a>
            </div>
        </div>
    
    </div>
 
    
    
    <div class="rightDiv">
    	<div class="personalDiv">
        	
        </div>
    	<div class="topMusicDiv">
        	<div class="topMusicHead">&nbsp;Top Music</div>
        	<ul>
        		<li class="ord"><span class="num1">&nbsp;1</span>&nbsp;<a href=# class="songNameFont"><s:property value="#musicCount[0].music.musicName"/></a></li>
        		<li class="even"><span class="num1">&nbsp;2</span>&nbsp;<a class="songNameFont"><s:property value="#musicCount[1].music.musicName"/></a></li>
        		<li class="ord"><span class="num1">&nbsp;3</span>&nbsp;<a class="songNameFont"><s:property value="#musicCount[2].music.musicName"/></a></li>
        		<li class="even"><span class="num1">&nbsp;4</span>&nbsp;<a class="songNameFont"><s:property value="#musicCount[3].music.musicName"/></a></li>
        		<li class="ord"><span class="num1">&nbsp;5</span>&nbsp;<a class="songNameFont"><s:property value="#musicCount[4].music.musicName"/></a></li>
        		<li class="even"><span class="num1">&nbsp;6</span>&nbsp;<a class="songNameFont"><s:property value="#musicCount[5].music.musicName"/></a></li>
        		<li class="ord"><span class="num1">&nbsp;7</span>&nbsp;<a class="songNameFont"><s:property value="#musicCount[6].music.musicName"/></a></li>
        		<li class="even"><span class="num1">&nbsp;8</span>&nbsp;<a class="songNameFont"><s:property value="#musicCount[7].music.musicName"/></a></li>
        		<li class="ord" ><span class="num1">&nbsp;9</span>&nbsp;<a class="songNameFont"><s:property value="#musicCount[8].music.musicName"/></a></li>
        		<li class="even"><span class="num1">10</span><a class="songNameFont"><s:property value="#musicCount[9].music.musicName"/></a></li>	
        	</ul>
        </div>
    </div>
	<footer class="footer bg-dark">
                  <div id="jp_container_N" class="jp-video-270p">
                    <div class="jp-type-playlist">
                      <div id="jplayer_N" class="jp-jplayer hide" style="width: 480px; height: 270px;"></div>
                      <div class="jp-gui">
                        <div class="jp-video-play hide" style="display: block;">
                          <a class="jp-video-play-icon">play</a>
                        </div>
                        <div class="jp-interface">
                          <div class="jp-controls">
                            <div><a class="jp-previous"><i class="icon-control-rewind i-lg"></i></a></div>
                            <div>
                              <a class="jp-play" style="display: inline-block;"><i class="icon-control-play i-2x"></i></a>
                              <a class="jp-pause hid" style="display: none;"><i class="icon-control-pause i-2x"></i></a>
                            </div>
                            <div><a class="jp-next"><i class="icon-control-forward i-lg"></i></a></div>
                            <div class="hide"><a class="jp-stop"><i class="fa fa-stop"></i></a></div>
                            <div><a class="" data-toggle="dropdown" data-target="#playlist"><i class="icon-list"></i></a></div>
                            <div class="jp-progress hidden-xs">
                              <div class="jp-seek-bar dk" style="width: 0%;">
                                <div class="jp-play-bar bg-info" style="width: 0%;">
                                </div>
                                <div class="jp-title text-lt" style="display: none;">Busted Chump</div>
                              </div>
                            </div>
                            <div class="hidden-xs hidden-sm jp-current-time text-xs text-muted">00:00</div>
                            <div class="hidden-xs hidden-sm jp-duration text-xs text-muted">00:00</div>
                            <div class="hidden-xs hidden-sm">
                              <a class="jp-mute" title="mute"><i class="icon-volume-2"></i></a>
                              <a class="jp-unmute hid" title="unmute" style="display: none;"><i class="icon-volume-off"></i></a>
                            </div>
                            <div class="hidden-xs hidden-sm jp-volume">
                              <div class="jp-volume-bar dk">
                                <div class="jp-volume-bar-value lter" style="width: 80%;"></div>
                              </div>
                            </div>
                            <div>
                              <a class="jp-shuffle" title="shuffle"><i class="icon-shuffle text-muted"></i></a>
                              <a class="jp-shuffle-off hid" title="shuffle off" style="display: none;"><i class="icon-shuffle text-lt"></i></a>
                            </div>
                            <div>
                              <a class="jp-repeat" title="repeat"><i class="icon-loop text-muted"></i></a>
                              <a class="jp-repeat-off hid" title="repeat off" style="display: none;"><i class="icon-loop text-lt"></i></a>
                            </div>
                            <div class="hide">
                              <a class="jp-full-screen" title="full screen"><i class="fa fa-expand"></i></a>
                              <a class="jp-restore-screen" title="restore screen" style="display: none;"><i class="fa fa-compress text-lt"></i></a>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="jp-playlist dropup" id="playlist">
                        <ul class="dropdown-menu aside-xl dker" style="display: block;"><li class="jp-playlist-current"><div><a href="javascript:;" class="jp-playlist-item-remove">×</a><a href="javascript:;" class="jp-playlist-item jp-playlist-current" tabindex="1">Busted Chump <span class="jp-artist">by ADG3</span></a></div></li><li><div><a href="javascript:;" class="jp-playlist-item-remove">×</a><a href="javascript:;" class="jp-playlist-item" tabindex="1">Chucked Knuckles <span class="jp-artist">by 3studios</span></a></div></li><li><div><a href="javascript:;" class="jp-playlist-item-remove">×</a><a href="javascript:;" class="jp-playlist-item" tabindex="1">Cloudless Days <span class="jp-artist">by ADG3 Studios</span></a></div></li><li><div><a href="javascript:;" class="jp-playlist-item-remove">×</a><a href="javascript:;" class="jp-playlist-item" tabindex="1">Core Issues <span class="jp-artist">by Studios</span></a></div></li><li><div><a href="javascript:;" class="jp-playlist-item-remove">×</a><a href="javascript:;" class="jp-playlist-item" tabindex="1">Cryptic Psyche <span class="jp-artist">by ADG3</span></a></div></li><li><div><a href="javascript:;" class="jp-playlist-item-remove">×</a><a href="javascript:;" class="jp-playlist-item" tabindex="1">Electro Freak <span class="jp-artist">by Studios</span></a></div></li><li><div><a href="javascript:;" class="jp-playlist-item-remove">×</a><a href="javascript:;" class="jp-playlist-item" tabindex="1">Freeform <span class="jp-artist">by ADG</span></a></div></li></ul>
                      </div>
                      <div class="jp-no-solution hide" style="display: none;">
                        <span>Update Required</span>
                        To play the media you will need to either update your browser to a recent version or update your <a href="http://get.adobe.com/flashplayer/" target="_blank">Flash plugin</a>.
                      </div>
                    </div>
                  </div>
                </footer>
   
     <!-- App -->
  <script src="js/app.js"></script>  
    <script src="js/app.plugin.js"></script>
  <script type="text/javascript" src="js/jPlayer/jquery.jplayer.min.js"></script>
  <script type="text/javascript" src="js/jPlayer/add-on/jplayer.playlist.min.js"></script>
  <script type="text/javascript" src="js/jPlayer/demo.js"></script>
    
</body>
</html>
	