---
paginate: true
marp: true
footer: Andrea Manzini @ GdG Trento
theme: default
#class: lead 


---
![bg left](img/crystal_logo-stacked_version.svg)

## Andrea Manzini

## *A language for humans and computers*

#### 11/11/2023 
### `DevFest Trento`

---
## Short bio 

- Who am I ? ➡️ https://ilmanzo.github.io 
- What do I do ? ⬇️

Software Engineer + Package Maintainer @ [SUSE](www.suse.com)

![](img/Chameleon-SUSE-GCP-1-768x287.jpg)

<!-- _footer: "" -->
---
# Why I'm here ?

- Open Source enthusiast && contributor
- Knowledge sharing
- Crystal [Ambassador](https://forum.crystal-lang.org/t/ambassador-introductions/5734)

---
# Crystal is ...

## A language for Humans

- clean code
- avoid dependency hell
- avoid surprise fail
- avoid bureaucracy

---
### Clean Code

C 
```C
int i = 0
while(i < 3) {
  printf("Hello\n");
}
```
...😵

---
### Clean Code

C 
```C
int i = 0
while(i < 3) {
  printf("Hello\n");
  i++;
}
```

can you spot the error ?


---
### Clean Code

Crystal is expressive

```Crystal
3.times do
 print "Hello"
end
```

everything is an object!

---
#### Batteries included
```Crystal
require "http/server"

class HttpHello
  PORT = 8080

  def self.start(port = PORT)
    server = HTTP::Server.new do |context|
      context.response.content_type = "text/plain"
      context.response.print "Hello World, got #{context.request.path}!"
    end

    Log.info { "Listening on http://localhost:#{port}/" }
    server.listen port
  end
end

HttpHello.start
```
<!-- _footer: "" -->
---
## Humans like their program to not fail
Avoid [the billion dollar mistake](https://www.infoq.com/presentations/Null-References-The-Billion-Dollar-Mistake-Tony-Hoare/)

```Crystal
class Duck
  def quack
    puts "🦆 quack!"
  end
end

if rand(3) > 1
  duck = Duck.new
end

duck.quack
```
```bash
$ crystal duck.cr
Error: undefined method 'quack' for Nil (compile-time type is (Duck | Nil))
```
<!-- _footer: "" -->
---
## Bureaucracy ? No thanks
```Crystal
struct Nil
  def quack
    puts "shhh 🤫"
  end
end
```
```bash
$ crystal duck.cr
shhh 🤫
```
*Duck typing + monkey patching* (like in Ruby)

---
# Summing up
- pretty like Ruby
    - similar syntax, compatibility is not a goal
- Safe: statically checked types
- Has type inference
    - no need to write boilerplate types
    - duck typing and monkey patching

- the community (check out CrystalConf!)

---
# A language for computers

- computer like native code
    - performant execution
    - low memory footprint
    - cross-platform/os
    - easy to deploy

---
## performance


[benchmarks](https://github.com/kostya/crystal-benchmarks-game)

---
## low resource usage


---
## cross platform


---
## easy to deploy


---
# Some extras

- "Go style" Human friendly concurrency via CSP
- Doc generation
- Integrated test framework
- Macros
- Shards: dependency manager
- C-binding without tears
- an extensive, modern standard library  


---
# One more thing

- Crystal is built on [Open Build Service](https://build.opensuse.org/package/show/devel:languages:crystal/crystal)

- Shameless plug: [Crystal koans](https://github.com/ilmanzo/crystal-koans)

- [Nim Italia](https://nim-italia.github.io/)

---
# Thanks







