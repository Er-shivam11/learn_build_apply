# Multiprocessing

## Definition

> **Multiprocessing is a concurrency technique where multiple independent processes execute simultaneously, each with its own Python interpreter and memory space. Since each process has its own GIL, multiprocessing achieves true parallelism and is ideal for CPU-bound tasks.**

---

## One-Line Analogy

> **Think of a restaurant with multiple kitchens. Each kitchen (process) has its own chef and equipment, so all kitchens can cook at the same time without sharing resources.**

---

# Real-Life Example (Image Processing)

```python
from multiprocessing import Process

def resize_image(image):
    print(f"Resizing {image}")

p1 = Process(target=resize_image, args=("image1.jpg",))
p2 = Process(target=resize_image, args=("image2.jpg",))

p1.start()
p2.start()

p1.join()
p2.join()
```

### Output

```text
Resizing image1.jpg
Resizing image2.jpg
```

*(Order may vary because processes run in parallel.)*

---

# What Happens Internally?

```text
Main Process
      │
      ├──────────────┐
      │              │
      ▼              ▼

Process 1       Process 2

Python          Python

Own Memory      Own Memory

Own GIL         Own GIL

      │              │
      └──────┬───────┘
             ▼

        Program Ends
```

---

# Important Methods

## Create Process

```python
Process()
```

---

## Start Process

```python
p.start()
```

Starts a new process.

---

## Wait for Process

```python
p.join()
```

Waits until the process finishes.

---

# Why Use Multiprocessing?

Without Multiprocessing

```python
compress_video()
train_model()
generate_report()
```

Runs one after another.

---

With Multiprocessing

```text
Compress Video
        │

Train Model
        │

Generate Report
```

All can execute in parallel on different CPU cores.

---

# Real Production Examples

* Image processing
* Video encoding
* Machine learning training
* Data analytics
* ETL pipelines
* Scientific computing
* Financial simulations

---

# Multithreading vs Multiprocessing

| Feature      | Multithreading  | Multiprocessing              |
| ------------ | --------------- | ---------------------------- |
| Unit         | Threads         | Processes                    |
| Memory       | Shared          | Separate                     |
| GIL          | One shared GIL  | Each process has its own GIL |
| Parallelism  | No (CPU-bound)  | Yes                          |
| Best For     | I/O-bound tasks | CPU-bound tasks              |
| Memory Usage | Lower           | Higher                       |

---

# Advantages

* ✅ True parallel execution
* ✅ Utilizes multiple CPU cores
* ✅ Not limited by the GIL
* ✅ Better for heavy computations
* ✅ More fault isolation (one process crashing doesn't necessarily affect others)

---

# Drawbacks

* ❌ Higher memory usage
* ❌ Slower process creation than threads
* ❌ Inter-process communication (IPC) is more complex
* ❌ Data sharing is harder because memory is separate

---

# Common Interview Questions

### Q1. What is multiprocessing?

> Running multiple independent processes simultaneously.

---

### Q2. Why is multiprocessing faster for CPU-bound tasks?

> Because each process has its own Python interpreter and GIL, allowing true parallel execution on multiple CPU cores.

---

### Q3. Do processes share memory?

> No. Each process has its own independent memory space.

---

### Q4. Difference between thread and process?

> Threads share memory within a process, while processes have separate memory and execute independently.

---

### Q5. When should you use multiprocessing?

> For CPU-intensive tasks such as image processing, machine learning, scientific computing, and ETL transformations.

---

# ⭐ Interview Answer (30 Seconds)

> **"Multiprocessing executes multiple independent processes simultaneously, with each process having its own memory space and Python interpreter. Since every process has its own GIL, multiprocessing achieves true parallelism and is ideal for CPU-bound tasks such as image processing, machine learning, and large-scale data processing."**

---

# ⭐ Quick Revision

```text
Main Process
      ↓
Multiple Processes

↓

Separate Memory

↓

Own Python Interpreter

↓

Own GIL

↓

True Parallelism

Methods
↓

Process()
start()
join()

Best For
↓

CPU-bound Tasks
Image Processing
Machine Learning
ETL
```

---
