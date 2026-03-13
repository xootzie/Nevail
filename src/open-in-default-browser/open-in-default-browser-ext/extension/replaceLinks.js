setInterval(changeLinks, 100)
setInterval(removeDownloadButton, 500)

const exclude = new RegExp("NEUTRON_EXCLUDE_REGEX_PATTERN")

function removeDownloadButton() {
  const btn = document.querySelector('[data-list-item-id="guildsnav___app-download-button"]');
  if (btn) {
    let el = btn;
    while (el && !el.classList.toString().includes('listItem')) {
      el = el.parentElement;
    }
    (el || btn).remove();
  }
}

function changeLinks() {
  var links = document.getElementsByTagName("a"); 
  for(var i=0,l=links.length; i<l; i++) {
     loc = links[i].href;
     if ((links[i].href.substring(0, 8) == "https://" || links[i].href.substring(0, 7 == "http://")) && !exclude.test(links[i].href)){
        links[i].href = "open:" + links[i].href;
     }
  }
}
