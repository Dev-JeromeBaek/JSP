<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	<%--
		Dom 구성요소
		- Document : 전체 문서
		- Element : 태그 단위
		- Text : 
	--%>
	
	<h2>Dom 트리 구조와 명칭</h2>
	
	<document>
		<doc>
			<a>
				<b1 attr="" attr2="" attr3=""> 가 </b1>
				<b2> 나 </b2>
				<b3> 다 </b3>
				<b4> 라 </b4>
			</a>
			<a>
				<c1> A </c1>
				<c2> B </c2>
				<c3> C </c3>
				<c4> D </c4>
			</a>
		</doc>
	</document>
	
	- parent && child 프로퍼티 : 부모-자식의 관계
		- doc 노드의 ChildNodes(자식노드 목록)
			: 첫번째 a노드와 두번째 a노드
			(ChildNode는 NodeList 형태로 제공됨
				/ length && item(index) 제공)	
		- doc 노드의 firstChild Node 
			: doc태그의 제일 처음있는 노드
		- doc 노드의 firstChild Node : 첫번쨰 a 노드	
		- doc 노드의 ChildNodes(자식 목록) : b1, b2, b3, b4
			- 첫번쨰 a 노드의 firstChild Node : b1
			- 첫번째 a 노드의 lastChild Node : b4
			)
			
		- 첫번째 a 노드 및 두번째 a 노드의 parent Node : doc 노드
		
		- c1의 parent 노드 : 두번째  a 노드
		
		- previousSibing && nextSibing 프로퍼티 
			: 자식 노드들 간의 관계
			- b2 Node의 previousSibing Node : b1
			- b2 Node의 nextNode : b3
			
		- ownerDocument : 해당 노드가 포함된 Document 객체 (현재문서)
			현재문서를 의미하고 지칭하는 
		
		- documentElement : 문서(document)의 루트노드(첫번째 ChildNode)인 doc를 의미
			(실제 HTML 문서(!DOCTYPE)의 documentElement : html )
			
		- 각 노드들의 정보를 확인할 수 있는데,
			이 때 종류별로 NodeName과 nodeValue를 제공한다.]
			(종류 별 출력되는 내용은 다음과 같이 정해져 있음)
			- document : node은 #document / noValue는 null
			- Element : noName은 각태그 이름 / nodeVal=는 null
			- Text : nodeName은 #text / nodeValue는 해당 Text 문자열
			- nodeType함수를 사용하는 경우 각 노드의 타입을 정수로 반환함
				 - 1 : Element
				 - 2 : Attribute 노드를 의미
				 - 3 : Text 노드를 의미;
				 
----------------------------------------------------------------------------
				 
	<h2>HTML 구조에 대한 DOM 트리구조</h2>
	
	<doucument> - 표현되지 않음
		<html> - 표현되지 않음(문서 자체)
	 		<head>
	 			<title>제목</title>
	 		</head>
	 		<body>
	 		<h1>상품 목록</h1>
	 		<div id="a"> a </div>
	 		<div id="b"> b </div>
	 		<div id="c"> c </div>
	 		<div class="d"> d </div>
	 		<div class="e"> e </div>
	 		<div class="f"> f </div>
	- HTML Element 지정자 : id && class
		id :
			- Element 에 부여되는 유일한 이름
			- 하나의 문서에서 동일한 이름의 id가 중복되지 않아야 함.
		class :
			- Element 에 부여되는 하나 이상의 이름
			- 하나의 문서에 동일한 이름의 id가 중복되지 않아야 함.
	- Dom Element 검색 명령 :
		- getElementsByTagName : 지정한 이름의 태그에  해당하는 모든 Element 목록
		- getElementById : 지정한 id 속성값을 가진 Element 태그 제공
			(ex : 아이디가 a인것을 나에게 줘라. id는 독립적인 값을 가져야함.)
	- Attribute에 대한 제어 함수
		1. getAttribute(attrName)
			Element에 대하여 attrName에 해당하는 속성값을 제공
		2. setAttribute(attrName, attrValue)
			Element에 대하여 attrName에 해당하는 속성값 attrValue을 저장
		3. removeAttribute(attrName)
			Element에 대하여 attrName에 해당하는 속성을 제거
	- ChildNode에 대한 제어 함수
		1. insertBefore(NewChildNode, refChildNode)
			현재 존재하는 refChildNode의 previousSibing(앞)에 NewChildNode를 삽입
		2. replaceChild(newChildNode, oldChildNode)
			현재 존재하는 oldChildNode를 newChild로 교체
		3. removeChild(refChildNode)
			현재 존재하는 refChildNode를 제거
		4. appendChild(newChildNode)
			생성한 newChildNode를 지정한 노드의 마지막 노드로 추가	
		
	<input type="text" name="aaaa">

		
</doucument>
		
	</body>
	</html>
			<a>안녕</a>
	
	
