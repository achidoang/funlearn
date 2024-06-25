const question = document.getElementById("question");
const choices = Array.from(document.getElementsByClassName("choice-text"));
const questionCounterText = document.getElementById("questionCounter");
const scoreText = document.getElementById("score");

let currentQuestion = {};
let acceptingAnswers = false;
let score = 0;
let questionCounter = 0;
let availableQuestions = [];

const CORRECT_BONUS = 10;
const MAX_QUESTIONS = 10;

fetch("http://localhost/funlearn/data/getData.php")
  .then((response) => {
    return response.json();
  })
  .then((loadedQuestions) => {
    // Assuming you want to use the first materi's quiz for the game
    questions = loadedQuestions[0].quiz;
    startGame();
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
  if (
    questionCounter >= availableQuestions.length ||
    questionCounter >= MAX_QUESTIONS
  ) {
    //go to the end page
    return window.location.assign("/end.html");
  }

  currentQuestion = availableQuestions[questionCounter];
  questionCounter++;
  questionCounterText.innerText = `${questionCounter}/${MAX_QUESTIONS}`;

  question.innerText = currentQuestion.question;

  choices.forEach((choice, index) => {
    choice.innerText = currentQuestion.options[index];
  });

  acceptingAnswers = true;
};

choices.forEach((choice) => {
  choice.addEventListener("click", (e) => {
    if (!acceptingAnswers) return;

    acceptingAnswers = false;
    const selectedChoice = e.target;
    const selectedAnswer = selectedChoice.innerText;

    const classToApply =
      selectedAnswer === currentQuestion.answer ? "correct" : "incorrect";

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

startGame();
