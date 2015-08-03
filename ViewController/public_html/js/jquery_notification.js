// $(window).on('beforeunload', domystuff);

function domystuff(event){
    //event.cancel();
    //var component = AdfPage.PAGE.findComponentByAbsoluteId("pgl2");
    //AdfCustomEvent.queue(component,"customEvent",{payload:'logoff'}, true);
    //$get("/faces/home.jsf");
}

function Growl(ttl,mess, stl){
  $.growl(
        { title: ttl, 
          style: stl,
          size: "large",
          message: mess,
          duration: 6200
        }
    );
} 

/*
function clientMethodCall() {                   
    var component = AdfPage.PAGE.findComponentByAbsoluteId("pglKontragId");
    AdfCustomEvent.queue(component, "onSetKontragId", 
        null, true);                     
    event.cancel();                    
}       */

function enforcePreventUserInput(evt){            
    var popup = AdfPage.PAGE.findComponentByAbsoluteId('pLong');
    if (popup != null){
        AdfPage.PAGE.addBusyStateListener(popup,handleBusyState);        
        evt.preventUserInput();
    }
}

function handleBusyState(evt){
var popup = AdfPage.PAGE.findComponentByAbsoluteId('pLong');        
    if(popup!=null){
        if (evt.isBusy()){
            popup.show();   
        }
    else if (popup.isPopupVisible())
        {
            popup.hide();
            AdfPage.PAGE.removeBusyStateListener(popup,handleBusyState);
        }
    }
}