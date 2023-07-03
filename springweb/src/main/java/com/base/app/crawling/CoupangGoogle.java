package com.base.app.crawling;


import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

import java.util.List;

public class CoupangGoogle {
    public static void main(String[] args) {
        String url = "https://www.coupang.com/np/categories/496675?listSize=120"; // 크롤링할 쿠팡 카테고리 URL
        System.setProperty("webdriver.chrome.driver", "chromedriver/chromedriver.exe"); // chromedriver 경로 설정
        WebDriver driver = new ChromeDriver();

        try {
            driver.get(url); // 쿠팡 카테고리 페이지에 접속합니다.

            // 카테고리 페이지에서 상품 리스트를 추출합니다.
            List<WebElement> products = driver.findElements(By.cssSelector(".search-product-wrap .search-product-list li"));
            for (WebElement product : products) {
                // 각각의 상품에서 상품명, 가격, 평점 등을 추출합니다.
                WebElement nameElement = product.findElement(By.cssSelector(".name"));
                String name = nameElement.getText();
                WebElement priceElement = product.findElement(By.cssSelector(".price-value"));
                String price = priceElement.getText();
                WebElement ratingElement = product.findElement(By.cssSelector(".rating"));
                String rating = ratingElement.getText();

                System.out.println(name + " - " + price + " - " + rating);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            driver.quit(); // WebDriver를 종료합니다.
        }
    }
}
