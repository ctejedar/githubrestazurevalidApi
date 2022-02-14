package runner;

import configuration.ConfigEnvironment;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

import java.io.IOException;

@RunWith(Cucumber.class)
public class Runner {
    //hooks
    @Before
    public void hookSetup() throws IOException {
        System.out.println("**** iniciando........");
        new ConfigEnvironment().readValues();
    }

    @After
    public void hookCleanup(){
        System.out.println("**** finalizando........");
    }
}
