globals = {
    "deinit",
    "describe",
    "fuzz",
    "fuzz_count",
    "havoc_mutation",
    "havoc_mutation_probability",
    "init",
    "init_trim",
    "introspection",
    "package",
    "post_process",
    "post_trim",
    "queue_get",
    "queue_new_entry",
    "trim",
}

include_files = {
    ".luacheckrc",
    "*.rockspec",
    "**/*.lua",
}

exclude_files = {
    ".rocks",
}
