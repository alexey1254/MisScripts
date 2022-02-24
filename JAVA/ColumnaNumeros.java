/**
 *
 * @author Alex
 */
public class ColumnaNumeros {
    /**
     * Crea una columna de numeros, 
     * @param numOcurrs
     * @return (String) Una columna de numeros desde 1 hasta numOccurs
     */
    public static String crear(int numOcurrs) {
        String valores = "";
        for (int i = 1; i <= numOcurrs; i++) {
            valores += i+". " + "\n\n";
        }
        return valores;
    }
}
