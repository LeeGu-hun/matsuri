<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"
	type="text/javascript"></script>
<title>등록</title>
<script>
	function addseat() {
		var x = document.getElementById("x").value;
		var y = document.getElementById("y").value;
		$(".seatmap").html("");
		for (var i = 0; i < x; i++) {
			$(".seatmap").append("<div class='row'>");
			var ii = "FF";
			switch (i) {
			case 0:
				ii = "A";
				break;
			case 1:
				ii = "B";
				break;
			case 2:
				ii = "C";
				break;
			case 3:
				ii = "D";
				break;
			case 4:
				ii = "E";
				break;
			case 5:
				ii = "F";
				break;
			case 6:
				ii = "G";
				break;
			case 7:
				ii = "H";
				break;
			case 8:
				ii = "I";
				break;
			case 9:
				ii = "J";
				break;
			}
			for (var j = 0; j < y; j++) {
				if(j+1<10){
					$(".seatmap").append(
							"<input type='button' value=" + ii + "0"+(j + 1) + "> ");
				}else{
					$(".seatmap").append(
							"<input type='button' value=" + ii + (j + 1) + "> ");
				}
			}
			$(".seatmap").append("</div>");
		}
	}
</script>
</head>
<body>
	<div class="container">
		<div>
			인원 : <select id="x" name="x">
				<option>1</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
				<option>5</option>
				<option>6</option>
				<option>7</option>
				<option>8</option>
				<option>9</option>
				<option>10</option>
			</select> X <select id="y" name="y">
				<option>1</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
				<option>5</option>
				<option>6</option>
				<option>7</option>
				<option>8</option>
				<option>9</option>
				<option>10</option>
			</select> <input type="button" value="submit" onclick="javascript=addseat();" />
		</div>
		<div>
			<div class="seatmap"></div>
		</div>
		<div class="row">
			예매가 취소되면 되돌릴 수 없습니다. 취소하시겠습니까? <input type="button" value="취소하기" />
		</div>
	</div>
</body>
</html>