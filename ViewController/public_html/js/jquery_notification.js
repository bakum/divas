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