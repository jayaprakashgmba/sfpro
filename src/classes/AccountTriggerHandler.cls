public class AccountTriggerHandler {
    public static void beforeInsert(List<Account> newList) {
        for (Account acc : newList) {
            if (String.isBlank(acc.Name)) {
                acc.Name = 'Default Name';
            }
        }
    }
}