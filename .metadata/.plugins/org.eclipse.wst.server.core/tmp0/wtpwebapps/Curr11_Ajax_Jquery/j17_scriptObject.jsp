<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	<%--
		JavaScript 클래스, 객체 정의 및 이용
		1. 클래스 정의 형식 1
			- 정의 형식 : 클래스이름 = function() {구현}
			- 함수 내부 정의 : 
				this.함수이름 = function(매개변수) {구현}
		2. 클래스 정의 형식 2
			- 정의 형식(자바 생성자비슷) : 
				클래스이름 = function(매개변수) {초기화}
		3. 클래스 정의 형식 3
			- 함수 외부 정의 :
				클래스 이름.prototype.함수이름 = function() {구현}
		4. JSON 형식을 이용한 클래스 정의 형식
			클래스 이름 = function(매개변수) {
				변수초기화
			};
			클래스이름.prototype = {
				함수명1: function() {
				
				},	<= 쉼표(Comma)만 가능
				함수명2: function() {
				
				}
			};
		5. 익명클래스 이용
			- 익명객체 생성 : var 객체이름 = new Object();
			- 프로퍼티(일반적으로 사용하는 맴버변수) 설정 :
				객체이름.프로퍼티 = "값"; ("" <- 꼭 필요)			
			- 함수 외부 정의 시 (prototype 및 setter 사용 불가)
				객체이름.함수이름 = function() {구현}
	--%>
	
	<h2>1. 자바스크립트 클래스 정의 형식 1</h2>
	<input type="button" value="클래스이용" onclick="use01()"> 
	
	<script type="text/javascript">
		People1 = function() {
			this.setData = function(name, age) {
				this.name = name;
				this.age = age;
			};
			
			this.getData = function() {
				return "이름 : " + this.name + ", 나이 : " + this.age;
			};
		}
		
		function use01() {
			var peo = new People1();
			peo.setData("둘리", 10);
			alert("peo : " + peo.getData());
		}
	</script>
	<hr>
	
	
	<h2>2. 자바스크립트 클래스 정의 형식 2</h2>
	<input type="button" value="클래스이용" onclick="use02()">
	<script type="text/javascript">
		People2 = function(name, age) {
			this.name = name;
			this.age = age;
			
			this.getData = function() {
				return "이름 : " + this.name
					+ ", 나이 : " + this.age;
			}
			
		};
		
		function use02() {
			var peo = new People2("도우너", 20);
			alert("peo : " + peo.getData());
		}
	</script>
	<hr>


	<h2>3. 클래스 정의 형식 3</h2>
	<input type="button" value="클래스이용" onclick="use03()">
	<script type="text/javascript">
// 		[1번방식과 같은 거지만 3번 형식이 자바스크립트의 정석]
		People3 = function() {};
		
		People3.prototype.setData = function(name, age) {
			this.name = name;
			this.age = age;
		}
		
		People3.prototype.getData = function() {
			return "이름 : " + this.name + ", 나이 : " + this.age;	
		}
		
		function use03() {
			var peo = new People3();
			peo.setData("마이콜", 33);
			alert("peo : " + peo.getData());
		}
	</script>
	<hr>
	
	
	<h2>4. JSON을 이용한 클래스 형식</h2>
	<input type="button" value="클래스이용" onclick="use04()">
	<script type="text/javascript">
		People4 = function(name, age) {
			this.name = name;
			this.age = age;
		};
		
		People4.prototype = {
				
				setData:function(name, age){
					this.name = name;
					this.age = age;
				},
				
				getData:function(){
					return "이름 : " + this.name + ", 나이 : " + this.age;
				}
		};
		
		function use04() {
			var peo = new People4("그냥또치", 15);
			alert("peo : " + peo.getData());
			
			peo.setData("수정또치", 22);
			alert("peo : " + peo.getData());
		};
	</script>
	<hr>
	
	
	<h2>5. 익명클래스 이용</h2>
	<input type="button" value="익명클래스이용" onclick="use05()">
	<script type="text/javascript">
		var ann = new Object();
		
		ann.name = "둘리";
		ann.age = 10;
		
		ann.setData = function(name, age) {
			this.name = name;
			this.age = age;
		}
		
		ann.getData = function() {
			return "이름 : " + this.name + ", 나이 : " + this.age;
		}
		
		function use05() {
			alert("1 : " + ann.getData());
			ann.setData("도우너", 20);
			alert("2 : " + ann.getData());
		}
	</script>
	<hr>
	
	
	<h2>6. 패키지가 있는 클래스 정의 형식</h2>
	<input type="button" value="클래스이용" onclick="use06()">
	<script type="text/javascript">
		var entity = new Object();		// 패키지 생성
		
		entity.People6 = function() {
			
			this.setData = function(name, age) {
				this.name = name;
				this.age = age;
			}
			
			this.getData = function() {
				return "이름 : " + this.name + ", 나이 : " + this.age;
			}
		}
		
		function use06() {
			var peo = new entity.People6();
			peo.setData("둘리", 10);
			alert("peo : " + peo.getData());
		}
	
	
	
	</script>

</body>
</html>