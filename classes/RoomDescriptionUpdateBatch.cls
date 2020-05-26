global class RoomDescriptionUpdateBatch implements Database.Batchable<sObject>, Database.Stateful {
    
     // instance member to retain state across transactions
    global Integer recordsProcessed = 0;

    global Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator('SELECT Id, Type_of_Rooms__c, Description__c FROM Room__c');
    }
    global void execute(Database.BatchableContext bc, List<Room__c>scope){
        List<Room__c> rooms = new List<Room__c>();
        for (Room__c room : scope) {
            if(room.Type_of_Rooms__c == 'Standard Singel Room' || room.Type_of_Rooms__c == 'Business Singel Room' ){
                room.Description__c = 'A single room is for one person and contains a single bed, and will usually be quite small.';
            } else if (room.Type_of_Rooms__c == 'Standard Double Room' || room.Type_of_Rooms__c == 'Business Double Room'){
                room.Description__c = 'A double room is for two people and may contain a double bed or two singles';
            } else {
                room.Description__c = 'A "family room" or "family suite" it basically means that room allows children to sleep there with their parents.';
            }
            rooms.add(room);
            recordsProcessed = recordsProcessed + 1;
        }
        update rooms;
    }
    global void finish(Database.BatchableContext bc){
        System.debug('Done recordsProcessed ' + recordsProcessed);
    }
}

