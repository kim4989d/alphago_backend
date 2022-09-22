package com.base.webapp.application;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.regex.Matcher;

public class File_2 {
	static String path = "/webshare/file";
	static File file;

	public static String getPath() {
		return path;
	}

	public static void setPath(String path) {
		File_2.path = path;
	}

	public static void setFile(String path) {

		file = new File(path);

	}

	public static File getFile() {
		return file;
	}

	public static void NewFile(String path, String file) throws IOException {
		File_2.file = new File(path + "/" + file);
		File_2.file.createNewFile();

	}

	public static boolean IsFileDirCheck(String path, String searchfile) {

		setFile(path);

		String lists[] = File_2.file.list();

		for (int i = 0; i < lists.length; i++) {

			
			// System.out.println(lists[i]);
			setFile(File_2.getPath() + "/" + searchfile);
			File currentfile = File_2.getFile();
			if (currentfile.isFile()) {

				if (lists[i].equals(searchfile)) {
					System.out.println(OsPath(File_2.file.getPath()) + " 같은 파일이 이미 있습니다.");
				}

			}

			if (currentfile.isDirectory()) {
				if (lists[i].equals(searchfile)) {

					System.out.println(OsPath(File_2.file.getPath()) + " 같은 디렉토리가 이미 있습니다.");
				}

			}
		}

		return true;
	}
	
	
	public static String OsPath(String path) {
		
		
		String reverseSlashPath = File_2.file.getPath().replaceAll(Matcher.quoteReplacement(File.separator),"/");
		return reverseSlashPath;
	}
	
	

	public static void main(String[] args) throws IOException {

		// File_2.NewFile(File_2.path, null);

		File_2.IsFileDirCheck(File_2.getPath(), "새 폴더");
		File_2.IsFileDirCheck(File_2.getPath(), "test.txt");
		
		
		

		// PrintWriter print = new PrintWriter(file);

	}
}
