shinyUI(
  pageWithSidebar(
    # Application Title
    headerPanel("Evaluate a Quadratic Expression"),
    
    
    sidebarPanel(
      h3('User Instructions:'),
      h4('This app evaluates a quad. ploynomial: A*x^2 + B*x + C'),
      h4('The user provides input coefficients, A, B and C and x:'),
      numericInput('x', 'x value', 0, min = 1, max = 100, step = 5),
      submitButton('Submit'),
      numericInput('A', 'A: coeficient of x^2', 1, min = 0, max = 100, step = 5),
      submitButton('Submit'),
      numericInput('B', 'B: coeficient of x', 1, min = 0, max = 100, step = 5),
      submitButton('Submit'),
      numericInput('C', 'C: constant term', 1, min = 0, max = 100, step = 5),
      submitButton('Submit')
      
      ),
    mainPanel(
      h3('You entered x:'),
      ##verbatimTextOutput("inputValue"),
      h4('The quadratic expression  evaluated to:'),
      verbatimTextOutput("y")
      
      )
    
    )
  
  )