<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>ㅁㅁㅁㅁ
  <body>
	<aaa><bbb>00000</bbb>11111
<!-- 꺽쇠 바깥부분이 #Text 이다!! -->
		<bbb></bbb>
		
		<bbb id="a" msg="둘리">22222</bbb>
		<bbb id="b" msg="마이콜">33333</bbb>
		<bbb id="b" data="도우너">44444</bbb>
		
		<bbb id="c" id="d" id="e" msg="희동이">많은 아이디</bbb>
		
		<bbb><ccc if="f" mid="아아">55555</ccc></bbb>
		
		<bbb>
			<ccc id="ff" mid="가가">66666</ccc>
		</bbb>
		
		<bbb value="cc"></bbb>
		
	</aaa>
	
	<aaa>
		<bbb>AAAAAA</bbb>
		<bbb id="g">BBBBB</bbb>
	</aaa>
	
	<aaa style="display: none">메시지 XXXXX</aaa> <br>
	
	<aaa id="show" style="display: ">메시지 OOOOO</aaa> <br>
	
	<div id="dixEx" style="border: solid 1px black;"></div>
	
	<br><br><br>
	<hr>

	1. 루트노드(documentElement)
	<input type="button" value="루트태그이름" onclick="root01()">
	<script type="text/javascript">
		function root01() {
			var root = document.documentElement;
			alert("root 태그 이름 : " + root.tagName);
		}
	</script>
	<input type="button" value="루트태그의 ChildNode태그들"
			onclick="root02()">
	<script type="text/javascript">
		function root02() {
			var root = document.documentElement;
			alert("존재 여부 :" + root.hasChildNodes());
			
			var rootChildList = root.childNodes;
			alert("갯수 : " + rootChildList.length);
			
			var msg = "";
			for(i=0; i<rootChildList.length; i++)
			{
				msg += rootChildList.item(i).nodeName + "\n";
			}
			alert("root태그의 Element List \n" + msg);
		}
	</script>
	<hr>

	2. body 노드
	<input type="button" value="body노드의 Child태그들(for이용)"
			onclick="body01()">
	<script type="text/javascript">
		function body01() {
			var root = document.documentElement;
			var rootChildList = root.childNodes;
			
			for(i=0; i<rootChildList.length; i++)
			{
				if(rootChildList.item(i).nodeName == "BODY") {
// 					if의 검색에서 사용되는 키워드는 대소문자를 구별함
					var bodyChildList = rootChildList.item(i).childNodes;
					alert("갯수 : " + bodyChildList.length);
					
					var msg = "";
					for(k=0; k<bodyChildList.length; k++) {
						msg += bodyChildList.item(i).nodeName + "\n";
					}
					alert("bodyChild 목록 \n" + msg);
				}
			}
		}
	</script>
	
	<input type="button"
			value="body노드의 Child 태그들(ByTagName이용)"
			onclick="body02()">
	<script type="text/javascript">
		function body02() {
			var bodyEleList = 
				document.getElementsByTagName("body");
								// 이곳의 body는 대소문자 구분하지 않음
			alert("이름 : " + bodyEleList.item(0).nodeName);
			var bodyChildList = 
				bodyEleList.item(0).childNodes;
			alert("갯수 : " + bodyChildList.length);
			
			var msg = "";
			for(i=0; i<bodyChildList.length; i++) {
				msg += bodyChildList.item(i).nodeName + "\n";
			}
			alert("bodyChildList 목록 \n" + msg)
		}
	</script>
	<hr>

	3. aaa Element의 노드
	<input type="button"
		value="aaa노드의 childNodes"
		onclick="aaa01()">
	<script type="text/javascript">
		function aaa01() {
			var aaaEleList =
				document.getElementsByTagName("aaa");
			var aaaFirstEle = aaaEleList.item(0);
			var aaaFChildList = aaaFirstEle.childNodes;
			
			var msg = "";
			for(p=0; p<aaaFChildList.length; p++) {
				msg +=
					p + "번째 노드\n" +
					"- 이름 : " + aaaFChildList.item(p).nodeName + "\n"+
					"- 값 : " + aaaFChildList.item(p).nodeValue + "\n"+
					"- 타입: " + aaaFChildList.item(p).nodeType + "\n\n";
			}
			alert("첫번째 aaa노드의 ChildList 목록\n" + msg);
		}
	</script>
	
	<input type="button"
			value="첫번쨰aaa노드의firstChild"
			onclick="aaa02()">
	<script type="text/javascript">
		function aaa02() {
			var aaaEleList = 
				document.getElementsByTagName("aaa");
			var aaaFirsrtChild = aaaEleList.item(0).firstChild;
			var msg =
				"첫번째 aaa 노드의 firstChild노드 : " +
				"이름 = " + aaaFirsrtChild.nodeName + "\n" + 
				"값 = " + aaaFirsrtChild.nodeValue + "\n" + 
				"타입 : " + aaaFirsrtChild.nodeType;
			alert(msg);
		}
	</script>
	<hr>

	4. bbb Element의 노드
	<input type="button"
			value="bbb태그들과 attribute"
			onclick="bbb01()">
	<script type="text/javascript">
		function bbb01() {
			var bbbEleList = document.getElementsByTagName("bbb");
			alert("갯수 : " + bbbEleList.length);
			
			var msg = "";
			for(t=0; t<bbbEleList.length; t++) {
				msg += t + "번째 bbb \n" 
					+ "- attribute 유무 : "
					+ bbbEleList.item(t).hasAttributes() + "\n"
					+ "- nodeValue : " 
					+ bbbEleList.item(t).nodeValue + "\n"
					+ "- childNodes 유무 : "
					+ bbbEleList.item(t).hasChildNodes() + "\n";
					
					if(bbbEleList.item(t).hasChildNodes() == true) {
						msg += "---- 첫번째 childNode의 nodeName : "
							+ bbbEleList.item(t).childNodes.item(0).nodeName 
							+ "\n"
							+ "---- 첫번째 childNode의  nodeVlaue : "
							+ bbbEleList.item(t).childNodes.item(0).nodeValue
							+ "\n\n";
					} else {
						msg += "\n";
					}
			}
			alert("bbbList 목록 \n" + msg);
		}
	</script>
	<hr>
	5. id이용 (중복 id는 불가)
	<input type="button"
			value="id가 a인 노드(ByID)"
			onclick="id01()">
	<script type="text/javascript">
		function id01() {
			var nodeId = document.getElementById("a");
			var msg = "- id attr 값 : " 
					+ nodeId.getAttribute("id") + "\n"
					+ "- msg attr 유무 : "
					+ nodeId.hasAttribute("msg") + "\n"
					+ "- data attr 유무 : "
					+ nodeId.hasAttribute("data") + "\n"
					+ "- msg attr 값 : "
					+ nodeId.getAttribute("msg") + "\n"
					+ "- 첫번째 childNode의 nodeName : " 
					+ nodeId.childNodes.item(0).nodeName + "\n"
					+ "- 첫번쨰 childNode의 nodeValue : "
					+ nodeId.childNodes.item(0).nodeValue;
				alert(msg);
		}
	</script>
	
	<input type="button"
			value="id가 b인 노드(ByID)"
			onclick="id02()">
	
	<script type="text/javascript">
		function id02() {
			var nodeId = document.getElementById("b");
			var msg = "- id attr 값 : " 
					+ nodeId.getAttribute("id") + "\n"
					+ "- msg attr 유무 : "
					+ nodeId.hasAttribute("msg") + "\n"
					+ "- data attr 유무 : "
					+ nodeId.hasAttribute("data") + "\n"
					+ "- msg attr 값 : "
					+ nodeId.getAttribute("msg") + "\n"
					+ "- 첫번째 childNode의 nodeName : " 
					+ nodeId.childNodes.item(0).nodeName + "\n"
					+ "- 첫번쨰 childNode의 nodeValue : "
					+ nodeId.childNodes.item(0).nodeValue;
				alert(msg);
		}
	</script>
	
	<input type="button"
			value="id가 c, d, e인 노드(ByID)"
			onclick="id03()">
	
	<script type="text/javascript">
		function id03() {
			var nodeId = document.getElementById("c");
// 			c는 되지만 d, e는 안된다!!!!! id를 여러개 주면 안된다! 1개만줘!
			var msg = "- id attr 값 : " 
					+ nodeId.getAttribute("id") + "\n"
					+ "- msg attr 유무 : "
					+ nodeId.hasAttribute("msg") + "\n"
					+ "- data attr 유무 : "
					+ nodeId.hasAttribute("data") + "\n"
					+ "- msg attr 값 : "
					+ nodeId.getAttribute("msg") + "\n"
					+ "- 첫번째 childNode의 nodeName : " 
					+ nodeId.childNodes.item(0).nodeName + "\n"
					+ "- 첫번쨰 childNode의 nodeValue : "
					+ nodeId.childNodes.item(0).nodeValue;
				alert(msg);
		}
	</script>
	<hr>
	
	6. 설정 변경(id가 show인 대상의 attr 변경하기)
	<input type="button"
			value="id가 show인 메시지O 숨기기"
			onclick="setHide()">
	<script type="text/javascript">
		function setHide() {
			var target = document.getElementById("show");
			alert("현재 : " + target.getAttribute("style"));
			
			target.setAttribute("style", "display:none");
			alert("수정 후 : " + target.getAttribute("style"));
			
// 			위의 명령은 다음과 같음
			target.style.display = "none";
		}
	</script>
	<hr>
	
	문제 : div의 선 굵기와 색 바꾸기
	<input type="button" value="div style바꾸기"
			onclick="divChange()">
	<script type="text/javascript">
		function divChange() {
			var targetDiv = document.getElementById("dixEx");
// 			targetDiv.setAttribute("style", "border: solid 5px red");
			targetDiv.style.border = "solid 6px blue";
		}
	</script>
	


</body>
</html>