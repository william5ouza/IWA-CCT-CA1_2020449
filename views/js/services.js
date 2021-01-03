//integer value validation

$('input.bfh-phone').on('input', function() {
this.value = this.value.replace(/[^0-9.]/g,'').replace(/(\d\d\d)(\d\d\d)(\d\d\d\d)/,"($1) $2-$3")
});

// Utility function for getting the parent tag of a given tag
// but only of a certain type (i.e. a TR, a TABLE, etc.)
function getParentTag(oNode, sParentType) {
    var oParent = oNode.parentNode;
    while (oParent) {
        if (oParent.nodeName == sParentType)
            return oParent;
        oParent = oParent.parentNode;
    };
    return oParent;
};

