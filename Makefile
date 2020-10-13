#!/usr/bin/env make

# First, I create an html file called finaldoc.html and its dependency that is project.md.
finaldoc.html: project.md
	pandoc project.md -s --mathjax -f markdown+tex_math_dollars -t html5 -o finaldoc.html -c style.css 

# Second, I create another target-dependency structure and save the final output. 
project.md: preamble.txt litReviewtoapproach.txt resultstoconclusion.txt
	 cat preamble.txt litReviewtoapproach.txt resultstoconclusion.txt > project.md

litReviewtoapproach.txt: litReview.txt approach.txt
	cat litReview.txt approach.txt > litReviewtoapproach.txt

resultstoconclusion.txt: results.txt conclusion.txt
	 cat results.txt conclusion.txt > resultstoconclusion.txt 

# Then, I clean the files I created.
.PHONY: clean
clean:
	rm -f project.md
	rm -f litReviewtoapproach.txt 
	rm -f resultstoconclusion.txt
