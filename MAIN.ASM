mov eax, 0
mov ebp, eax
push 0
mov ebx, 10
push ebx
mov ebp, ecx
push ecx
mov ecx, 50
db 90h ; pushes the processor high-level idl?
mov esp, 0
push 0
mov ecx, esp
mov eax, 5
db 80 ; c r a s h e d! unloaded routine of processor hl idl!
db 50h
push 0
sub esp, 50h
push ebp
mov esi, ecx
mov esi, 1
push 0
push eax
push esi
mov edi, 3
xor edi, edi
xor [edi+10h], edi
mov [eax+2], esi
push esp
cmp esp, eax ; hmm
xor esp, ebp
mov esi, ebp
mov ebp, 10h
push ecx
mov ecx, 40h
mov ecx, [edi+18h]
push edi
mov eax, 0h
allocated:
        mov edi, [esi+10h]
        push 0
        jmp esi
        push edi
        mov eax, 5h
        push ebp
        mov ebx, [ebp+4h]
        push 0
        mov ecx, [ecx+5h]
proc_routine:
        mov esi, [eax+3h]
        push edi
        mov edi, esi
        push eax
        push 0
        push ebp
        mov ecx, ebp
        push ebp
        mov ebp, [ebp+5]
        push eax
        mov eax, ebp
        cmp eax, ebx
        xor edi, edi
        cmp eax, edi
        mov edi, 0
        push esi
        mov esi, [edi+2h]
        mov ebp, esi
        push ebx
        mov eax, [ebx+5h]
        mov ebp, [5h+5h]
        call allocated
        xor eax, ebp
        cmp eax, ebx
        mov ch, 0
        cmp ebp, esi
        xor ch, ch
        push ecx
        mov ebp, [ecx+15h]
        mov di, 10 ; intel? did you hear me? unload 16-bit instructions from your modern processors, not use other arcs, enough AMD64/x86-64
        push di
        xor di, di
        push eax
        mov di, [eax+5h]
fast_unload_routine:
        mov ax, 0
        push ax
        mov [eax-10h], ax
        push esi
        mov ebp, [edi+18h]
        mov ax, [ebp-10h]
        pop esi
        pop ebp
        mov ebp, esi
        push 0
        mov ebp, 0
        mov esi, 0
        mov eax, 0
        mov ebp, [eax+2h]
        mov eax, [ebp+1h]
        push edi
        mov esi, ebp
        lea esi, [ebx+16h]
        jnz proc_routine
        mov esi, [eax+ebx]
        push eax
        push 0
        jz allocated
pp58 = 400h
var_allocated_memory = 50h
get_allocated_memory:
        mov eax, [ebp-10h]
        xor ebp, ebp
        push 0
        mov ebp, 0
        mov ebx, [ebp+3h]
        push ecx
        mov ecx, ebp
        lea eax, [ebp+15h]
        or eax, 0x50510
        not eax ; hm whaaat?
        push 10h
        mov ebp, [ebp+5h] ; such as usually memory parser :)

LogicMemoryParser = byte 48h
mov esi, 0
push LogicMemoryParser ; it works? ok...
push ebx
push ecx
mov ebx, eax
mov edi, ebp
push ebp
LogicMemory64bit = qword 64
push LogicMemory64bit
mov eax, LogicMemory64bit
push 0
push ebp
mov ebp, [LogicMemory64bit+10h]
push ax
mov ax, [LogicMemoryParser+LogicMemory64bit]
mov eax, [ebx+10h]
mov ebp, esp
mov esp, [ebx-5h]
xor esi, esi
cmp esp, ebp
not ebp ; and then?
xor ebp, ebp
or ecx, 0x51CF
lea ebp, [ecx+20h]
cmp ebp, [eax+15h]