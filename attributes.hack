<<__ConsistentConstruct>>
class OtherClass {
  <<__Memoize, __Deprecated("Use FooClass methods instead")>>
  public function addOne(int $x): int {
    return $x + 1;
  }
}

class Contributors implements HH\ClassAttribute {
  public function __construct(private string $author, private ?keyset<string> $maintainers = null) {}
  public function getAuthor(): string {
    return $this->author;
  }
  public function getMaintainers(): keyset<string> {
    return $this->maintainers ?? keyset[$this->author];
  }
}

<<Contributors("John Doe", keyset["ORM Team", "Core Library Team"])>>
class MyClass {}

<<Contributors("You")>>
class YourClass {}
    
