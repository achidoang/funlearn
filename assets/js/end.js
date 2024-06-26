// Add posttest button
const posttestButton = document.createElement("button");
posttestButton.classList.add("btn", "btn-danger", "w-100");
posttestButton.innerText = "Post Test";
posttestButton.onclick = () => startQuiz(0, 10); // 10 questions for posttest
buttonsContainer.appendChild(posttestButton);
