<?php
// Koneksi ke database
include "connect.php";

// Query untuk mengambil data materi dan quiz
$query = "SELECT m.id, m.title AS materi_title, m.description AS materi_description, 
                 q.question AS quiz_question, q.option1 AS option1, q.option2 AS option2, q.option3 AS option3, q.answer AS correct_answer
          FROM Materi m
          LEFT JOIN Quiz q ON m.id = q.materi_id
          ORDER BY m.id, q.id";

$result = $conn->query($query);

// Array untuk menyimpan hasil query
$data = array();

// Ambil hasil query dan format ke dalam array
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $materi_id = $row['id'];
        $materi_title = $row['materi_title'];
        $materi_description = $row['materi_description'];
        $quiz_question = $row['quiz_question'];
        $option1 = $row['option1'];
        $option2 = $row['option2'];
        $option3 = $row['option3'];
        $correct_answer = $row['correct_answer'];

        // Tambahkan data materi jika belum ada
        if (!isset($data[$materi_id])) {
            $data[$materi_id] = array(
                'id' => $materi_id,
                'title' => $materi_title,
                'description' => $materi_description,
                'quiz' => array()
            );
        }

        // Tambahkan pertanyaan quiz ke dalam array quiz
        $data[$materi_id]['quiz'][] = array(
            'question' => $quiz_question,
            'options' => array(
                $option1,
                $option2,
                $option3
            ),
            'answer' => $correct_answer
        );
    }
}

// Tutup koneksi database
$conn->close();

// Encode data ke dalam JSON dengan JSON_PRETTY_PRINT untuk memudahkan pembacaan
$json_data = json_encode(array_values($data), JSON_PRETTY_PRINT);

// Kirim data JSON ke frontend
header('Content-Type: application/json');
echo $json_data;
?>
