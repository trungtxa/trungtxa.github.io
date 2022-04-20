public with sharing class AssignTaskController {
    @AuraEnabled
    public static list<User> getAssignTask(){
        return [SELECT Name, Username, Profile.Name, UserRole.Name  FROM User];
    }
    @AuraEnabled
  	  public static List<User> fetchUser(String searchKeyWord){
          String searchKey = searchKeyWord + '%';
          List < User > returnList = new List < User > ();
          List < User > lstOfUser = [select Name, Username, Profile.Name, UserRole.Name  FROM User
                                      where Name LIKE: searchKey LIMIT 20];
          
          for(User us: lstOfUser) {
           returnList.add(us);
          }
          return returnList;
            }
 }