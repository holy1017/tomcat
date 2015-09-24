package json;

import java.io.IOException;
import java.io.StringWriter;
import java.util.StringTokenizer;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

public class JavaJson {
	public void setJson() {
		JSONObject js = new JSONObject();
		js.put("num", 132);
		js.put("avg", 3.41);
		js.put("name", "ㅁㄶㅁㅎ");
		StringWriter sw = new StringWriter();
		try {
			js.writeJSONString(sw);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String rs = sw.toString();
		System.out.println(":" + rs);
		StringTokenizer st = new StringTokenizer(rs, ",");
		while (st.hasMoreElements()) {
			// Object object = (Object) st.nextElement();
			System.out.println(st.nextElement());
		}
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		JavaJson jj = new JavaJson();
		jj.setJson();
	}

}
