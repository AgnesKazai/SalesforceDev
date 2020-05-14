public with sharing class RoomInsertDeleteUpdate {
    
    public static void insertRooms(){

        List<Room__c> listOfRoomsForInsertOttawa = new List<Room__c>();
        List<Room__c> listOfRoomsForInsertHavan = new List<Room__c>();
        List<Room__c> listOfRoomsForInsertPortugal = new List<Room__c>();
        List<Room__c> listOfRoomsForInsertSantoDomingo = new List<Room__c>();
        List<Room__c> listOfRoomsForInsertMexicoCity = new List<Room__c>();
        
        for (Integer i = 0; i < 5; i++) {
            Room__c room = new Room__c();
            room.Type_of_Rooms__c = 'Business Singel Room';
            room.Hotel_Name__c = 'a015I000001U8XRQA0';
            room.Price__c = 400;

            listOfRoomsForInsertOttawa.add(room);
        }
        
        insert listOfRoomsForInsertOttawa;
        System.debug(' @@@@@@@@ Ottawa is OK @@@@@@@@');
             
         for (Integer i = 0; i < 5; i++) {
            Room__c room = new Room__c();
            room.Type_of_Rooms__c = 'Standard Singel Room';
            room.Hotel_Name__c = 'a015I000001U8XSQA0';
            room.Price__c = 250;

            listOfRoomsForInsertHavan.add(room);
        }

        insert ListOfRoomsForInsertHavan;
        System.debug(' @@@@@@@@ Havan is OK @@@@@@@@');

        for (Integer i = 0; i < 5; i++) {
            Room__c room = new Room__c();
            room.Type_of_Rooms__c = 'Standard Double Room';
            room.Hotel_Name__c = 'a015I000001US5JQAW';
            room.Price__c = 450;

            listOfRoomsForInsertPortugal.add(room);
        }

        insert listOfRoomsForInsertPortugal;
        System.debug(' @@@@@@@@ Portugal is OK @@@@@@@@');

        for (Integer i = 0; i < 5; i++) {
            Room__c room = new Room__c();
            room.Type_of_Rooms__c = 'Business Double Room';
            room.Hotel_Name__c = 'a015I000001U8XTQA0';
            room.Price__c = 550;

            listOfRoomsForInsertSantoDomingo.add(room);
        }

        insert listOfRoomsForInsertSantoDomingo;
        System.debug(' @@@@@@@@ Santo Doming is OK @@@@@@@@');

        for (Integer i = 0; i < 5; i++) {
            Room__c room = new Room__c();
            room.Type_of_Rooms__c = 'Business Double Room';
            room.Hotel_Name__c = 'a015I000001U8XTQA0';
            room.Price__c = 690;

            listOfRoomsForInsertMexicoCity.add(room);
        }

        insert listOfRoomsForInsertMexicoCity;
        System.debug(' @@@@@@@@ Mexico City is OK @@@@@@@@');

    }

    public static void deleteRooms(){
        List<Room__c> listOfRoomsForDelete = new List<Room__c>();
        listOfRoomsForDelete = [SELECT Id FROM Room__c ];

        delete listOfRoomsForDelete;
        System.debug(' @@@@@@@@ Everything is Clear :) @@@@@@@@');
    }   
}