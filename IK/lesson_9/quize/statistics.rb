class Statistics
    def initialize(writer)
        @correct_answers = 0
        @incorrect_answers = 0
        @writer = writer
    end

    def correct
        @correct_answers += 1
    end

    def incorrect
        @incorrect_answers += 1
    end

    def  print_report
        @writer.write("\n\nRigth: #{@correct_answers}")
        @writer.write("\n\nUnright: #{@incorrect_answers}")
        correct_answer_perc = (@correct_answers / (@correct_answers + @incorrect_answers).to_f) * 100

        @writer.write("\n\nProcent right: #{correct_answer_perc.floor(2)}%\n\n")
    end
end