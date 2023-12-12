/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Application;

/**
 *
 * @author hp
 */
public class Parameter {
    
    public static String IPHOST = "127.0.0.1"; // adresse de bouclage
    public static String HOST_DB = "jdbc:mysql://" +IPHOST+ ":3306/gestion_inscription"; //notre base de données
    public static String USERNAME_DB = "root";
    public static String PASSWORD_DB = "";
    
    public static int PORT = 11111;
    public static String USER;
    
}
