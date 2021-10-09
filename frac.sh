gcd() {
  if [ $(($1 % $2)) -eq 0 ]; then
    echo $2
  else
    echo $(gcd $2 $(($1 % $2)))
  fi
}

fracadd() {
  num=$((($1[0] * $2[1]) + ($2[0] * $1[1])))
  den=$(($1[1] * $2[1]))
  factor=$(gcd $num $den)
  echo "($(($num / $factor)) $(($den / $factor)))"
}

fracsub() {
  declare -a sub=(-$2[0] $2[1])
  echo $(fracadd $1 sub)
}

fracmul() {
  num=$(($1[0] * $2[0]))
  den=$(($1[1] * $2[1]))
  factor=$(gcd $num $den)
  echo "($(($num / $factor)) $(($den / $factor)))"
}

fracdiv() {
  declare -a inv=($2[1] $2[0])
  echo $(fracmul $1 inv)
}

echo "Fractional Arithmetic Calculator"
while [ true ]; do
  echo "Enter first fraction (numerator and denominator, ctrl+c to quit):"
  read -a arr1
  echo "Enter second fraction (numerator and denominator):"
  read -a arr2
  echo "Enter operation (+,-,*,/):"
  read op

  case $op in
  "+") fracadd arr1 arr2;;
  "-") fracsub arr1 arr2;;
  "*") fracmul arr1 arr2;;
  "/") if [ ${arr2[0]} -ne 0 ]; then fracdiv arr1 arr2; else echo "Cannot divide by 0!"; fi;;
  *) echo "Invalid operator";;
  esac
done
