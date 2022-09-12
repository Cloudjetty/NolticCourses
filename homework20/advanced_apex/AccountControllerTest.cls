@IsTest
private with sharing class AccountControllerTest {

    @IsTest
    public static void createAccountFuture() {
        String testAccountName = 'Test Name';

        Test.startTest();
            AccountController.createAccountFuture(testAccountName);
        Test.stopTest();

        List<Account> accounts = [SELECT Id, Name FROM Account WHERE Name =: testAccountName];
        System.assertEquals(1, accounts.size());
        System.assertEquals(accounts[0].Name, 'Test Name');
    }
}