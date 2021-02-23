(function(exports){
  function CalculatorController(){
    // add an instance of CalculatorModel to CalculatorController
    this._calculatorModel = new CalculatorModel();
    // add an instance of CalculatorView to CalculatorController
    this._calculatorView = new CalculatorView();
  }

  // add event listeners as below and the corresponding function to be called:
  CalculatorController.prototype.setEventListeners = function(){
    document.getElementById('square-button') // Get an element by Id from the HTML doc
      .addEventListener('click', this.squareNumber.bind(this)); // click is the event 'type', the next arg is the action
    document.getElementById('half-button')
      .addEventListener('click', this.halfNumber.bind(this)); // `this` refers to `CalculatorController`
    document.getElementById('percent-button')
      .addEventListener('click', this.calculatePercent.bind(this));
  }

  // add the functions to be called when events are fired
  CalculatorController.prototype.squareNumber = function(){
    let value = document.getElementById('square-input').value;
    let result = this._calculatorModel.square(value);
    this.displayResult(result);
  }

  CalculatorController.prototype.halfNumber = function(){
    let value = document.getElementById('half-input').value;
    let result = this._calculatorModel.half(value);
    this.displayResult(result);
  }

  CalculatorController.prototype.calculatePercent = function(){
    let fraction = document.getElementById('percent1-input').value;
    let whole = document.getElementById('percent2-input').value;
    let result = this._calculatorModel.calculatePercentage(fraction, whole);
    this.displayResult(result);
  }

  CalculatorController.prototype.displayResult = function(result) {
    document.getElementById('output')
      .innerHTML = this._calculatorView.buildOutput(result);
  }

  exports.CalculatorController = CalculatorController
})(this);
