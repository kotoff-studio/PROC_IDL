macro allow_mem_parsing {
      mov ebp, [eax+40]
      section '.bytes', data readable writeable
      section '.result', data readable writeable
}