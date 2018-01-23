<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="jquery-3.2.1.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<canvas id="number"></canvas>
	<script>
		var canvas = document.getElementById("number");
		canvas.width = 100;
		canvas.height = 100;
		
		var number = new Image();
		number.src = "frame-sprite-animation.png";
		
		context = canvas.getContext("2d");
		
		//Image객체,
		//SourceX, SourceY,				//소스에서 해당 프레임 위치
		//SourceWidth, SourceHeight,	//소스에서 해당 프레임 크기
		//DestinationX, DestinationY,			//캔버스에서 보여질 위치
		//DestinationWidth, DestinationHeight	//캔버스에서 보여질 크기
		//context.drawImage(image,0,0,80,80,0,0,80,80);
		
		//Image객체, x, y, width, height
		//context.drawImage(image,0,0,80,80);
		
		//Image객체, x, y
		//context.drawImage(image,0,0);
		var x = [0,80,160,240,320];
		
		function sleep(ms){
			return new Promise(resolve => setTimeout(resolve,ms));
		}
		
		async function drawSprite(image, item){
			context.drawImage(image,item,0,80,80,0,0,100,100);
			await sleep(1000);
			context.clearRect(0,0,80,80);
		}
		
		async function playAnimation(image, xarray) {
			for(const i of xarray){
				await drawSprite(image, i);
			}
			playAnimation(image, xarray);
		}
		
		playAnimation(number, [0,80,160,240,320]);
	</script>
</body>
</html>