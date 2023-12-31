package com.telusko.questionservice.service;


import com.telusko.questionservice.dao.QuestionDAO;
import com.telusko.questionservice.model.QuestionWrapper;
import com.telusko.questionservice.model.Questions;
import com.telusko.questionservice.model.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class QuestionService {


    @Autowired
    QuestionDAO questionDAO;
    public ResponseEntity<List<Questions>> getAllQuestions(){
        try {
            return new ResponseEntity<>(questionDAO.findAll(), HttpStatus.OK);
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return new ResponseEntity<>(new ArrayList<>(), HttpStatus.BAD_REQUEST);
    }

    public ResponseEntity<List<Questions>> getQuestionsByCategory(String category){
        try{
        return new ResponseEntity<>(questionDAO.findByCategory(category), HttpStatus.OK);
    }
        catch (Exception e){
        e.printStackTrace();
    }
        return new ResponseEntity<>(new ArrayList<>(), HttpStatus.BAD_REQUEST);
    }

    public ResponseEntity<String> addQuestion(Questions questions) {
        questionDAO.save(questions);
        return new ResponseEntity<>("success", HttpStatus.CREATED);
    }

    public ResponseEntity<List<Integer>> getQuestionsForQuiz(String category, Integer numQuestions) {
        List<Integer> questions = questionDAO.findRandomQuestionsByCategory(category, numQuestions);
        return new ResponseEntity<>(questions, HttpStatus.OK);
    }

    public ResponseEntity<List<QuestionWrapper>> getQuestionsFromId(List<Integer> questionIds) {
        List<QuestionWrapper> wrappers = new ArrayList<>();
        List<Questions> questions = new ArrayList<>();

        for(Integer id: questionIds){
            questions.add(questionDAO.findById(id).get());
        }

        for(Questions questions1 : questions){
            QuestionWrapper wrapper = new QuestionWrapper();
            wrapper.setId(questions1.getId());
            wrapper.setQuestion(questions1.getQuestion());
            wrapper.setOption1(questions1.getOption1());
            wrapper.setOption2(questions1.getOption2());
            wrapper.setOption3(questions1.getOption3());
            wrapper.setOption4(questions1.getOption4());
            wrappers.add(wrapper);
        }


        return new ResponseEntity<>(wrappers, HttpStatus.OK);
    }

    public ResponseEntity<Integer> getScore(List<Response> responses) {

        int right = 0;

        for(Response response : responses){
            Questions questions = questionDAO.findById(response.getId()).get();
            if(response.getResponse().equals(questions.getAnswer()))
                right ++;
        }
        return new ResponseEntity<>(right, HttpStatus.OK);
    }
}
