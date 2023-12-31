package com.telusko.quizservice.controller;

import lombok.Data;

@Data
public class QuizDTO {
    String category;
    Integer numQuestions;
    String title;
}
