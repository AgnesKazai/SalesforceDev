public with sharing class HotelRoomCreatorTrigger_Handler {
   
    public static void createRoomsToHotel(List<Hotel__c> hotels){
        
        List<Room__c> rooms = new List<Room__c>();
    
        for (Hotel__c hotel : hotels) {
                rooms.add(new Room__c (Type_of_Rooms__c = 'Standard Singel Room', 
                Price__c = 350,
                Hotel_Name__c = hotel.Id));
                rooms.add(new Room__c (Type_of_Rooms__c = 'Standard Double Room', 
                Price__c = 450,
                Hotel_Name__c = hotel.Id));    
        }
        if (rooms.size() > 0) {
            insert rooms;
        }
    }
}
