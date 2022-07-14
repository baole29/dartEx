int convertedTemperatureInCelsius(double tempFarenheit){
    return ((tempFarenheit-32)~/1.8).toInt();
  }

void main(){
  
  double tempFarenheit = 86;

  print(tempFarenheit.toInt().toString()+'F = '+convertedTemperatureInCelsius(tempFarenheit).toString()+'C');
}

