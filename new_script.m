%GCE Ordinary Level Examination Grading

%{
    A   75-100      Distinction
    B   65-74.99    Very Good Pass
    C   55-64.99    Credit Pass
    D   40-54.99    Ordinary Pass
    F   0-39.99     Failure
%}

%Prompt user to enter marks
mark = input('Enter mark: ');




function check_grade = check_grade(val,lowest,highest,grade)
    if val >= lowest && val <= highest
         check_grade = grade;
    else
        return
    end
end

function check_grade_loose = check_grade_loose(val,lowest,highest,grade)
    if val >= lowest && val < highest
        check_grade_lowest = grade;
    else
        return
    end
end
