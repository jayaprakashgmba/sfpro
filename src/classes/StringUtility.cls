public class StringUtility {
    public static String reverseString(String input) {
        if (String.isBlank(input)) {
            return '';
        }
        String reversed = '';
        for (Integer i = input.length() - 1; i >= 0; i--) {
            reversed += input.substring(i, i + 1);
        }
        return reversed;
    }
}