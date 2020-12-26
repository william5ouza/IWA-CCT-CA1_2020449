let url = "catalog.xml";
$.ajax(url)
.done(function(xml){
    $(xml).find("entree").each(function(){
    $("#jewels").append(`<div class="jewels">
                         
                        <image src="${ $(this).find("image").text()}" class="image-jewel">
                        <p class="item">${ $(this).find("item").text()}</p>
                        <p class="price">${ $(this).find("price").text()}</p>
                        </div>
                        
                        `);
     });                    
})
.fail(function(){
    alert("Xml file could not be read");
})