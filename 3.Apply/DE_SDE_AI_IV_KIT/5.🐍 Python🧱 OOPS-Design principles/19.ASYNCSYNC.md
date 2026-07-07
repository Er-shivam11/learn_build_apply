# Async vs Sync

## Definition

> **Synchronous (Sync) execution runs tasks one after another, where each task must complete before the next begins. Asynchronous (Async) execution allows a task to pause while waiting for I/O, enabling other tasks to run during that waiting period, improving overall efficiency without blocking the program.**

---

## One-Line Analogy

> **Sync is like standing in a queue and waiting for your coffee before ordering food. Async is like ordering coffee, receiving a buzzer, and ordering food while the coffee is being prepared.**

---

# Synchronous Example (E-commerce)

```python
import time

def fetch_orders():
    time.sleep(2)
    print("Orders Fetched")

def fetch_payments():
    time.sleep(2)
    print("Payments Fetched")

fetch_orders()
fetch_payments()
```

### Output

```text
Orders Fetched
Payments Fetched
```

**Total Time ≈ 4 seconds**

---

# Asynchronous Example (E-commerce)

```python
import asyncio

async def fetch_orders():
    await asyncio.sleep(2)
    print("Orders Fetched")

async def fetch_payments():
    await asyncio.sleep(2)
    print("Payments Fetched")

async def main():
    await asyncio.gather(
        fetch_orders(),
        fetch_payments()
    )

asyncio.run(main())
```

### Output

```text
Orders Fetched
Payments Fetched
```

**Total Time ≈ 2 seconds**

---

# What Happens Internally?

## Synchronous

```text
Start

↓

Fetch Orders

↓

Wait 2 sec

↓

Fetch Payments

↓

Wait 2 sec

↓

End
```

---

## Asynchronous

```text
Start

↓

Fetch Orders

        │

Fetch Payments

        │

Wait Together

        │

End
```

---

# Sync vs Async

| Feature   | Sync             | Async                    |
| --------- | ---------------- | ------------------------ |
| Execution | Sequential       | Concurrent               |
| Waiting   | Blocks execution | Doesn't block during I/O |
| Speed     | Slower for I/O   | Faster for I/O           |
| CPU-bound | ✅ Good           | ❌ Not intended           |
| I/O-bound | ❌ Slower         | ✅ Excellent              |
| Uses      | Normal functions | `async` / `await`        |

---

# When to Use Sync?

* Simple scripts
* Mathematical calculations
* CPU-bound tasks
* Small programs

---

# When to Use Async?

* API calls
* Database queries
* File I/O
* Web scraping
* Chat applications
* Streaming
* Microservices

---

# Real Production Examples

### Sync

```python
calculate_salary()
```

CPU work.

---

### Async

```python
await fetch_user()
await fetch_orders()
```

Waiting for database/network.

---

# Advantages

## Sync

* ✅ Easy to understand
* ✅ Easier debugging
* ✅ Good for CPU-bound tasks

---

## Async

* ✅ High throughput
* ✅ Doesn't waste time waiting for I/O
* ✅ Excellent scalability
* ✅ Lower memory than threads for many I/O tasks

---

# Drawbacks

## Sync

* ❌ Wastes time waiting
* ❌ Poor scalability for I/O-heavy applications

---

## Async

* ❌ More complex
* ❌ Best suited for I/O-bound work, not CPU-intensive work

---

# Common Interview Questions

### Q1. What is synchronous programming?

> Tasks execute one after another, blocking until each finishes.

---

### Q2. What is asynchronous programming?

> Tasks can pause during I/O, allowing other tasks to execute without blocking.

---

### Q3. Is async parallel?

> No. Async provides concurrency, not necessarily parallelism.

---

### Q4. When should you use async?

> For I/O-bound operations such as API calls, databases, files, and network communication.

---

### Q5. Can async make CPU-bound code faster?

> No. CPU-bound tasks are better handled using multiprocessing.

---

# ⭐ Interview Answer (30 Seconds)

> **"Synchronous programming executes tasks sequentially, where each task blocks until completion. Asynchronous programming allows tasks to suspend while waiting for I/O, enabling other tasks to run during that time. Async improves throughput for I/O-bound applications such as APIs, databases, and web services, while CPU-bound workloads are better suited to multiprocessing."**

---

# ⭐ Quick Revision

```text
Sync
      ↓
Sequential
Blocking
CPU-bound

Async
      ↓
Concurrent
Non-blocking (during I/O)
I/O-bound

Sync
      ↓
Task 1
Task 2
Task 3

Async
      ↓
Task 1 ─┐
Task 2 ─┼── Wait Together
Task 3 ─┘

Best For
      ↓
Sync → CPU Work

Async → API
Database
File
Network
```

---