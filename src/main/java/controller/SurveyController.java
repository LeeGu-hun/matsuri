package controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import survey.AnsweredData;
import survey.Question;

@Controller
@RequestMapping("/survey")
public class SurveyController {
	@RequestMapping(method = RequestMethod.GET)
	public String form(Model model) {
		List<Question> questions = createQuestions();
		model.addAttribute("questions", questions);
		List<String> favLanguage = new ArrayList<String>();
		favLanguage.add("Java");
		favLanguage.add("C++");
		favLanguage.add(".Net");
		model.addAttribute("favLanguage",favLanguage);
		return "survey/surveyForm";
	}

	// @RequestMapping(method = RequestMethod.GET)
	// public ModelAndView form() {
	// List<Question> questions = createQuestions();
	// ModelAndView mav = new ModelAndView();
	// mav.addObject("questions", questions);
	// mav.setViewName("survey/surveyForm");
	// return mav;
	// }

	private List<Question> createQuestions() {
		Question q1 = new Question("당신의 역할은 무엇입니까?",
				Arrays.asList("서버", "프론트", "풀스택"));
		Question q2 = new Question("많이 사용하는 개발도구는 무엇입니까?",
				Arrays.asList("이클립스", "인텔리J", "서브라임"));
		Question q3 = new Question("하고 싶은 말을 적어주세요.");
//		Question q4 = new Question("많이 사용하는 언어는 무엇입니까?",
//				Arrays.asList("Java", "C++", ".Net"));
//		return Arrays.asList(q1, q2, q3, q4);
		return Arrays.asList(q1, q2, q3);
	}

	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView submit(
		@ModelAttribute("ansData") AnsweredData data,
		@RequestParam(value="favLanguage") 
		String[] favLanguage) {
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("favLanguage", favLanguage);
		mav.setViewName("survey/submitted");
		return mav;
	}
}
