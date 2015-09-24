package json;

import org.json.simple.JSONObject;

public class Jsontest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		JSONObject jsoEmp = new JSONObject();
		jsoEmp.put("empno", 7782);
		jsoEmp.put("ename", "CLARK");
		jsoEmp.put("job", "MANAGER");
		JSONObject jsoDept=new JSONObject();
		jsoDept.put("dname", "ACCOUNTING");
		jsoDept.put("loc", "NEW_YORK");
		jsoDept.putAll(jsoEmp);
		System.out.println(jsoDept);
	}

}
