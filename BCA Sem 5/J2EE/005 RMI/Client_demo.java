import java.rmi.*;

public interface Client_demo extends Remote
{
    public String my_name(String nm, String gender) throws RemoteException;
}