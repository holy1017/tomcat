<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>




<!-- 묶은 자료들은 table로 처리 -->
<!-- jsp에 가급적이면 자바 코드를 넣지 말자 -->

<%!
	//declaration - 선언문
	int x = 1;
	
	StringBuilder sb_news = new StringBuilder();

	public String loopProcess(String news[]){
	String str = "<table border='1'>";
	for(int i=0; i<news.length; i++){
		
		str += "<tr><td>"+news[i]+"</td></tr>";
	}
	str += "</table>";
		return str;
	}
%>

<!-- 자동 갱신을 위해 뉴스를 3개의 그룹으로 묶을 것 -->
<%
	
	String outStr = "";//가공한 뉴스 정보를 담을 변수
	String news1[] = {"포화 김해공항, '심야 운항' 고육책까지",
					"많이 어렵다더니…추석 상여금 조금 올랐네",
					"고교 수학여행비 격차 122배…2만5000원 vs 306만원"};

	String news2[] = {"상위10% 고소득 임직원 임금인상 자제해 청년채용 확대",
					"'노동 5법중 이견 적은 3개법 먼저 속도' 고삐죄는 黨·政",
					"현대차, 하도급 근로자 전원 정규직으로"};
	
	String news3[] = {"이렇게 많으니 치킨집 힘들수밖에…",
					"심각한 가계부채…국회도 놀랐다	",
					"전업주부 0~2세 자녀 어린이집 시간제한"};
	
	//switch문으로 각 케이스에 대한 결과를 보여주자
	switch(x){
	case 1://변수 : x,sb_news, outStr,news1,news2,news3
		outStr = loopProcess(news1);//메소드 호출 - 파라미터의 갯수와 파라미터 타입이 중요하다
		x++;//x가 1에서 멈추면 안되니까 x를 증가시켜준다
		break;
	case 2:
		outStr = loopProcess(news2);
		x++;
		break;
	case 3:
		outStr = loopProcess(news3);
		x=1;
		break;
	default:
		x=1;
		break;
	}
	out.clear();
	out.print(outStr);

%>