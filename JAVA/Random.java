/**
 *
 * @author Alex
 */

public class Random {
    /**
     * Devuelve un numero random comprendido entre min y max AMBOS inclusive
     * @param min
     * @param max
     * @return Numero pseudo aleatorio
     */
    static long Random(long min, long max) {
        long resto = min + 1 - max;
        long numAleatorio = (long) (resto * Math.random() + max);
        return numAleatorio;
    }
}
