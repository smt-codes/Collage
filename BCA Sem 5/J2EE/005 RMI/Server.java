
import java.rmi.*;
import java.net.*;

public class Server {

    public static void main(String ars[]) {
        try {
            Server_Impliment si = new Server_Impliment();
            Naming.rebind("my_name", si);
        } catch (Exception e) {
            System.err.println(e);
        }
    }
}
