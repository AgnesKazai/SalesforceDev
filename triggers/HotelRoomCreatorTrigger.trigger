trigger HotelRoomCreatorTrigger on Hotel__c (after insert) {

    If(Trigger.isAfter && Trigger.isInsert){
        HotelRoomCreatorTrigger_Handler.createRoomsToHotel(Trigger.New);
    }
}