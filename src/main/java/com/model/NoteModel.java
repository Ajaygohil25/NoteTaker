package com.model;

import java.util.Date;
import java.util.Random;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Usernote")
public class NoteModel {
	@Id
	private int id;
	private String title;
	private String note;
	private Date date;

	public NoteModel(String title, String note, Date date) {
		super();
		this.id = new Random().nextInt(1000);
		this.title = title;
		this.note = note;
		this.date = date;
	}

	public NoteModel() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String gettitle() {
		return title;
	}

	public void settitle(String title) {
		this.title = title;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

}
