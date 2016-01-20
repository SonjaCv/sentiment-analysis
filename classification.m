function c = classification()

%fprintf('\nReading reviews from reviewSample.txt\n');
review_contents = readFile('reviewSample.txt');
review_contents = lower(review_contents);

%fprintf('\nLoading Theta1 and Theta2 \n');
Theta1 = loadTheta1();
Theta2 = loadTheta2();

%fprintf('\nFor each sentence in reviewSample.txt\n');


while ~isempty(review_contents)

   
    [str, review_contents] = 
       strtok(review_contents, 
              [ char(10) char(13)]);  
			  
  
    word_indices = processReview(str);
	features = reviewFeatures(word_indices);
	
	pred = predict(Theta1, Theta2, features');
	
	aspect = '';
	polarity = '';

if pred == 1,
	aspect = 'Battery' ;
	polarity = 'Negative';
end;
if pred == 2,
	aspect = 'Battery' ;
	polarity ='Positive';
end;
if pred == 3,
	aspect = 'Memory';
 	polarity = 'Negative';
end;
if pred == 4,
	aspect = 'Memory';
 	polarity = 'Positive';
end;
if pred == 5,
	aspect = 'Performance';
 	polarity = 'Negative';
end;
if pred == 6,
	aspect = 'Performance';
 	polarity ='Positive';
end;
if pred == 7,
	aspect = 'Screen';
	polarity ='Negative';
end;
if pred == 8,
	aspect = 'Screen' ;
	polarity ='Positive';
end;
if pred == 9,
	aspect = 'Size';
 	polarity ='Negative';
end;
if pred == 10,
	aspect = 'Size';
 	polarity ='Positive';
end;

fprintf("Sentence:\n %s \n\n ASPECT: %s \t POLARITY: %s\n", str, aspect, polarity);
fprintf('===============================\n\n');
   
end










end;



