package com.base.webapp.application;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.Hashtable;
import java.util.StringTokenizer;

public class FileWrite {

	public static void main(String[] args) throws Exception {

		String path = "C:\\project\\work\\egovwork\\springweb\\src\\main\\webapp\\WEB-INF\\views\\html\\HTMLHOME.jsp";

		String filename = "C:\\Users\\kim\\Documents\\htmllist.txt";

		File file = new File(filename);

		StringBuffer filewrite = new StringBuffer();

		BufferedReader buffer = new BufferedReader(new FileReader(file));
		String readname = "";
		while ((readname = buffer.readLine()) != null) {

			// System.out.println( buffer.readLine());
			filewrite.append(readname + "\n");

		}

		// System.out.println(filewrite.toString());

		// TODO Auto-generated catch block

		buffer.close();

		// System.out.println(file.getPath());
		String test = "=ok";
		StringTokenizer token = new StringTokenizer(filewrite.toString(), "=");

		Hashtable hash = new Hashtable();

		for (int i = 0; token.hasMoreTokens(); i++) {
			String str[] = new String[1];
			str[i] = token.nextToken();
			if (i%2==0) {
				hash.put(token, str[i]);
				i = 0;
				
			}
		}
	}
}
