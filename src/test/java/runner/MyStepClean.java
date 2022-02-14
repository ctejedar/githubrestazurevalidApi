package runner;

import configuration.ConfigAPI;
import configuration.ConfigEnvironment;
import factoryRequest.FactoryRequest;
import factoryRequest.RequestInformation;
import helpers.JsonHelper;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.cucumber.java.hu.Ha;
import io.restassured.response.Response;
import org.junit.jupiter.api.Assertions;

import java.nio.charset.StandardCharsets;
import java.util.Base64;
import java.util.HashMap;
import java.util.Map;

public class MyStepClean {
    Response response;
    RequestInformation requestInformation = new RequestInformation();
    Map<String,String> variables= new HashMap<>();
    Boolean globalAssert=true;
    @Given("i have access to todo.ly")
    public void iHaveAccessToTodoLy() {
        Map <String,String> head= new HashMap<>();
        String basicAuth=Base64.getEncoder()
                           .encodeToString(
                                    (ConfigEnvironment.user+":"+ConfigEnvironment.password).getBytes(StandardCharsets.UTF_8));
        head.put("Authorization","Basic "+basicAuth);
        requestInformation.setUrl(ConfigAPI.GET_TOKEN)
                          .setHeaders(head);

        response=FactoryRequest.make("get").send(requestInformation);
        String token=response.then().extract().path("TokenString");
        head= new HashMap<>();
        head.put("Token",token);
        requestInformation.setHeaders(head);
    }

    @When("send POST request to {} using")
    public void sendPOSTRequestToCREATE_PROJECTUsing(String url,String body) {
        requestInformation.setUrl(this.replaceValue(url)).setBody(this.replaceValue(body));
        response= FactoryRequest.make("post").send(requestInformation);
    }

    @Then("the expected code should be {int}")
    public void theExpectedCodeShouldBe(int expectedCode) {
        response.then().statusCode(expectedCode);
    }

    @And("the expected body should be")
    public void theExpectedBodyShouldBe(String expectedBody) {
        boolean isEqual=JsonHelper.areEqualJson(this.replaceValue(expectedBody),response.body().asString());
        Assertions.assertTrue(isEqual,"ERROR!!! el expected body es diferente");

    }

    @And("save the {} on {}")
    public void saveTheIdOnID_PROJECT(String property, String variable) {
        this.variables.put(variable,response.then().extract().path(property)+"");
    }

    @When("send {} request to {} with {} using")
    public void sendRequestWithID_PROJECTUsing(String request,String url,String variable,String body) {
        requestInformation.setUrl(this.replaceValue(url).replace("ID",this.replaceValue(variable)))
                .setBody(this.replaceValue(body));
        response= FactoryRequest.make(request).send(requestInformation);
    }

    public String replaceValue(String value){
        for (String key: this.variables.keySet() ) {
            value=value.replace(key,this.variables.get(key));
        }

        value= value.replace("CREATE_PROJECT", ConfigAPI.CREATE_PROJECT)
                .replace("READ_PROJECT", ConfigAPI.READ_PROJECT)
                .replace("UPDATE_PROJECT", ConfigAPI.UPDATE_PROJECT)
                .replace("DELETE_PROJECT", ConfigAPI.DELETE_PROJECT)
                .replace("CREATE_ITEM", ConfigAPI.CREATE_ITEM)
                .replace("READ_ITEM", ConfigAPI.READ_ITEM)
                .replace("UPDATE_ITEM", ConfigAPI.UPDATE_ITEM)
                .replace("DELETE_ITEM", ConfigAPI.DELETE_ITEM);

        return value;
    }

    @And("the expected body")
    public void theExpectedBody(String expectedBody) {

        globalAssert=JsonHelper.areEqualJson(this.replaceValue(expectedBody),response.body().asString());
    }

    @And("verify all assert")
    public void verifyAllAssert() {
        Assertions.assertTrue(globalAssert,"FAILED!!!");
    }
}







