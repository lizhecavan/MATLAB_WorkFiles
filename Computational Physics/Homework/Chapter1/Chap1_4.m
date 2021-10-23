%第四题
clear
grades = input('请输入成绩（在中括号中输入成绩，成绩之间以逗号隔开）：');
for i = 1:length(grades)
    if grades(i) < 0 || grades(i) >100
        disp('出现错误，输入的成绩必须大于0小于100')
    elseif grades(i) >= 0 && grades(i) <60
        disp([num2str(grades(i)),':成绩不及格'])
    elseif grades(i) >= 60 && grades(i) <= 100
        switch floor(grades(i)/10)
            case 6
                disp([num2str(grades(i)),':成绩及格'])
            case 7
                disp([num2str(grades(i)),':成绩中等'])
            case 8
                disp([num2str(grades(i)),':成绩良好'])
            otherwise
                disp([num2str(grades(i)),':成绩优秀'])
        end  
    end
end