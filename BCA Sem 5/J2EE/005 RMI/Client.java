import java.rmi.*;
import java.io.*;
import java.net.*;

public class Client
{
    public static void main(String args[])
    {
        try
        {
            String url = "rmi://localhost/my_name";
            Client_demo rd = (Client_demo)Naming.lookup(url);
            BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
            System.out.print("Enter Your Name : ");
            String name = br.readLine();
            System.out.print("Enter Your Gender : ");
            String gneder = br.readLine();;
            String nm = rd.my_name(name, gneder);
            System.out.println("\n" + nm);
        }
        catch(Exception e)
        {
     
            
        }
    }
}