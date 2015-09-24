<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%!int x = 1;

	//StringBuilder sb; //= new StringBuilder();
	StringBuilder sb= new StringBuilder();

	public String loopProcess(String news[]) {
		//sb = new StringBuilder();
		sb.setLength(0);
		sb.append("<table border='1'>");
		for (int i = 0; i < news.length; i++) {
			sb.append("<tr><td>" + news[i] + "</td></tr>");
		}
		sb.append("</table>");
		return sb.toString();
	}%>

<%
	String st;
	String news1[] = { "11g XE를 설치했다면 정식버전에 있는 SCOTT 테스트 계정이 없을 것이다.1", "C:oraclexeapporacleproduct11.2.0serverrdbmsadmin 에서 scott.sql2을 찾을 수 있다.", "SQL*Plus(SQL를 실행할 수 있는 오라클 커맨드 라인 프로그램이다.)를 사용해 SYSTEM 계정으로 접속한 후 아래를 실행한다." };
	String news2[] = { "@C:oraclexeapporacleproduct11.2.0serverrdbmsadminscott.sql", "커서가 떨어지면 show user 명령어로 계정을 확인하면 SYSTEM 아닌 SCOTT 으로 바뀌어 있을 것이다.", "alter user scott identified by tiger;" };
	String news3[] = { "명령어로 비밀번호를 tiger로 바꾼다.3", "오라클은 데이터베이스 객체안에 사용자 단위로 오라클 객체(테이블, 뷰, 시퀀스, 인덱스 등)를 관리한다.", "scott.sql 파일을 실행하면 파일의 내용대로 SCOTT 계정이 만들어 지고 SCOTT 계정 안에서는 테이블이 만들어진다." };

	switch (x) {
	case 1:
		st = loopProcess(news1);
		x++;
		break;
	case 2:
		st = loopProcess(news2);
		x++;
		break;
	case 3:
		st = loopProcess(news3);
		x = 1;
		break;
	default:
		x = 1;
	}
	//out.clear();
	out.print(sb);
%>