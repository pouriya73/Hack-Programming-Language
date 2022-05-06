class Counter {
  private int $i = 0;

  public function increment(): void {
    $this->i += 1;
  }

  public function get(): int {
    return $this->i;
  }
}
