package configuration;

public class ConfigAPI {

    public static String CREATE_PROJECT=ConfigEnvironment.host+"/api/projects.json";
    public static String READ_PROJECT=ConfigEnvironment.host+"/api/projects/ID.json";
    public static String UPDATE_PROJECT=ConfigEnvironment.host+"/api/projects/ID.json";
    public static String DELETE_PROJECT=ConfigEnvironment.host+"/api/projects/ID.json";
    public static String GET_TOKEN=ConfigEnvironment.host+"/api/authentication/token.json";

    public static String CREATE_ITEM=ConfigEnvironment.host+"/api/items.json";
    public static String READ_ITEM=ConfigEnvironment.host+"/api/items/ID.json";
    public static String UPDATE_ITEM=ConfigEnvironment.host+"/api/items/ID.json";
    public static String DELETE_ITEM=ConfigEnvironment.host+"/api/items/ID.json";
}
