import java.rmi.*;
import java.rmi.server.*;

public class Server_Impliment extends UnicastRemoteObject implements Client_demo
{
    public  Server_Impliment() throws Exception{}
    public String my_name(String nm, String gender){
        String prfx = "";
        if(gender.equals("male")){
            prfx = "Mr.";
        }
        else{
            prfx = "Ms.";
        }
        System.out.println(nm + " = " + prfx + nm);
        return "Welcome, " + prfx + nm;
    }
}