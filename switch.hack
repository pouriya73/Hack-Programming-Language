enum Bank: int {
  DEPOSIT = 1;
  WITHDRAWAL = 2;
  TRANSFER = 3;
}

function processTransaction(Transaction $t): void {
  $trType = ...;     // get the transaction type as an enum value
  switch ($trType) {

  case Bank::TRANSFER:
    ...
    break;
  case Bank::DEPOSIT:
    ...
    break;
  case Bank::WITHDRAWAL:
    ...
    break;
  }
}
