@languages ||= []
@languages +=
[
  {
    id: 1,
    name: "Bash (5.0.0)",
    is_archived: true,
    source_file: "script.sh",
    run_cmd: "/usr/local/bash-5.0/bin/bash script.sh"
  },
  {
    id: 2,
    name: "Executable",
    is_archived: true,
    source_file: "a.out",
    run_cmd: "/bin/chmod +x a.out && ./a.out"
  }
]