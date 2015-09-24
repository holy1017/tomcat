package com.been;

public class ScoreBeen {

	private String name;
	private int point;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public String getGrade() {
		String[] Grade = { "S", "A", "B", "C", "D", "E", "F" };
		int r = (100 - point) / 5;
		return r > Grade.length ? Grade[Grade.length - 1] : Grade[r];
		/*
		 * if (r > Grade.length) { return Grade[Grade.length - 1]; } return
		 * Grade[r];
		 */
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
