@languages ||= []
@languages +=
[
  {
    id: 3,
    name: "Plain Text",
    is_archived: false,
    source_file: "text.txt",
    run_cmd: "/bin/cat text.txt"
  },
  {
    id: 4,
    name: "Assembly (NASM 2.16.03)",
    is_archived: false,
    source_file: "main.asm",
    compile_cmd: "/usr/local/nasm-2.16.03/bin/nasmld -f elf64 %s main.asm",
    run_cmd: "./a.out"
  },
  {
    id: 5,
    name: "Brainfuck (0.5.0)",
    is_archived: false,
    source_file: "main.bf",
    compile_cmd: "/usr/local/brainfuck main.bf && chmod +x ./main.bf",
    run_cmd: "./main"
  },
  {
    id: 6,
    name: "C (GCC 9.2.0)",
    is_archived: false,
    source_file: "main.c",
    compile_cmd: "/usr/local/gcc-9.2.0/bin/gcc -static -std=c99 -Wno-unused-result -fno-optimize-sibling-calls -fno-optimize-sibling-calls -fno-strict-aliasing -fno-asm -s -O2 -lm %s main.c",
    run_cmd: "./a.out"
  },
  {
    id: 7,
    name: "C (GCC 12.3.0)",
    is_archived: false,
    source_file: "main.c",
    compile_cmd: "/usr/local/gcc-12.3.0/bin/gcc -static -std=c99 -Wno-unused-result -fno-optimize-sibling-calls -fno-optimize-sibling-calls -fno-strict-aliasing -fno-asm -s -O2 -lm %s main.c",
    run_cmd: "./a.out"
  },
  {
    id: 8,
    name: "C# (Mono 6.12.0.206)",
    is_archived: false,
    source_file: "Main.cs",
    compile_cmd: "/usr/local/bin/mcs %s Main.cs",
    run_cmd: "/usr/local/bin/mono Main.exe"
  },
  {
    id: 9,
    name: "C++ 17 (GCC 9.2.0)",
    is_archived: false,
    source_file: "main.cpp",
    compile_cmd: "/usr/local/gcc-9.2.0/bin/g++ -static -std=c++17 -Wno-unused-result -s %s main.cpp",
    run_cmd: "LD_LIBRARY_PATH=/usr/local/gcc-9.2.0/lib64 ./a.out"
  },
  {
    id: 10,
    name: "C++ 17 (GCC 12.3.0)",
    is_archived: false,
    source_file: "main.cpp",
    compile_cmd: "/usr/local/gcc-12.3.0/bin/g++ -static -std=c++17 -Wno-unused-result -s %s main.cpp",
    run_cmd: "LD_LIBRARY_PATH=/usr/local/gcc-12.3.0/lib64 ./a.out"
  },
  {
    id: 11,
    name: "C++ 20 (GCC 12.3.0)",
    is_archived: false,
    source_file: "main.cpp",
    compile_cmd: "/usr/local/gcc-12.3.0/bin/g++ -static -std=c++20 -Wno-unused-result -s %s main.cpp",
    run_cmd: "LD_LIBRARY_PATH=/usr/local/gcc-12.3.0/lib64 ./a.out"
  },
  {
    id: 12,
    name: "Go (1.22.2)",
    is_archived: false,
    source_file: "main.go",
    compile_cmd: "GOCACHE=/tmp/.cache/go-build /usr/local/go-1.22.2/bin/go build %s main.go",
    run_cmd: "./main"
  },
  {
    id: 13,
    name: "Haskell (GHC 8.8.4)",
    is_archived: false,
    source_file: "main.hs",
    compile_cmd: "/usr/local/ghc-8.8.4/bin/ghc -O %s main.hs",
    run_cmd: "./main"
  },
  {
    id: 14,
    name: "Java (OpenJDK 22.0.1)",
    is_archived: false,
    source_file: "Main.java",
    compile_cmd: "/usr/local/openjdk22/bin/javac %s Main.java",
    run_cmd: "/usr/local/openjdk22/bin/java Main"
  },
  {
    id: 15,
    name: "JavaScript (Node.js 20.12.2)",
    is_archived: false,
    source_file: "script.js",
    run_cmd: "/usr/local/node-20.12.2/bin/node script.js"
  },
  {
    id: 16,
    name: "Lua (5.4.6)",
    is_archived: false,
    source_file: "script.lua",
    compile_cmd: "/usr/local/lua-5.4.6/src/luac %s script.lua",
    run_cmd: "/usr/local/lua-5.4.6/src/lua ./luac.out"
  },
  {
    id: 17,
    name: "Pascal (FPC 3.2.2)",
    is_archived: false,
    source_file: "main.pas",
    compile_cmd: "/usr/local/fpc-3.2.2/bin/fpc -O3 -v0 %s main.pas",
    run_cmd: "./main"
  },
  {
    id: 18,
    name: "PHP (8.3.6)",
    is_archived: false,
    source_file: "script.php",
    run_cmd: "/usr/local/php-8.3.6/bin/php script.php"
  },
  {
    id: 19,
    name: "Python (3.11.8)",
    is_archived: false,
    source_file: "script.py",
    run_cmd: "/usr/local/python-3.11.8/bin/python3 script.py"
  },
  {
    id: 20,
    name: "Pypy (3.10)",
    is_archived: false,
    source_file: "script.py",
    run_cmd: "/usr/local/pypy3.10-v7.3.16-linux64/bin/pypy3 script.py"
  },
  {
    id: 21,
    name: "R (4.4.0)",
    is_archived: false,
    source_file: "script.r",
    run_cmd: "/usr/local/r-4.4.0/bin/Rscript script.r"
  },
  {
    id: 22,
    name: "Ruby (3.3.1)",
    is_archived: false,
    source_file: "script.rb",
    run_cmd: "/usr/local/ruby-3.3.1/bin/ruby script.rb"
  },
  {
    id: 23,
    name: "Rust (1.77.2)",
    is_archived: false,
    source_file: "main.rs",
    compile_cmd: "/usr/local/rust-1.77.2/bin/rustc -O %s main.rs",
    run_cmd: "./main"
  },
  {
    id: 24,
    name: "SQL (SQLite 3.27.2)",
    is_archived: false,
    source_file: "script.sql",
    run_cmd: "/bin/cat script.sql | /usr/bin/sqlite3 db.sqlite"
  },
  {
    id: 25,
    name: "Multi-file program",
    is_archived: false,
  }
]
