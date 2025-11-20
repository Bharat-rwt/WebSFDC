public class Q1Apex {
    
    public static void getAccountInMap(){
        list<account> AccList=[SELECT Id,Name FROM Account];
        
        if(!AccList.isEmpty() || AccList <> null){
            Map<id,Account> AccountIdObjectMap=New Map<id,Account>();
            
            for(Account acc:AccList){
                AccountIdObjectMap.put(acc.id,acc);
                
            }
            
            if(!AccountIdObjectMap.values().isEmpty()){
                for(id accId :AccountIdObjectMap.keySet()){
                    
                    System.debug( accId +'==>'+AccountIdObjectMap.get(accId));
                }
            }



            
        }
    }

}