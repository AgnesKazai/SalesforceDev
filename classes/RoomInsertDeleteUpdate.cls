public with sharing class RoomInsertDeleteUpdate {
    
    public static void insertRooms(){

        List<Room__c> listOfRoomsForInsertOttawa = new List<Room__c>();
        List<Room__c> listOfRoomsForInsertHavan = new List<Room__c>();
        List<Room__c> listOfRoomsForInsertPortugal = new List<Room__c>();
        List<Room__c> listOfRoomsForInsertSantoDomingo = new List<Room__c>();
        List<Room__c> listOfRoomsForInsertMexicoCity = new List<Room__c>();
        
        for (Integer i = 0; i < 5; i++) {
            listOfRoomsForInsertOttawa.add(new Room__c(Type_of_Rooms__c = 'Business Singel Room',
            Hotel_Name__c = 'a015I000001U8XRQA0',
            Price__c = 400));
        }
        insert listOfRoomsForInsertOttawa;
        System.debug(' @@@@@@@@ Ottawa is OK @@@@@@@@');
             
         for (Integer i = 0; i < 5; i++) {
            listOfRoomsForInsertHavan.add(new Room__c(Type_of_Rooms__c = 'Standard Singel Room',
            Hotel_Name__c = 'a015I000001U8XSQA0',
            Price__c = 250));
        }
        insert ListOfRoomsForInsertHavan;
        System.debug(' @@@@@@@@ Havan is OK @@@@@@@@');

        for (Integer i = 0; i < 5; i++) {
            listOfRoomsForInsertPortugal.add(new Room__c(Type_of_Rooms__c = 'Standard Double Room',
            Hotel_Name__c = 'a015I000001US5JQAW',
            Price__c = 450));
        }
        insert listOfRoomsForInsertPortugal;
        System.debug(' @@@@@@@@ Portugal is OK @@@@@@@@');

        for (Integer i = 0; i < 5; i++) {
            listOfRoomsForInsertSantoDomingo.add( new Room__c(Type_of_Rooms__c = 'Business Double Room',
            Hotel_Name__c = 'a015I000001U8XTQA0',
            Price__c = 550));
        }
        insert listOfRoomsForInsertSantoDomingo;
        System.debug(' @@@@@@@@ Santo Doming is OK @@@@@@@@');

        for (Integer i = 0; i < 5; i++) {
            listOfRoomsForInsertMexicoCity.add(new Room__c (Type_of_Rooms__c = 'Business Double Room',
            Hotel_Name__c = 'a015I000001U8XTQA0',
            Price__c = 690));
        }
        insert listOfRoomsForInsertMexicoCity;
        System.debug(' @@@@@@@@ Mexico City is OK @@@@@@@@');
    }

    public static void deleteRooms(){
        List<Room__c> listOfRoomsForDelete = new List<Room__c>([SELECT Id FROM Room__c ]);
        delete listOfRoomsForDelete;
        System.debug(' @@@@@@@@ Everything is Clear :) @@@@@@@@');
    }   
}