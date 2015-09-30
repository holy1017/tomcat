package vo;

public class BoardDTO {
	   private int num; 			//글 번호
       private String author ;	//글 작성자
       private String title;			//글 제목
       private String content;	//글 내용
       private String writeday;	//글 작성일
       private int readcnt ;		//글 조회수
       private int reproot ;		//달변글 작성 시 사용(원래글의 번호 참조)
       private int repstep;		//달변글 작성 시 사용(답변글의 순서 지정)
       private int repindent;		//답변글 작성 시 사용(답변글의 들여쓰기 지정)
       private String passwd ;	//비밀번호
       
	public BoardDTO() {}
	
	public BoardDTO(int num, String author, String title, String content, String writeday, int readcnt, int reproot,
			int repstep, int repindent, String passwd) {
		super();
		this.num = num;
		this.author = author;
		this.title = title;
		this.content = content;
		this.writeday = writeday;
		this.readcnt = readcnt;
		this.reproot = reproot;
		this.repstep = repstep;
		this.repindent = repindent;
		this.passwd = passwd;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWriteday() {
		return writeday;
	}

	public void setWriteday(String writeday) {
		this.writeday = writeday;
	}

	public int getReadcnt() {
		return readcnt;
	}

	public void setReadcnt(int readcnt) {
		this.readcnt = readcnt;
	}

	public int getReproot() {
		return reproot;
	}

	public void setReproot(int reproot) {
		this.reproot = reproot;
	}

	public int getRepstep() {
		return repstep;
	}

	public void setRepstep(int repstep) {
		this.repstep = repstep;
	}

	public int getRepindent() {
		return repindent;
	}

	public void setRepindent(int repindent) {
		this.repindent = repindent;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	
	                     
}
