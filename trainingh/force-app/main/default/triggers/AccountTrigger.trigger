trigger AccountAddressTrigger on Account (before insert, before update) {
    for (Account a : Trigger.new) {
                a.AccountNumber = '12345678';        
                a.ShippingStreet = a.BillingStreet;
                a.ShippingCity=a.BillingCity;
                a.ShippingState=a.BillingState;
                a.ShippingPostalCode = a.BillingPostalCode;
                a.ShippingCountry=a.BillingCountry;
        
    }
}