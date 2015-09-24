package com.email;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;

public class EmailSend {

	String result;
	
	public void setEmailSend(EmailVO vo) {
		
		long bTime=System.currentTimeMillis();
		
		SimpleEmail smail=new SimpleEmail();
		
		String msg="Failure";
	
		smail.setHostName("smtp.gmail.com");
		smail.setSmtpPort(587);
		smail.setAuthentication("holyday1017", "holy1234");
		
		try{
			smail.setSSL(true);
			smail.setTLS(true);
			smail.addTo(vo.getForemail(),vo.getForname(),"utf-8");			
			smail.setFrom(vo.getMyemail(),vo.getMyname(),"utf-8");			
			smail.setSubject(vo.getTitle());
			smail.setMsg(vo.getMsg());
			
			System.out.println(smail.getSubject());
			//System.out.println(smail.getMailSession());
			System.out.println(smail.getSocketTimeout());
			
			msg=smail.send();
			result="success";
			
		} catch (EmailException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			long fTime=System.currentTimeMillis();
			System.out.println("time:"+(fTime-bTime));
			System.out.println(msg);
			System.out.println(result);
		}				
	}
	public void setTest() {
		
	}
	public String getResult() {
		return result;
	}
}
