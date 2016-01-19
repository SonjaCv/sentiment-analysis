function word_indices = processReview(review_contents)
 

% Load Vocabulary
vocabList = getVocabList();
word_indices = [];


review_contents = lower(review_contents);
review_contents = regexprep(review_contents, '<[^<>]+>', ' ');

while ~isempty(review_contents)

   
    [str, review_contents] = ...
       strtok(review_contents, ...
              [' @$/#.-:&*+=[]?!(){},''">_<;%' char(10) char(13)]);
   
  
    str = regexprep(str, '[^a-zA-Z0-9]', '');

  
    try str = porterStemmer(strtrim(str)); 
    catch str = ''; continue;
    end;	

	for i=1:length(vocabList),
	if strcmp(str, vocabList{i}) == 1,
	word_indices = [word_indices; i];
	%%fprintf("str=%s,  vocabList{i}=%s\n ", str,vocabList{i});
	end;
	
	end;
   
end




end
