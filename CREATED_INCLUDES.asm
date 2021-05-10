include 'MEMORY.INC'
UNUSED_MEMORY = dword 0x04
mov eax, [ebp+1h]
push ebx
mov ebx, [eax+10h] ; load routine, yes?
push esp
lea ecx, [esp+5h]
mov ebp, [ebx+ecx] ; unload hook (size* + size*)
lea esp, [ebp+3h]
push 0
push esi
mov esi, [esp+5h]
push edi
mov edi, [eax+esp]
