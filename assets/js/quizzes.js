document.addEventListener("DOMContentLoaded", function () {
  fetch("data/quizzes.json")
    .then((response) => response.json())
    .then((data) => {
      const quizContent = document.getElementById("quiz-content");

      // Loop melalui setiap pertanyaan dalam data JSON
      data.forEach((quiz) => {
        // Membuat elemen untuk pertanyaan
        const questionElement = document.createElement("div");
        questionElement.classList.add("question");
        questionElement.innerHTML = `<h3>${quiz.question}</h3>`;

        // Memeriksa apakah ada gambar atau video untuk ditampilkan
        if (quiz.image) {
          questionElement.innerHTML += `<img src="${quiz.image}" alt="Question Image">`;
        } else if (quiz.video) {
          questionElement.innerHTML += `<video src="${quiz.video}" controls></video>`;
        } else if (quiz.animation) {
          questionElement.innerHTML += `<img src="${quiz.animation}" alt="Question Animation">`;
        }

        // Membuat elemen untuk opsi jawaban
        const optionsElement = document.createElement("ul");
        optionsElement.classList.add("options");

        quiz.options.forEach((option) => {
          const optionElement = document.createElement("li");
          optionElement.textContent = option.text;

          // Menambahkan kelas 'correct' jika jawaban benar
          if (option.correct) {
            optionElement.classList.add("correct");
          }

          optionsElement.appendChild(optionElement);
        });

        questionElement.appendChild(optionsElement);
        quizContent.appendChild(questionElement);
      });
    })
    .catch((error) => {
      console.error("Error fetching quizzes:", error);
    });
});
