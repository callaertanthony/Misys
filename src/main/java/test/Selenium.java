package test;
/**
 * Created by Olivier on 27/03/2015.
 */

    import org.junit.Test;
    import org.openqa.selenium.WebElement;
    import org.openqa.selenium.htmlunit.HtmlUnitDriver;

public class Selenium  {

    @Test
    public static void testAddProductToCart(){
        System.out.println("Début du test de Selenium");
        HtmlUnitDriver driver = new HtmlUnitDriver();

        System.out.println("Accès à l'adresse");
        driver.get("http://localhost:8080/product/detail/1");

        System.out.println("Recherche de l'input");
        WebElement inputBox = driver.findElementById("inputQuantity");

        System.out.println("Entrée de '2' dedans");
        inputBox.sendKeys("2");

        System.out.println("Ajout au panier");
        driver.findElementByClassName("add-to-cart-btn").click();

        System.out.println("Clic sur panier");
        driver.findElementByClassName("glyphicon-shopping-cart").click();

        System.out.println("Affichage de l'adresse");
        System.out.println(driver.getCurrentUrl());

        driver.quit();
    }

    public static void main(String[] args) {

        testAddProductToCart();
    }
}
