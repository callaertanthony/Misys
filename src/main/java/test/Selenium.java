package test;
/**
 * Created by Olivier on 27/03/2015.
 */

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;

import static org.junit.Assert.assertNotEquals;

public class Selenium  {

    @Test
    public static void testAddProductToCart(){
        System.out.println("Début du test de Selenium");
        WebDriver driver = new FirefoxDriver();

        System.out.println("Accès à l'adresse");
        driver.get("http://localhost:8080/product/detail/24");

        System.out.println("Recherche de l'input");
        WebElement inputBox = driver.findElement(By.id("inputQuantity"));

        System.out.println("Entrée de '2' dedans");
        inputBox.sendKeys("2");

        System.out.println("Ajout au panier");
        driver.findElement(By.className("add-to-cart")).click();

        System.out.println("Clic sur panier");
        driver.findElement(By.className("glyphicon-shopping-cart")).click();

        System.out.println("Affichage de l'adresse");
        System.out.println(driver.getCurrentUrl());

        System.out.println("Vérifier qu'on a bien un produit au moins");
        assertNotEquals(driver.findElements(By.className("cart_product")).size(),0);

        driver.quit();
    }

    public static void main(String[] args) {

        testAddProductToCart();
    }
}