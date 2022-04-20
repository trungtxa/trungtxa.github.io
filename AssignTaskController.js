({
    doInit : function(component, event, helper) {
        console.log('inside');
        var action = component.get("c.getAssignTask");
        //action.setparm
        action.setCallback(this,function(response){
            if (response.getState() === "SUCCESS"){
                 console.log('success');
                component.set("v.assigntaskDetails",response.getReturnValue());
            }
            else
            {
                alert('Error');
            }
        });
        $A.enqueueAction(action);
    },
    Search: function(component, event, helper) {
        var searchField = component.find('searchField');
        var isValueMissing = searchField.get('v.validity').valueMissing;
        // if value is missing show error message and focus on field
        if(isValueMissing) {
            searchField.showHelpMessageIfInvalid();
            searchField.focus();
            alert(searchField);
        }else{
          // else call helper function 
            helper.SearchHelper(component, event);
        }      
    }
})
