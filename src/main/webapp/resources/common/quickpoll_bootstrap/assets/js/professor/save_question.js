saveQuestion={
		multipleChoice : function(){
				var mul_problem = $('#MultipleChoiceForm').find('input[name="quiz_required"]').val();
				var mul_example1 = $('#MultipleChoiceForm').find('input[name="answer1_required"]').val();
				var mul_example2 = $('#MultipleChoiceForm').find('input[name="answer2_required"]').val();
				var mul_example3 = $('#MultipleChoiceForm').find('input[name="answer3_required"]').val();
				var mul_example4 = $('#MultipleChoiceForm').find('input[name="answer4_required"]').val();
				
				// 뒤에 '번' 잘라서 보내기.
				var mul_answer = $('#MultipleChoiceForm').find('select[name="right_answer_required"] option:checked').text();
				mul_answer = mul_answer.substring(0,1);
				var mul_data = {
						problem : mul_problem,
						example1 : mul_example1,
						example2 : mul_example2,
						example3 : mul_example3,
						example4 : mul_example4,
						answer : mul_answer,
						course_id : "cs"
				}
				$
				.ajax({
					type : "POST",
					url : "insertObjective",
					data : mul_data,
					success : function(data) {
						alert(data);
						//location.href="/testmklist";
					}
				});
//				alert(mul_problem+ " " + mul_answer);
		},
		essayQuestions : function(){
			//생성된만큼 배열에 집어넣기 유사답안은 여러개일 수 있기 때문
			var essay_problem = $('#EssayQuestionsForm').find('textarea[name="essay_questions_required"]').val();
			var correct_answer = $('#EssayQuestionsForm').find('input[name="e_right_answer_required"]').val();
			var length = $('#field').children().length;
			var like_answer = [];
			if(length >0){
				for(var j = 0; j<length;j++){
					like_answer[j]= $('#EssayQuestionsForm').find('input[name="e_like_answer_required'+j+'"]').val();
				}
			}
			
			var result_like_answer = "";
			for(var i in like_answer){
				result_like_answer += like_answer[i]+",";
			}
			var essay_data = {
					course_id : "cs",
					problem :essay_problem,
					answer : correct_answer,
					like_answer : result_like_answer
			}
			alert("ok");
			alert(essay_data.problem+" "+essay_data.answer+" "+length + " "+essay_data.like_answer);
			
			$
			.ajax({
				type : "POST",
				url : "insertSubjective",
				data : essay_data,
				success : function(data) {
					alert(data);
					//location.href="/testmklist";
				}
			});
		},
		OXQuestions : function(){
			var ox_problem = $('#OXQuizForm').find('textarea[name="ox_quiz_required"]').val();
			var ox_answer = $('#OXQuizForm').find('select[name="ox_answer_required"] option:checked').text();
			var ox_data = {
					course_id : "cs",
					problem : ox_problem,
					answer : ox_answer
			}
			$
			.ajax({
				type : "POST",
				url : "insertOxQuestion",
				data : ox_data,
				success : function(data) {
					alert(data);
					//location.href="/testmklist";
				}
			});
			//alert(ox_problem + " " + ox_answer);
		}
}