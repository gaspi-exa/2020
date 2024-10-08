document.addEventListener("DOMContentLoaded", () => {
  "use strict";

  function onInitComments() {
    let ticket_id = document.querySelector("#ticket_id").value;
    let url = setFetchURL("comments", ticket_id);
    getComments(url);
    const submitButton = document.querySelector("#comment-submit-btn");
    submitButton.addEventListener("click", submitComment);
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
      .then((comments) => {
        renderComments(comments);
        let buttons = document.querySelectorAll(".btn-delete");
        for (let btn of buttons) {
          btn.addEventListener("click", () => {
            deleteComment(btn);
          });
        }
      })
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
      let btnDeleteComment = document.createElement("button");
      let score = document.createElement("span");
      let descriptionArticle = document.createElement("article");
      let pDescription = document.createElement("p");
      let hr = document.createElement("hr");

      cArticle.className = "comments-article";
      btnDeleteComment.innerHTML = '<i class="far fa-trash-alt"></i>';
      btnDeleteComment.className = "btn-delete color-primary";
      btnDeleteComment.setAttribute("data-id", comments[i].comment_id);
      divName.className = "name-comment-box";
      score.className = "score-span";
      score.innerHTML = toStars(comments[i].score);

      commentsContainer.appendChild(cArticle);
      cArticle.appendChild(btnDeleteComment);
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

  function submitComment(e) {
    e.preventDefault();
    let url = setFetchURL("post-comment", "");
    let description = document.querySelector("#comment-inp").value;
    let ticket_id = document.querySelector("#ticket_id").value;
    let user_id = document.querySelector("#user_id").value;
    let score = document.querySelector("#score-select").value;
    let user_name = document.querySelector("#user_name").value;
    postComment(url, description, ticket_id, user_id, score, user_name);
    document.querySelector(".comment-form").reset();
  }

  function postComment(url, description, ticket_id, user_id, score, user_name) {
    let data = {
      description: description,
      ticket_id: ticket_id,
      user_id: user_id,
      score: score,
      user_name: user_name,
    };
    fetch(url, {
      method: "POST",
      mode: "no-cors",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(data),
    }).then((resp) => renderAction());
  }

  function deleteComment(btn) {
    let comment_id = btn.dataset.id;
    let url = setFetchURL("delete-comment", comment_id);
    fetch(url, {
      method: "DELETE",
      mode: "cors",
      headers: { "Content-Type": "application/json" },
    }).then((resp) => renderAction());
  }

  function renderAction() {
    document.querySelector("#comment-box-ajax").innerHTML = "";
    let ticket_id = document.querySelector("#ticket_id").value;
    getComments("http://localhost/TPE/api/comments/" + ticket_id);
  }
});
