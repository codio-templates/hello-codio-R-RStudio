#Checks whether the student's code threw an error

  #create test to ensure no errors are thrown
  test_that("code throws no errors", 
    {
      expect_error()
    }
  )


# compare object in student code to object created by solution code

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

