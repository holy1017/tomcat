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
	String news1[] = { "11g XE�� ��ġ�ߴٸ� ���Ĺ����� �ִ� SCOTT �׽�Ʈ ������ ���� ���̴�.1", "C:oraclexeapporacleproduct11.2.0serverrdbmsadmin ���� scott.sql2�� ã�� �� �ִ�.", "SQL*Plus(SQL�� ������ �� �ִ� ����Ŭ Ŀ�ǵ� ���� ���α׷��̴�.)�� ����� SYSTEM �������� ������ �� �Ʒ��� �����Ѵ�." };
	String news2[] = { "@C:oraclexeapporacleproduct11.2.0serverrdbmsadminscott.sql", "Ŀ���� �������� show user ��ɾ�� ������ Ȯ���ϸ� SYSTEM �ƴ� SCOTT ���� �ٲ�� ���� ���̴�.", "alter user scott identified by tiger;" };
	String news3[] = { "��ɾ�� ��й�ȣ�� tiger�� �ٲ۴�.3", "����Ŭ�� �����ͺ��̽� ��ü�ȿ� ����� ������ ����Ŭ ��ü(���̺�, ��, ������, �ε��� ��)�� �����Ѵ�.", "scott.sql ������ �����ϸ� ������ ������ SCOTT ������ ����� ���� SCOTT ���� �ȿ����� ���̺��� ���������." };

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