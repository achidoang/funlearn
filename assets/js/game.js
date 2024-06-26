let currentQuestionIndex = 0;
let score = 0;
let questions = [];
let currentQuiz = [];
let dataMateri = [];

fetch("data/getData.php")
  .then((response) => response.json())
  .then((data) => {
    dataMateri = data;
    const buttonsContainer = document.getElementById(
      "materi-buttons-container"
    );

    // Generate buttons for each materi
    data.forEach((materi, index) => {
      const button = document.createElement("button");
      button.innerText = materi.title;
      button.onclick = () => displayMateri(materi.id);
      buttonsContainer.appendChild(button);
    });

    // Generate button for posttest
    const posttestButton = document.createElement("button");
    posttestButton.innerText = "Post Test";
    posttestButton.onclick = () => startQuiz(0, 10); // 10 questions for posttest
    buttonsContainer.appendChild(posttestButton);
  })
  .catch((error) => console.error("Error fetching data:", error));

function displayMateri(materiId) {
  const container = document.getElementById("materi-quiz-container");
  container.innerHTML = ""; // Clear previous content

  const materi = dataMateri.find((m) => m.id === materiId);
  if (materi) {
    const materiDiv = document.createElement("div");
    materiDiv.classList.add("materi");
    materiDiv.innerHTML = `
            <h2>${materi.title}</h2>
            ${
              materi.video
                ? `<div class="video-container"><iframe src="${materi.video}" frameborder="0" allowfullscreen></iframe></div>`
                : ""
            }
            <p>${materi.description}</p>
        `;

    if (materi.quiz.length > 0) {
      const quizButton = document.createElement("button");
      quizButton.innerText = "Mulai Quiz";
      quizButton.onclick = () => startQuiz(materi.id, 5); // 5 questions per materi
      materiDiv.appendChild(quizButton);
    }

    container.appendChild(materiDiv);
  }
}

function startQuiz(materiId, numberOfQuestions) {
  currentQuestionIndex = 0;
  score = 0;
  questions = [];

  if (materiId === 0) {
    // Post test, get first 10 questions from the first materi
    questions = dataMateri[0].quiz.slice(0, numberOfQuestions);
  } else {
    const materi = dataMateri.find((m) => m.id === materiId);
    if (materi && materi.quiz.length > 0) {
      questions = materi.quiz.slice(0, numberOfQuestions);
    }
  }

  if (questions.length > 0) {
    displayQuestion();
  }
}

function displayQuestion() {
  const container = document.getElementById("materi-quiz-container");
  container.innerHTML = ""; // Clear previous content

  const question = questions[currentQuestionIndex];
  const questionDiv = document.createElement("div");
  questionDiv.classList.add("quiz");

  if (question.type === "multiple_choice") {
    questionDiv.innerHTML = `
            <p class="question">${question.question}</p>
            <ul class="options">
                ${question.options
                  .map(
                    (option) =>
                      `<li><button onclick="handleAnswer('${option.option}')">${option.option}</button></li>`
                  )
                  .join("")}
            </ul>
        `;
  } else if (question.type === "short_answer") {
    questionDiv.innerHTML = `
            <p class="question">${question.question}</p>
            <input type="text" id="shortAnswer" placeholder="Your answer"/>
            <button onclick="handleAnswer(document.getElementById('shortAnswer').value)">Submit</button>
        `;
  }

  const scoreDiv = document.createElement("div");
  scoreDiv.classList.add("score");
  scoreDiv.innerHTML = `<p>Score: ${score}</p><p>Question: ${
    currentQuestionIndex + 1
  } of ${questions.length}</p>`;

  container.appendChild(scoreDiv);
  container.appendChild(questionDiv);
}

function handleAnswer(userAnswer) {
  const question = questions[currentQuestionIndex];

  if (
    userAnswer.trim().toLowerCase() === question.answer.trim().toLowerCase()
  ) {
    score += 10;
  }

  currentQuestionIndex++;

  if (currentQuestionIndex < questions.length) {
    displayQuestion();
  } else {
    displayResults();
  }
}

function displayResults() {
  const container = document.getElementById("materi-quiz-container");
  container.innerHTML = `<h2>Your final score is: ${score}</h2>`;
}
