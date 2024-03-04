package com.helper;

import java.nio.charset.Charset;
import java.util.Random;


import org.springframework.stereotype.Service;

@Service
public class UrlShortener {
	public String getShortenUrl(String longurl, int n) {

		// length is bounded by 256 Character
		byte[] array = new byte[256];
		new Random().nextBytes(array);

		String randomString = new String(array, Charset.forName("UTF-8"));

		// Create a StringBuffer to store the result
		StringBuffer r = new StringBuffer();

		// Append first 20 alphanumeric characters
		// from the generated random String into the result
		for (int k = 0; k < randomString.length(); k++) {

			char ch = randomString.charAt(k);

			if (((ch >= 'a' && ch <= 'z') || (ch >= 'A' && ch <= 'Z')) && (n > 0)) {

				r.append(ch);
				n--;
			}
		}

		// return the resultant string
		return m1(longurl) + r.toString().substring(0, r.toString().length() / 2);
	}

	public  String m1(String longurl) {
		String shorturl = "";
		int count = 0;
		for (char c : longurl.toCharArray()) {
			if (count < 3) {
				shorturl = shorturl + c;
				if (c == '/') {
					count++;
					System.out.println(count);
				}

			} else {
				break;
			}
		}

		return shorturl;
	}
}
