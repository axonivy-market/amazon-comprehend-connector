package com.axonivy.connector.amazon.comprehend.test;

import static com.codeborne.selenide.Condition.*;
import static com.codeborne.selenide.Selenide.*;

import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;

import com.axonivy.ivy.webtest.IvyWebTest;
import com.axonivy.ivy.webtest.engine.EngineUrl;
import com.axonivy.ivy.webtest.primeui.PrimeUi;
import com.codeborne.selenide.Condition;

@IvyWebTest
class DemoWebIT {
	
	@Test
	void detectEntities() {
		open(EngineUrl.createProcessUrl("amazon-comprehend-connector-demo/17B2A0940C6CF31C/demo.ivp"));

		var text = By.id("form:text");
		$(text).clear();
		$(text).sendKeys("Clemens Schiller from Austria wants to buy a big car.");
		$(By.id("form:detectEntities")).shouldBe(enabled).click();

		var table = By.id("form:entitiesTable");
		PrimeUi.table(table).contains("PERSON");
		PrimeUi.table(table).contains("Clemens Schiller");
	}
	
	@Test
	void detectSentiment() {
		open(EngineUrl.createProcessUrl("amazon-comprehend-connector-demo/17B2A0940C6CF31C/demo.ivp"));

		var text = By.id("form:text");
		$(text).clear();
		$(text).sendKeys("This car looks really ugly!");
		$(By.id("form:detectSentiment")).shouldBe(enabled).click();
		$(By.id("form:sentiment")).shouldBe(Condition.text("NEGATIVE"));
	}
}
