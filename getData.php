<?php
include "connect.php";

$sql = "SELECT m.id AS materi_id, m.title AS materi_title, m.description AS materi_description, m.video_url AS materi_video, 
               q.id AS quiz_id, q.question AS quiz_question, q.type AS quiz_type, q.options AS quiz_options, q.answer AS quiz_answer
        FROM Materi m
        LEFT JOIN Quiz q ON m.id = q.materi_id
        ORDER BY m.id, q.id";

$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $data = array();
    $currentMateriId = null;
    $materi = null;

    while ($row = $result->fetch_assoc()) {
        if ($row['materi_id'] !== $currentMateriId) {
            if ($materi !== null) {
                $data[] = $materi;
            }
            $currentMateriId = $row['materi_id'];
            $materi = array(
                'id' => $row['materi_id'],
                'title' => $row['materi_title'],
                'description' => $row['materi_description'],
                'video' => $row['materi_video'],
                'quiz' => array()
            );
        }

        if ($row['quiz_id'] !== null) {
            $quizItem = array(
                'id' => $row['quiz_id'],
                'question' => $row['quiz_question'],
                'type' => $row['quiz_type'],
                'options' => json_decode($row['quiz_options'], true),
                'answer' => $row['quiz_answer']
            );
            $materi['quiz'][] = $quizItem;
        }
    }
    if ($materi !== null) {
        $data[] = $materi;
    }

    header('Content-Type: application/json');
    echo json_encode($data, JSON_PRETTY_PRINT);
} else {
    echo json_encode(array('message' => 'No results found'));
}
$conn->close();
?>
