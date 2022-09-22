package com.base.webapp.application;

import java.io.File;
import java.io.IOException;

public class File_0 {

	public static void main(String[] args) throws IOException {

		String path = "/webshare/file";

		File file = new File(path);

		System.out.println(file.getAbsolutePath());
		System.out.println(file.getCanonicalPath());
		System.out.println(file.getPath());
		System.out.println(file.getParent());

		String list[] = file.list();

		for (int i = 0; i < list.length; i++) {
			System.out.println(list[i]);
		}

		File file2 = new File(path + "/test.txt");

		if (file2.isFile()) {
			System.out.println("파일:"+file2.getPath());

		}

		File file3 = new File(path + "/새 폴더");

		if (file3.isDirectory()) {
			System.out.println("폴더:"+file3.getPath());

		}

	}
}
