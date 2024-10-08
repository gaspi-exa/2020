document.addEventListener("DOMContentLoaded", () => {
  "use strict";

  function setFetchURL() {
    let urlWeb = "http://127.0.0.1/WEB%202/TPE - copia/api/";
    let groupID = "";
    let collectionID = "categories";
    renderCategoryCards(urlWeb, groupID, collectionID);
  }
  setFetchURL();

  function renderCategoryCards(urlWeb, groupID, collectionID) {
    fetch(urlWeb + collectionID + "/" + groupID, {
      method: "GET",
      mode: "cors",
    })
      .then((resp) => resp.json())
      .then((cards) => createCategoryCards(cards))
      .catch((exc) => console.log("Catch exc: " + exc));
  }

  function createCategoryCards(cards) {
    let ticketSection = document.querySelector(".ticketSection");
    ticketSection.innerHTML = "";

    for (let i = 0; i < cards[0].length; i++) {
      let article = document.createElement("article");
      let sectionImg = document.createElement("section");
      let sectionPrice = document.createElement("section");
      let sectionStock = document.createElement("section");
      let h4Name = document.createElement("h4");
      let h4Price = document.createElement("h4");
      let pStock = document.createElement("p");

      article.className = "ticketCardArticle";
      article.setAttribute("data-id", cards[0][i].id_category);

      sectionImg.className = "imgCardSection";
      if (i < 3) sectionImg.className = `card-${i}`;
      else sectionImg.className = "card-3";
      sectionPrice.className = "priceCardSection";
      sectionStock.className = "stockCardSection";

      h4Name.innerHTML = cards[0][i].name.toUpperCase();
      if (cards[0][i].price == 0) h4Price.innerHTML = "Free";
      else h4Price.innerHTML = "$" + cards[0][i].price;

      pStock.innerHTML = "Available: " + cards[1][i];

      ticketSection.appendChild(article);

      article.appendChild(sectionImg);
      article.appendChild(sectionPrice);
      article.appendChild(sectionStock);

      sectionImg.appendChild(h4Name);
      sectionPrice.appendChild(h4Price);
      sectionStock.appendChild(pStock);
    }
  }
});
