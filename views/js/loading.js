$ (function(){
     $.ajax({
      type: "GET",
      url: "catalog.xml", // replace with absolute URL of your gallery's xml file
      dataType: "xml",
      success: function(xml) {
    $(xml).find("necklaces").each(function(){
    $("#Necklace").append(` <div class="jewel">
                        
                        <image src="${ $(this).find("image").text()}" width="350" height=250">
                        <p class="item">${ $(this).find("item").text()}</p>
                        <p class="price">${ $(this).find("price").text()}</p>
                        </div>
                        </div>`);
    })
    $(xml).find("entree").each(function(){
    $("#Necklace").append(` <div class="jewel">
                        
                        <image src="${ $(this).find("image").text()}" width="350" height=250">
                        <p class="item">${ $(this).find("item").text()}</p>
                        <p class="price">${ $(this).find("price").text()}</p>
                        </div>
                        </div>`);
    });
      }
    });
  });