METRIC   = 1;
IMPERIAL = 2;

bmi <- function(mass, height, units) {
  bmi = mass / height^2
  
  if (units == IMPERIAL) {
    bmi = bmi * 703
  }
  
  return (bmi)
}