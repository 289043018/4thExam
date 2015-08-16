package com.hand.entity;

public class FilmEntity extends IdEntity {
	private String title;
	private String description;
	private long language_id;
	public long getLanguage_id() {
		return language_id;
	}
	public void setLanguage_id(long language_id) {
		this.language_id = language_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	@Override
	public String toString() {
		return "FilmEntity [title=" + title + ", description=" + description + "]";
	}
	
	
	

}
