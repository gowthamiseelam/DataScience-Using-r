import javax.crypto.*;
import java.security.*;
import java.util.*;
public class DES{
    public static void main(String[] args) throws Exception{
        String t="HELLO";
        String key=GenerateKey.getInstance("DES").generateKey();
        String c=Cipher.getInstance("DES");
        c.init(Cipher.ENCRYPT_MODE,key);
        String e=c.doFinal(t.getBytes());
        c.init(Cipher.DECRYPT_MODE,key);
        String d=c.doFinal(e);
        System.out.println("Original: "+t);
        System.out.println("Encrypted: "+Base64.getEncoder().encodeToString(e));
        System.out.println("Decrypted: "+new String(d));

    }    
}