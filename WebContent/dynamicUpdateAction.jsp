<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>




<!-- ���� �ڷ���� table�� ó�� -->
<!-- jsp�� �������̸� �ڹ� �ڵ带 ���� ���� -->

<%!
	//declaration - ����
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

<!-- �ڵ� ������ ���� ������ 3���� �׷����� ���� �� -->
<%
	
	String outStr = "";//������ ���� ������ ���� ����
	String news1[] = {"��ȭ ���ذ���, '�ɾ� ����' ����å����",
					"���� ��ƴٴ��ϡ��߼� �󿩱� ���� �ö���",
					"�� ���п���� ���� 122�衦2��5000�� vs 306����"};

	String news2[] = {"����10% ��ҵ� ������ �ӱ��λ� ������ û��ä�� Ȯ��",
					"'�뵿 5���� �̰� ���� 3���� ���� �ӵ�' ����˴� �ڡ���",
					"������, �ϵ��� �ٷ��� ���� ����������"};
	
	String news3[] = {"�̷��� ������ ġŲ�� ������ۿ���",
					"�ɰ��� �����ä����ȸ�� �����	",
					"�����ֺ� 0~2�� �ڳ� ����� �ð�����"};
	
	//switch������ �� ���̽��� ���� ����� ��������
	switch(x){
	case 1://���� : x,sb_news, outStr,news1,news2,news3
		outStr = loopProcess(news1);//�޼ҵ� ȣ�� - �Ķ������ ������ �Ķ���� Ÿ���� �߿��ϴ�
		x++;//x�� 1���� ���߸� �ȵǴϱ� x�� ���������ش�
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