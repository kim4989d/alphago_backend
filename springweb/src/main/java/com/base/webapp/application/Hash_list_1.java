package com.base.webapp.application;

import java.util.ArrayList;
import java.util.Hashtable;

public class Hash_list_1 {

	public String name;
	public int age;
	public String address;
	public String email;

	public void setName(String name) {
		this.name = name;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public int getAge() {
		return age;
	}

	public String getAddress() {
		return address;
	}

	public String getEmail() {
		return email;
	}

	public static void main(String[] args) {
		Hash_list_1 hashlist = new Hash_list_1();
			
		hashlist.setName("김현호");
		hashlist.setAddress("안산");
		hashlist.setAge(50);
		
		
		Hashtable table = new Hashtable();

		table.put(1,hashlist);
		ArrayList list = new ArrayList();
		list.add(table);

	}

}