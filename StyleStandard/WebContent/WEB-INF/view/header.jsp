<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="kr">
<head>

<meta charset="UTF-8">
<title>stylestandard</title>

<!-- Google Font -->

<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,500,600,700,800,900&display=swap"
	rel="stylesheet">

<!-- css파일 -->
<link rel="stylesheet" href="/../../resource/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet" href="../../../resource/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet" href="../../../resource/css/elegant-icons.css"
	type="text/css">
<link rel="stylesheet" href="../../../resource/css/flaticon.css"
	type="text/css">
<link rel="stylesheet" href="../../../resource/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet" href="../../../resource/css/slicknav.min.css"
	type="text/css">
<link rel="stylesheet" href="../../../resource/css/style.css"
	type="text/css">



<!-- 자바스크립트 파일 -->
<script src="../../../resource/js/jquery-3.3.1.min.js"></script>
<script src="../../../resource/js/jquery.slicknav.js"></script>
<script src="../../../resource/js/owl.carousel.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
	crossorigin="anonymous">
</script>




<!-- 1:1채팅 -->
<script>
 (function() {
    var w = window;
    if (w.ChannelIO) {
      return (window.console.error || window.console.log || function(){})('ChannelIO script included twice.');
    }
    var ch = function() {
      ch.c(arguments);
    };
    ch.q = [];
    ch.c = function(args) {
      ch.q.push(args);
    };
    w.ChannelIO = ch;
    function l() {
      if (w.ChannelIOInitialized) {
        return;
      }
      w.ChannelIOInitialized = true;
      var s = document.createElement('script');
      s.type = 'text/javascript';
      s.async = true;
      s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
      s.charset = 'UTF-8';
      var x = document.getElementsByTagName('script')[0];
      x.parentNode.insertBefore(s, x);
    }
    if (document.readyState === 'complete') {
      l();
    } else if (window.attachEvent) {
      window.attachEvent('onload', l);
    } else {
      window.addEventListener('DOMContentLoaded', l, false);
      window.addEventListener('load', l, false);
    }
  })();
  ChannelIO('boot', {
    "pluginKey": "f8276a9d-6809-4543-9182-75dc6d1d568b"
  });
</script>
<!--  -->
</head>
</html>