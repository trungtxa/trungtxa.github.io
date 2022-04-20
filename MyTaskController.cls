public with sharing class MyTaskController {
   @AuraEnabled
   public static list<taskcustom__c> getTasks(){
       return [SELECT Name,Assigner__r.name, Status__c, Start_Date__c, End_Date__c, Project__r.name  FROM TaskCustom__c];
   }
}
