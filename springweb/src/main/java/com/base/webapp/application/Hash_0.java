package com.base.webapp.application;

import java.util.Hashtable;

public class Hash_0 {

	
	public static void main(String[] args) {
		
		Hashtable hash=new Hashtable();
		
		hash.put(1, 1);
		hash.put(2, 2);
		hash.put(3, 3);
		hash.put(4, 4);
		hash.put(5, 5);
		
		
		
		System.out.println(hash.get(1));
		System.out.println(hash.get(2));
		System.out.println(hash.get(3));
		System.out.println(hash.get(4));
		System.out.println(hash.get(5));
		
		
		
		System.out.println("======================");
		
	for (int i = 1; i <= hash.size(); i++) {
		System.out.println(hash.get(i));
	
	
	}
		
		
		
	}
	
}
