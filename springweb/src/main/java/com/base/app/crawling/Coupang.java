package com.base.app.crawling;


import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class Coupang {
    public static void main(String[] args) throws IOException {
        String searchQuery = "마우스"; // 검색어

        String url = "https://www.coupang.com/np/search?q=" + URLEncoder.encode(searchQuery, "UTF-8") + "&page=1"; // 검색어와 페이지 번호를 URL에 포함시킵니다.

        Document doc = Jsoup.connect(url).get(); // URL로 GET 요청을 보냅니다.

        Elements productList = doc.select("ul.search-product-list li.search-product"); // 상품 리스트를 추출합니다.

        List<String> titles = new ArrayList<>();
        List<String> prices = new ArrayList<>();
        List<String> ratings = new ArrayList<>();
        List<String> reviewCounts = new ArrayList<>();

        for (Element product : productList) {
            String title = product.select("div.name").text().trim();
            String price = product.select("strong.price-value").text().trim();
            String rating = product.select("em.rating").text().trim();
            String reviewCount = product.select("span.rating-total-count").text().trim();

            titles.add(title);
            prices.add(price);
            ratings.add(rating);
            reviewCounts.add(reviewCount);
        }

        // 결과를 출력합니다.
        for (int i = 0; i < titles.size(); i++) {
            System.out.println(titles.get(i) + " " + prices.get(i) + " " + ratings.get(i) + " " + reviewCounts.get(i));
        }
    }
}
