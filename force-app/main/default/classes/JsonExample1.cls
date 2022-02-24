public class JsonExample1
{
    Integer id;
    String name;
    String username;
    String email;
    Address address;
    
    public Static void fetchdata()
    {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://jsonplaceholder.typicode.com/users');
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        if(response.getStatusCode() == 200) 
        {      
            //List<Object>results = (List<Object>)JSON.deserializeUntyped(response.getBody());
            //System.debug()
             JSONParser   ob = JSON.createParser(response.getBody());
            // System.debug(ob);
             while (ob.nextToken() != null) 
             {
                   if (ob.getCurrentToken() == JSONToken.START_ARRAY)
                   {
                          while (ob.nextToken() != null)
                          { 
                              if (ob.getCurrentToken() == JSONToken.START_OBJECT)
                              {
                                  JsonExample1 z=(JsonExample1)ob.readValueAs(JsonExample1.class);
                                  System.debug(z.address.geo.lat);
                              }
                         }
                   }
             }
        }        

    }
    
}