// Inisialisasi variabel
let currentQuestionIndex = 0; // Menyimpan indeks pertanyaan saat ini
let score = 0; // Menyimpan skor pengguna
let questions = []; // Array untuk menyimpan pertanyaan-pertanyaan
let dataMateri = []; // Array untuk menyimpan data materi

// Fungsi untuk membuat tombol dengan gaya Bootstrap dan gambar untuk setiap materi
function createMateriButton(materi) {
  const colDiv = document.createElement("div"); // Membuat elemen div
  colDiv.classList.add("col-md-4", "mb-4"); // Menambahkan kelas grid Bootstrap

  const button = document.createElement("button"); // Membuat elemen tombol
  button.classList.add("btn", "btn-primary", "w-100"); // Menambahkan kelas tombol Bootstrap

  const image = document.createElement("img"); // Membuat elemen gambar
  image.src = `assets/images/gambar${materi.id}.png`; // Mengatur sumber gambar berdasarkan id materi
  image.alt = materi.title; // Menambahkan teks alternatif untuk aksesibilitas
  image.classList.add("img-fluid", "mb-2"); // Menambahkan kelas Bootstrap untuk gambar

  const title = document.createElement("h4"); // Membuat elemen paragraf
  title.classList.add("text-center", "mb-0"); // Menambahkan kelas Bootstrap
  title.innerText = materi.title; // Menambahkan judul materi

  button.appendChild(image); // Menambahkan gambar ke tombol
  button.appendChild(title); // Menambahkan judul ke tombol

  button.onclick = () => displayMateriOptions(materi.id); // Menambahkan fungsi klik untuk menampilkan opsi materi

  colDiv.appendChild(button); // Menambahkan tombol ke dalam div kolom

  return colDiv; // Mengembalikan div kolom
}

// Mengambil data dari server dan membuat tombol-tombol materi
fetch("data/getData.php")
  .then((response) => response.json()) // Mengubah respon menjadi JSON
  .then((data) => {
    dataMateri = data; // Menyimpan data ke dalam variabel dataMateri
    const buttonsContainer = document.getElementById(
      "materi-buttons-container"
    ); // Mendapatkan elemen kontainer tombol

    data.forEach((materi, index) => {
      const colDiv = createMateriButton(materi); // Membuat tombol untuk setiap materi
      buttonsContainer.appendChild(colDiv); // Menambahkan tombol ke dalam kontainer
    });
  })
  .catch((error) => console.error("Error fetching data:", error)); // Menangani kesalahan saat mengambil data

// Fungsi untuk menampilkan opsi materi
function displayMateriOptions(materiId) {
  const container = document.getElementById("materi-quiz-container");
  container.innerHTML = ""; // Menghapus konten sebelumnya

  // Menambahkan kelas full-screen dan sentrisasi
  container.classList.add(
    "full-screen",
    "d-flex",
    "justify-content-center",
    "align-items-center"
  );

  const materi = dataMateri.find((m) => m.id === materiId); // Menemukan materi berdasarkan id
  if (materi) {
    const materiDiv = document.createElement("div");
    materiDiv.classList.add("materi", "border", "p-3", "mb-3", "text-center"); // Menambahkan kelas Bootstrap

    materiDiv.style.maxWidth = "60%"; // Memuatkan lebar maksimal untuk teks materi
    materiDiv.style.marginLeft = "auto"; // Membuat perataan tepi kiri
    materiDiv.style.marginRight = "auto"; // Membuat perataan tepi kanan

    materiDiv.innerHTML = `
      <h2>${materi.title}</h2>
      <p>${materi.description}</p>
    `;

    if (materi.video) {
      const videoButton = createButton("Nonton Video", "btn-info", () =>
        displayVideo(materiId)
      );
      materiDiv.appendChild(videoButton);
    }

    const quizButton = createButton("Kerjakan Kuiz", "btn-warning", () =>
      startQuiz(materiId, 5)
    );
    materiDiv.appendChild(quizButton);

    const backButton = createButton("Back", "btn-outline-danger", () => {
      container.classList.remove("full-screen");
      displayMateriButtons();
    });
    materiDiv.appendChild(backButton);

    container.appendChild(materiDiv);
  }
}

// Fungsi utilitas untuk membuat tombol dengan kelas dan fungsi klik
function createButton(text, className, onClickHandler) {
  const button = document.createElement("button");
  button.innerText = text;
  button.classList.add("btn", className, "m-2");
  button.onclick = onClickHandler;
  return button;
}

// Fungsi utilitas untuk membuat tombol dengan kelas dan fungsi klik
function createButton(text, className, onClickHandler) {
  const button = document.createElement("button");
  button.innerText = text;
  button.classList.add("btn", className, "m-2");
  button.onclick = onClickHandler;
  return button;
}

// Fungsi untuk menampilkan tombol-tombol materi
function displayMateriButtons() {
  const container = document.getElementById("materi-quiz-container"); // Mendapatkan elemen kontainer kuis
  container.innerHTML = ""; // Menghapus konten sebelumnya

  const buttonsContainer = document.getElementById("materi-buttons-container"); // Mendapatkan elemen kontainer tombol
  buttonsContainer.innerHTML = ""; // Menghapus tombol-tombol sebelumnya

  // Menyortir dan memfilter dataMateri
  const sortedMateri = dataMateri.slice().sort((a, b) => {
    // Menyortir berdasarkan materi_id, memindahkan id 0 ke akhir
    if (a.id === 0) return 1; // Memindahkan id 0 ke akhir
    if (b.id === 0) return -1; // Memindahkan id 0 ke akhir
    return a.id - b.id; // Menyortir berdasarkan materi_id secara ascending untuk lainnya
  });

  // Menampilkan tombol untuk setiap materi dalam grid (3 kolom)
  sortedMateri.forEach((materi) => {
    const colDiv = createMateriButton(materi); // Membuat tombol untuk setiap materi
    buttonsContainer.appendChild(colDiv); // Menambahkan tombol ke dalam kontainer
  });
}

// Fungsi untuk menampilkan video materi
function displayVideo(materiId) {
  const container = document.getElementById("materi-quiz-container"); // Mendapatkan elemen kontainer kuis
  container.innerHTML = ""; // Menghapus konten sebelumnya

  const materi = dataMateri.find((m) => m.id === materiId); // Menemukan materi berdasarkan id
  if (materi && materi.video) {
    const videoDiv = document.createElement("div"); // Membuat elemen div untuk video
    videoDiv.classList.add("embed-responsive", "embed-responsive-16by9"); // Menambahkan kelas Bootstrap
    videoDiv.innerHTML = `<iframe class="embed-responsive-item" src="${materi.video}" allowfullscreen></iframe>`;

    const backButton = document.createElement("button");
    backButton.classList.add("btn", "btn-secondary", "m-2"); // Menambahkan kelas tombol Bootstrap
    backButton.innerText = "Back"; // Menambahkan teks tombol
    backButton.onclick = () => displayMateriOptions(materiId); // Menambahkan fungsi klik untuk kembali ke opsi materi

    container.appendChild(videoDiv); // Menambahkan div video ke kontainer
    container.appendChild(backButton); // Menambahkan tombol kembali ke kontainer
  } else {
    container.innerHTML = "<p>Video tidak tersedia.</p>"; // Menampilkan pesan jika video tidak tersedia
  }
}

// Fungsi untuk memulai kuis
function startQuiz(materiId, numberOfQuestions) {
  currentQuestionIndex = 0; // Mengatur indeks pertanyaan saat ini ke 0
  score = 0; // Mengatur skor ke 0
  questions = []; // Mengosongkan array pertanyaan

  if (materiId === 0) {
    // Post test, mengambil 10 pertanyaan pertama dari materi pertama
    questions = dataMateri[0].quiz.slice(0, numberOfQuestions);
  } else {
    const materi = dataMateri.find((m) => m.id === materiId); // Menemukan materi berdasarkan id
    if (materi && materi.quiz.length > 0) {
      questions = materi.quiz.slice(0, numberOfQuestions); // Mengambil sejumlah pertanyaan dari materi
    }
  }

  if (questions.length > 0) {
    displayQuestion(); // Menampilkan pertanyaan pertama jika ada pertanyaan
  }
}

// Fungsi untuk menampilkan pertanyaan
function displayQuestion() {
  const container = document.getElementById("materi-quiz-container"); // Mendapatkan elemen kontainer kuis
  container.innerHTML = ""; // Menghapus konten sebelumnya

  // Menambahkan kelas Bootstrap untuk sentrisasi penuh
  container.classList.add(
    "d-flex",
    "flex-column",
    "justify-content-center",
    "align-items-center",
    "vh-100"
  );

  const question = questions[currentQuestionIndex]; // Mengambil pertanyaan saat ini
  const questionDiv = document.createElement("div"); // Membuat elemen div untuk pertanyaan
  questionDiv.classList.add("quiz", "border-top", "pt-3", "text-center"); // Menambahkan kelas Bootstrap

  if (question.type === "multiple_choice") {
    questionDiv.innerHTML = `
            <p class="question font-weight-bold">${question.question}</p>
            <ul class="options list-unstyled d-flex flex-column align-items-center">
                ${question.options
                  .map(
                    (option) =>
                      `<li class="my-2"><button class="btn btn-outline-primary" style="width: 200px;" onclick="handleAnswer('${option.option}')">${option.option}</button></li>`
                  )
                  .join("")}
            </ul>
        `;
  } else if (question.type === "short_answer") {
    questionDiv.innerHTML = `
            <p class="question font-weight-bold">${question.question}</p>
            <input type="text" id="shortAnswer" class="form-control mb-2 text-center" style="max-width: 300px;" placeholder="Your answer"/>
            <button class="btn btn-primary" onclick="handleAnswer(document.getElementById('shortAnswer').value)">Submit</button>
        `;
  }

  const scoreDiv = document.createElement("div"); // Membuat elemen div untuk skor
  scoreDiv.classList.add("score", "mt-3", "text-center"); // Menambahkan kelas Bootstrap
  scoreDiv.innerHTML = `<p>Score: ${score}</p><p>Question: ${
    currentQuestionIndex + 1
  } of ${questions.length}</p>`;

  container.appendChild(scoreDiv); // Menambahkan div skor ke kontainer
  container.appendChild(questionDiv); // Menambahkan div pertanyaan ke kontainer
}

// Fungsi untuk menangani jawaban pengguna
function handleAnswer(userAnswer) {
  const question = questions[currentQuestionIndex]; // Mengambil pertanyaan saat ini

  if (
    userAnswer.trim().toLowerCase() === question.answer.trim().toLowerCase()
  ) {
    score += 10; // Menambah skor jika jawaban benar
  }

  currentQuestionIndex++; // Menambah indeks pertanyaan

  if (currentQuestionIndex < questions.length) {
    displayQuestion(); // Menampilkan pertanyaan berikutnya jika masih ada
  } else {
    displayResults(); // Menampilkan hasil jika tidak ada lagi pertanyaan
  }
}

// Fungsi untuk menampilkan hasil kuis
function displayResults() {
  const container = document.getElementById("materi-quiz-container"); // Mendapatkan elemen kontainer kuis
  container.innerHTML = `<h2>Your final score is: ${score}</h2>`; // Menampilkan skor akhir

  const backButton = document.createElement("button");
  backButton.classList.add("btn", "btn-secondary", "m-2"); // Menambahkan kelas tombol Bootstrap
  backButton.innerText = "Back to Materi List"; // Menambahkan teks tombol
  backButton.onclick = () => {
    container.classList.remove("full-screen"); // Menghapus kelas full-screen saat kembali ke daftar materi
    displayMateriButtons();
  }; // Menambahkan fungsi klik untuk kembali ke daftar materi

  container.appendChild(backButton); // Menambahkan tombol kembali ke kontainer
}

// Fungsi untuk memutar atau menghentikan audio
function toggleAudio() {
  var audio = document.getElementById("backsound");
  var button = document.getElementById("toggleAudioButton");

  if (audio.paused) {
    audio.play();
    button.innerText = "Pause Backsound";
    button.classList.remove("btn-primary");
    button.classList.add("btn-warning");
  } else {
    audio.pause();
    button.innerText = "Play Backsound";
    button.classList.remove("btn-warning");
    button.classList.add("btn-primary");
  }
}
