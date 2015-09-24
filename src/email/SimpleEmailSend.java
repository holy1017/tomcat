package email;

import org.apache.commons.mail.SimpleEmail;

import vo.EmailVO;

public class SimpleEmailSend {
	String resultMsg;
	
	public void setFormEmailSend(EmailVO evo){
		long beginTime = System.currentTimeMillis();
		
		SimpleEmail simpleEmail = new SimpleEmail();
		simpleEmail.setHostName("smtp.gmail.com");
		simpleEmail.setSmtpPort(587);
		simpleEmail.setAuthentication("testjspjava", "07741234aaaa");
		String rt = "Failure";
		
		try {
			//Smtp SSL, TLS ����
			simpleEmail.setSSL(true);
			simpleEmail.setTLS(true);
			//�޴� ��� ����
			simpleEmail.addTo(evo.getReceiveEmail(),evo.getReceiveName(),"utf-8");
			//������ ��� ����
			simpleEmail.setFrom(evo.getSendEmail(),evo.getSendName(),"utf-8");
			//���� ����
			simpleEmail.setSubject(evo.getSubject());
			//���� ����
			simpleEmail.setMsg(evo.getMsg());
			
			rt = simpleEmail.send();
			resultMsg = "success";
		} catch (Exception e) {
			e.printStackTrace();
			resultMsg = "failure";
		}finally{
			long execTime = System.currentTimeMillis() - beginTime;
			System.err.print("exec time : " + execTime + "ms");
			System.err.print("RT Msg : " + rt);
		}
	}
	public String getResult(){
		return resultMsg;
	}
}
