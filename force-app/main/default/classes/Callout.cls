public class Callout {
    @future(callout=true)
    public static void getMethod(){
        
        HttpRequest req = new HttpRequest();      
        req.setMethod('GET');                                 
        req.setEndpoint('callout:MainOrgCredential/services/apexrest/Grade');                       
        
        Http http = new Http();                                    
        
        HttpResponse resp = http.send(req);
        //System.debug(' =====> Response Body : '+resp.getStatusCode());
       // System.debug(' =====> Response Body : '+resp.getBody());
        
        if(resp.getStatusCode() == 200){
            String JSONBody = resp.getBody();
            List<contact>RecievedContacts=(list<contact>)JSON.deserialize(JSONBody,list<contact>.class);   
            
            for(contact con :RecievedContacts){
                System.debug('Contact Name ==>  : '+con.FirstName +' '+ con.LastName);
            }           
         }       
    }    
}