@isTest
public class AccountTrigger_Test {
    
    @isTest static void address()
    {
        List<Account> accs = new List<Account>();
        for(Integer i=0; i < 200; i++) 
        {
            Account acc = new Account(Name='Test Account ' + i, BillingState = 'CA',BillingStreet='abc',BillingCity='xyz');
            accs.add(acc);
        }
        
        Test.startTest();
            insert accs ;
        Test.stopTest();
        // Please query all record once again to check assert
        List<Account> lstAccount = [select ShippingState,ShippingStreet,ShippingCity from Account];
        for (Account a: lstAccount )
        {
            System.assertEquals('CA', a.ShippingState, 'ERROR');
            System.assertEquals('abc', a.ShippingStreet, 'ERROR');
            System.assertEquals('xyz', a.ShippingCity, 'ERROR');
        }
        
    }
}