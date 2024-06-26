let currentQuestionIndex = 0;
let score = 0;
let questions = [];
let currentQuiz = [];
let dataMateri = [];

fetch("data/getData.php")
    .then((response) => response.json())
    .then((data) => {
        dataMateri = data;
        const buttonsContainer = document.getElementById("materi-buttons-container");

        // Generate buttons for each materi
        data.forEach((materi, index) => {
            const button = document.createElement("button");
            button.classList.add("btn", "btn-primary", "m-2");
            button.innerText = materi.title;
            button.onclick = () => displayMateriOptions(materi.id);
            buttonsContainer.appendChild(button);
        });

       
    })
    .catch((error) => console.error("Error fetching data:", error));

function displayMateriOptions(materiId) {
    const container = document.getElementById("materi-quiz-container");
    container.innerHTML = ""; // Clear previous content

    const materi = dataMateri.find((m) => m.id === materiId);
    if (materi) {
        const materiDiv = document.createElement("div");
        materiDiv.classList.add("materi", "border", "p-3", "mb-3");
        materiDiv.innerHTML = `
            <h2>${materi.title}</h2>
            <p>${materi.description}</p>
        `;

        // Create buttons for video and quiz
        if (materi.video) {
            const videoButton = document.createElement("button");
            videoButton.classList.add("btn", "btn-secondary", "m-2");
            videoButton.innerText = "Nonton Video";
            videoButton.onclick = () => displayVideo(materiId);
            materiDiv.appendChild(videoButton);
        }

        const quizButton = document.createElement("button");
        quizButton.classList.add("btn", "btn-warning", "m-2");
        quizButton.innerText = "Kerjakan Kuiz";
        quizButton.onclick = () => startQuiz(materiId, 5); // 5 questions per materi
        materiDiv.appendChild(quizButton);

        const backButton = document.createElement("button");
        backButton.classList.add("btn", "btn-secondary", "m-2");
        backButton.innerText = "Back";
        backButton.onclick = () => displayMateriButtons(); // Function to display materi buttons again
        materiDiv.appendChild(backButton);

        container.appendChild(materiDiv);
    }
}

function displayMateriButtons() {
    const container = document.getElementById("materi-quiz-container");
    container.innerHTML = ""; // Clear previous content

    const buttonsContainer = document.getElementById("materi-buttons-container");
    buttonsContainer.innerHTML = ""; // Clear previous buttons

    // Filter and sort dataMateri
    const sortedMateri = dataMateri.slice().sort((a, b) => {
        // Sort by materi_id, move id 0 to the end
        if (a.id === 0) return 1; // Move id 0 to the end
        if (b.id === 0) return -1; // Move id 0 to the end
        return a.id - b.id; // Sort by materi_id ascending for others
    });

    // Display buttons for each materi
    sortedMateri.forEach((materi) => {
        const button = document.createElement("button");
        button.classList.add("btn", "btn-primary", "m-2");
        button.innerText = materi.title;
        button.onclick = () => displayMateriOptions(materi.id);
        buttonsContainer.appendChild(button);
    });

    // Generate button for posttest (assuming it should be after all other materi)
    const posttestButton = document.createElement("button");
    posttestButton.classList.add("btn", "btn-danger", "m-2");
    posttestButton.innerText = "Post Test";
    posttestButton.onclick = () => startQuiz(0, 10); // 10 questions for posttest
    buttonsContainer.appendChild(posttestButton);
}

function displayVideo(materiId) {
    const container = document.getElementById("materi-quiz-container");
    container.innerHTML = ""; // Clear previous content

    const materi = dataMateri.find((m) => m.id === materiId);
    if (materi && materi.video) {
        const videoDiv = document.createElement("div");
        videoDiv.classList.add("video-container");
        videoDiv.innerHTML = `<iframe src="${materi.video}" frameborder="0" allowfullscreen></iframe>`;

        const backButton = document.createElement("button");
        backButton.classList.add("btn", "btn-secondary", "m-2");
        backButton.innerText = "Back";
        backButton.onclick = () => displayMateriOptions(materiId); // Function to display materi options again

        container.appendChild(videoDiv);
        container.appendChild(backButton);
    } else {
        container.innerHTML = "<p>Video tidak tersedia.</p>";
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
    questionDiv.classList.add("quiz", "border-top", "pt-3");

    if (question.type === "multiple_choice") {
        questionDiv.innerHTML = `
            <p class="question font-weight-bold">${question.question}</p>
            <ul class="options list-unstyled">
                ${question.options
                  .map(
                    (option) =>
                      `<li class="my-2"><button class="btn btn-outline-primary" onclick="handleAnswer('${option.option}')">${option.option}</button></li>`
                  )
                  .join("")}
            </ul>
        `;
    } else if (question.type === "short_answer") {
        questionDiv.innerHTML = `
            <p class="question font-weight-bold">${question.question}</p>
            <input type="text" id="shortAnswer" class="form-control mb-2" placeholder="Your answer"/>
            <button class="btn btn-primary" onclick="handleAnswer(document.getElementById('shortAnswer').value)">Submit</button>
        `;
    }

    const scoreDiv = document.createElement("div");
    scoreDiv.classList.add("score", "mt-3");
    scoreDiv.innerHTML = `<p>Score: ${score}</p><p>Question: ${currentQuestionIndex + 1} of ${questions.length}</p>`;

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

    const backButton = document.createElement("button");
    backButton.classList.add("btn", "btn-secondary", "m-2");
    backButton.innerText = "Back to Materi List";
    backButton.onclick = () => displayMateriButtons(); // Function to display materi buttons again

    container.appendChild(backButton);
}
