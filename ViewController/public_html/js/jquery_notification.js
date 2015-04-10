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