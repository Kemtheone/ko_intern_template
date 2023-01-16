/*
trigger ContactValidation on Contact (before insert, before update) {
    if ((Trigger.isInsert || Trigger.isUpdate) && Trigger.isBefore) {
        ContValidationHandler.name(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
}

*/