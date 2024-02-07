function insertAfter(newelement,afterelement){
    var c = afterelement.parentNode.firstChild;
    while(c){
      alert(c.nodeName);
  if(afterelement.nodeName!=c.nodeName){
    c=c.nextSibling;
  }else{
    newelement.appendChild(newLinkText);
    afterelement.appendChild(newelement);
    alert('insertafter success');
    c=c.nextSibling;
  }
}}