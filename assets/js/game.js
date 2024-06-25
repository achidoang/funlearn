const question = document.getElementById("question");
const choices = Array.from(document.getElementsByClassName("choice-text"));
const questionCounterText = document.getElementById("questionCounter");
const scoreText = document.getElementById("score");

let currentQuestion = {};
let acceptingAnswers = false;
let score = 0;
let questionCounter = 0;
let availableQuestions = [];
let questions = []; // Definisikan questions secara global

const CORRECT_BONUS = 10;
const MAX_QUESTIONS = 5;

// Ambil materi_id dari URL atau parameter lain sesuai kebutuhan
const urlParams = new URLSearchParams(window.location.search);
const materi_id = urlParams.get("materi_id");

fetch(`../../getData.php`)
  .then((response) => response.json())
  .then((loadedMateri) => {
    const selectedMateri = loadedMateri.find(
      (materi) => materi.id == materi_id
    );
    if (selectedMateri && selectedMateri.quiz) {
      questions = selectedMateri.quiz.map((q) => ({
        question: q.question,
        choice1: q.options[0],
        choice2: q.options[1],
        choice3: q.options[2],
        answer: q.answer,
      }));
      startGame();
    } else {
      console.error("No quiz data found for the selected materi");
    }
  })
  .catch((err) => {
    console.error(err);
  });

startGame = () => {
  questionCounter = 0;
  score = 0;
  availableQuestions = [...questions];
  getNewQuestion();
};

getNewQuestion = () => {
  if (availableQuestions.length === 0 || questionCounter >= MAX_QUESTIONS) {
    //go to the end page
    return window.location.assign("/end.html");
  }
  questionCounter++;
  questionCounterText.innerText = `${questionCounter}/${MAX_QUESTIONS}`;

  const questionIndex = Math.floor(Math.random() * availableQuestions.length);
  currentQuestion = availableQuestions[questionIndex];
  question.innerText = currentQuestion.question;

  choices.forEach((choice) => {
    const number = choice.dataset["number"];
    choice.innerText = currentQuestion["choice" + number];
  });

  availableQuestions.splice(questionIndex, 1);
  acceptingAnswers = true;
};

choices.forEach((choice) => {
  choice.addEventListener("click", (e) => {
    if (!acceptingAnswers) return;

    acceptingAnswers = false;
    const selectedChoice = e.target;
    const selectedAnswer = selectedChoice.dataset["number"];

    const classToApply =
      selectedAnswer == currentQuestion.answer ? "correct" : "incorrect";

    if (classToApply === "correct") {
      incrementScore(CORRECT_BONUS);
    }
    selectedChoice.parentElement.classList.add(classToApply);

    setTimeout(() => {
      selectedChoice.parentElement.classList.remove(classToApply);
      getNewQuestion();
    }, 1000);
  });
});

incrementScore = (num) => {
  score += num;
  scoreText.innerText = score;
};
