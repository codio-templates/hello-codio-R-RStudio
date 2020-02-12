#Original code: test_error()
#Description: Checks whether the student's code threw an error

  #create test to ensure no errors are thrown
  test_that("code throws no errors", 
    {
      expect_error()
    }
  )


#Original code: test_function("ifelse")
#Description:Check whether a student called a function


#Original code: test_object("new_names", undefined_msg = "Make sure you define new_names!", incorrect_msg = "It has to be one line of code. Combine nchar and ifelse. The objects being used inside the function should be `murders$state` and `murders$abb`. Also we are looking for `nchar(murders$state)` strictly larger than 8.")
#Description: compare object in student code to object created by solution code

  #create test to validate new_names object
  test_that("new_names is defined and has correct value", 
    {
        #checking whether student defined object
        expect_failure(expect_null(new_names, label="Make sure you define new_names!"))
        #solution code
        new_names_2 <- ifelse(nchar(murders$state)>8, murders$abb, murders$state)
        #checking student object against solution code object
        expect_equivalent(new_names, new_names_2, label = "It has to be one line of code. Combine nchar and ifelse. The objects being used inside the function should be `murders$state` and `murders$abb`. Also we are looking for `nchar(murders$state)` strictly larger than 8.")
    }
  )

#Original code: success_msg("Woohoo! You're becoming a pro at this!")
#Description: Output when student get's all tests passed

  #Note: I am not implementing this right now - we can add a way to pass to "testRunner.sh" if this is important to you