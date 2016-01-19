function x = reviewFeatures(word_indices)
 

% Total number of words in the dictionary
n = 641;

x = zeros(n, 1);
vocabList = getVocabList();

for i=1:n,
	for j=1:length(word_indices),
		if i == word_indices(j)
			x(i,1)=1;
			break;
		end;
	end;
end;
   

end
