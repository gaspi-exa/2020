document.addEventListener("DOMContentLoaded", () => {
  "use strict";

  function onInitComments() {
    let ticket_id = document.querySelector("#ticket_id").value;
    let url = setFetchURL("comments", ticket_id);
    getComments(url);
  }
  onInitComments();

  function setFetchURL(coll, id) {
    let urlWeb = "http://localhost/TPE/api/";
    let collectionID = coll;
    let groupID = id;
    return urlWeb + collectionID + "/" + groupID;
  }

  function getComments(url) {
    fetch(url, {
      method: "GET",
      mode: "cors",
    })
      .then((resp) => resp.json())
      .then((comments) => renderComments(comments))
      .catch((exc) => console.log("Catch exc GET: " + exc));
  }

  function renderComments(comments) {
    const commentsContainer = document.querySelector("#comment-box-ajax");

    let count = 0;
    for (let ss of comments) {
      count += parseInt(ss.score);
    }
    let prom = toStars(Math.floor(count / comments.length));
    let scorePromSpan = document.createElement("h3");
    scorePromSpan.innerHTML = "Average score: " + prom;
    scorePromSpan.className = "color-primary";
    commentsContainer.appendChild(scorePromSpan);

    for (let i = 0; i < comments.length; i++) {
      let cArticle = document.createElement("article");
      let divName = document.createElement("div");
      let pUserName = document.createElement("p");
      let score = document.createElement("span");
      let descriptionArticle = document.createElement("article");
      let pDescription = document.createElement("p");
      let hr = document.createElement("hr");

      cArticle.className = "comments-article";
      divName.className = "name-comment-box";
      score.className = "score-span";
      score.innerHTML = toStars(comments[i].score);

      commentsContainer.appendChild(cArticle);
      cArticle.appendChild(divName);
      divName.appendChild(pUserName);
      pUserName.innerHTML = "@" + comments[i].user_name;
      divName.appendChild(score);
      cArticle.appendChild(descriptionArticle);
      descriptionArticle.appendChild(pDescription);
      pDescription.innerHTML = comments[i].description;
      cArticle.appendChild(hr);
    }
  }

  function toStars(num) {
    num = parseInt(num);
    switch (num) {
      case 1:
        num = "⭐";
        break;
      case 2:
        num = "⭐⭐";
        break;
      case 3:
        num = "⭐⭐⭐";
        break;
      case 4:
        num = "⭐⭐⭐⭐";
        break;
      case 5:
        num = "⭐⭐⭐⭐⭐";
        break;
      default:
        num = "⭐⭐⭐⭐⭐";
        break;
    }
    return num;
  }
});
