<details>
<summary>Python Topics</summary>

### Python Topics
## 🧱 Phase 1 – Python Core (Execution & Memory)

* Python Execution Flow → How Python reads, compiles, and executes code.
* Functions → Creating, calling, passing, and returning functions.
* Mutable vs Immutable → Objects that can or cannot be modified after creation.
* List vs Tuple vs Set vs Dict → Python's core collection data structures.
* Memory Management → Object creation, references, stack, and heap memory.
* Garbage Collection → Automatic removal of unused objects from memory.
* Shallow vs Deep Copy → Copying references vs creating independent objects.

---

## 🚀 Phase 2 – Advanced Python

* Iterators → Objects that return one item at a time using `__iter__()` and `__next__()`.
* Generators → Memory-efficient iterators created using `yield`.
* Closures → Inner functions that remember variables from their enclosing scope.
* Decorators → Functions that extend another function's behavior without modifying it.
* Context Managers → Resource management using `with`, `__enter__()`, and `__exit__()`.

---

## ⚡ Phase 3 – Concurrency

* Multithreading → Running multiple threads within the same process.
* GIL → Global Interpreter Lock that allows only one Python thread to execute bytecode at a time.
* Multiprocessing → Running multiple independent processes for true parallelism.
* Async vs Sync → Non-blocking execution vs sequential blocking execution.
* `async` / `await` → Python syntax for asynchronous programming using coroutines.

---

## 🏗️ Phase 4 – OOP & Design

* Composition vs Inheritance → "Has-a" relationship vs "Is-a" relationship.
* Multiple Inheritance → A class inheriting from more than one parent class.
* MRO (Method Resolution Order) → The order Python follows to search methods in inheritance.
* `super()` → Calls methods or constructors of the parent class.
* SOLID Principles → Five object-oriented design principles for maintainable software.
* Factory Pattern & Strategy Pattern → Design patterns for object creation and interchangeable behaviors.
* Dependency Injection (DI) & IoC → Supplying dependencies externally to reduce coupling and improve testability.

</details>

>
#### List comprehension
| Problem | Normal Loop Version | List Comprehension Version |
|---------|----------------------|----------------------------|
| **Square Numbers** | ``` result = []; for x in arr: result.append(x ** 2) ``` | ``` result = [x ** 2 for x in arr] ``` |
| **Even Numbers** | ``` result = []; for x in arr: if x % 2 == 0: result.append(x) ``` | ``` result = [x for x in arr if x % 2 == 0] ``` |
| **Uppercase Names** | ``` result = []; for x in names: result.append(x.upper()) ``` | ``` result = [x.upper() for x in names] ``` |
| **Add 10** | ``` result = []; for x in arr: result.append(x + 10) ``` | ``` result = [x + 10 for x in arr] ``` |
| **String to List** | ``` result = []; for ch in s: result.append(ch) ``` | ``` result = [ch for ch in s] ``` |

<details>
<summary>Decorators</summary>

# Decorator

## Definition

> **A decorator is a design pattern in Python that allows us to extend or modify the behavior of a function or class without changing its original source code. It is built on first-class functions, higher-order functions, nested functions, and closures. Decorators are commonly used for authentication, authorization, logging, caching, timing, retries, validation, and database transactions.**

---

## Real-Life Example (Social Media)

```python
from functools import wraps

is_logged_in = True

def login_required(func):

    @wraps(func)
    def wrapper(*args, **kwargs):

        if not is_logged_in:
            print("Please login first")
            return

        print("Login Verified")
        return func(*args, **kwargs)

    return wrapper


@login_required
def upload_post():
    print("Post uploaded successfully")


upload_post()
```

### Output

```text
Login Verified
Post uploaded successfully
```


</details>


<details>
<summary>Global Interpreter Lock</summary>

# GIL (Global Interpreter Lock)

## Definition

> **The Global Interpreter Lock (GIL) is a mutex in CPython that allows only one thread to execute Python bytecode at a time within a single process. It simplifies memory management and prevents race conditions on Python objects. Multithreading is therefore suitable for I/O-bound tasks, while multiprocessing is preferred for CPU-bound tasks.**

---

## Real-Life Example (Social Media)

```python
import threading

def upload_post(user):
    print(f"{user} uploaded a post")


t1 = threading.Thread(target=upload_post, args=("Alice",))
t2 = threading.Thread(target=upload_post, args=("Bob",))

t1.start()
t2.start()

t1.join()
t2.join()

print("All posts uploaded.")
```

### Possible Output

```text
Alice uploaded a post
Bob uploaded a post
All posts uploaded.
```


</details>


<details>
<summary>shortcut rev code</summary>

| #  | Problem              | Status | Core Shortcut                         | Loop / Condition Flow Memory                            | Key Logic Memory                                        | Approach Type              |
|----|----------------------|--------|---------------------------------------|---------------------------------------------------------|---------------------------------------------------------|----------------------------|
| 1  | Reverse String       | ✅      | `s[::-1]`                             | direct reverse slicing                                  | reverse whole string                                    | String                     |
| 2  | Palindrome           | ✅      | `s == s[::-1]`                        | reverse then compare                                    | same forward/backward                                   | Two Pointer                |
| 3  | Factorial            | ✅      | `fact *= i`                           | for loop multiply each number                           | cumulative multiplication                               | Iteration                  |
| 4  | Fibonacci            | ✅      | `a,b = b,a+b`                         | update previous two numbers                             | next = prev1 + prev2                                    | DP style                   |
| 5  | Prime Number         | ✅      | `if n%i==0`                           | divide check → divisible? stop                          | factor exists? not prime                                | Math                       |
| 6  | Count Vowels         | ✅      | `if i in vowels`                      | loop string → vowel? count++                            | membership checking                                     | String traversal           |
| 7  | Find Maximum         | ✅      | `if i > m`                            | compare each number with max                            | keep biggest value                                      | Linear scan                |
| 8  | Find Minimum         | ✅      | `if i < m`                            | compare each number with min                            | keep smallest value                                     | Linear scan                |
| 9  | Second Largest       | ✅      | `first, second`                       | update largest + second carefully                       | maintain top two                                        | Array                      |
| 10 | Remove Duplicates    | ✅      | `if i not in seen`                    | check set/list → append unique                          | avoid repeated values                                   | Hashing                    |
| 11 | Frequency Count      | ✅      | `counts[i]+=1 else=1`                 | exists? increment else create                           | dictionary counting                                     | Hashing                    |
| 12 | Sort List            | ✅      | `arr.sort()`                          | ascending sort automatically                            | built-in sorting                                        | Sorting                    |
| 13 | Bubble Sort          | ✅      | `swap if left > right`                | nested loop compare adjacent                            | repeated swapping                                       | Brute Force                |
| 14 | Linear Search        | ✅      | `if target == i`                      | check one by one → found stop                           | sequential search                                       | Sequential                 |
| 15 | Binary Search        | ✅      | `mid=(l+r)//2`                        | compare mid → cut half                                  | halve search space                                      | Divide & Conquer           |
| 16 | Anagram              | ✅      | `sorted(s1)==sorted(s2)`              | sort both → compare                                     | same letters same count                                 | Sorting                    |
| 17 | Swap Numbers         | ✅      | `a,b=b,a`                             | direct variable exchange                                | tuple unpacking                                         | Pythonic                   |
| 18 | Word Count           | ✅      | `split + dict`                        | split words → count frequency                           | word hashing                                            | Hashing                    |
| 19 | Largest Word         | ✅      | `max(words,key=len)`                  | compare word lengths                                    | longest length tracking                                 | Iteration                  |
| 20 | Common Elements      | ✅      | `if i in other`                       | membership check in second list                         | intersection logic                                      | Hashing                    |
| 21 | Merge Dictionaries   | ✅      | `{**a,**b}` / `a | b`                 | merge both dicts → same key overwritten                 | right dictionary overrides left                         | Hashing / Dictionary       |
| 22 | String Compression   | ✅      | `count+=1 else flush`                 | same char? increase else append result                  | consecutive frequency tracking                          | RLE / Two Pointer          |
| 23 | Move Zeros           | ✅      | `if i!=0 append`                      | first for loop keep non-zero → while fill zeros         | stable shifting                                         | Two Pointer / Array        |
| 24 | Rotate List          | ✅      | `arr[-k:] + arr[:-k]`                 | take last k → attach remaining front                    | circular movement                                       | Array Slicing              |
| 25 | Sum of Digits        | ✅      | `%10 and //10`                        | while loop → take digit → remove digit                  | `%10 take last`, `//10 remove last`                     | Math / While Loop          |
| 26 | Armstrong Number     | ✅      | `result += digit**3`                  | take digit → cube → add → remove digit                  | compare final sum with original                         | Digit Manipulation         |
| 27 | Two Sum              | ✅      | `target - i`                          | calculate complement → check hashmap                    | current + needed = target                               | Hashing                    |
| 28 | Valid Parentheses    | ✅      | `push/pop stack`                      | opening push → closing pop + compare                    | last opened closes first                                | Stack / LIFO               |
| 29 | List Comprehension   | ✅      | `[x for x in arr]`                    | loop + operation + append                               | short form of loop                                      | Pythonic Traversal         |
| 30 | Matrix Transpose     | ✅      | `zip(*matrix)`                        | unpack rows → zip same indexes                          | rows become columns                                     | Matrix / Zip               |
| 31 | Reverse Integer      | ✅      | `r = r*10 + d`                        | take digit → shift left → append digit                  | mathematical reverse construction                       | Digit Manipulation         |
| 32 | Even / Odd Count     | ✅      | `i % 2 == 0`                          | loop each element → divisible by 2?                     | even vs odd classification                              | Array Traversal            |
| 33 | Find Duplicates      | ✅      | `if i in seen`                        | already seen? duplicate found                           | first seen store, second seen duplicate                 | Hashing / Set              |
| 34 | Missing Number       | ✅      | `n*(n+1)//2`                          | expected total - actual total                           | missing value through difference                        | Mathematical Formula       |
| 35 | Merge Lists          | ✅      | `a+b` / `extend()`                    | combine both arrays sequentially                        | merge or concatenate lists                              | Array Merge                |
</details>
