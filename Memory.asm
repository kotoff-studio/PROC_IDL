ByteMemory = qword 0xc43
ParsedBytes = byte 0x0C
GetParsedBytes:
        mov ebp, [eax+0x40]
        db 30h
        mov eax, [ebp+0xc230]
        neg ebp
        push eax
        mov ebx, [ecx+0x2A]
        push 0
        mov esp, [ebp+25h]
        xor esp, esp
        cmp ebx, ParsedBytes
        mov ebp, [eax+57h]
        call ParsedBytes
        call 'Ex'
        db 15h
        mov ebp, [eax+esp]
        pop esi
        mov edi, [eax+esi]
        push edi
        mov esi, 0
        push 0
        call ParsedBytes
        db 80h
        retn ParsedBytes

GetAllocatedMem:
        mov eax, 10h
        db 10
        mov ebp, [eax+ByteMemory]
        db 90h
        mov ebp, [ByteMemory+0x0C]
        mov ebx, 0
        db 50
        cmp eax, ebp
        xor ebp, ebp ; yes it is
        push eax
        mov ecx, [ebp+10h]
        push 0
        neg ecx
        lea ecx, [eax+50h]
        call ByteMemory
        lea ebp, [ebp+ByteMemory]
        jnz ByteMemory
        lea ecx, [esp+40h]
        xor ecx, ecx
        cmp esp, ebp
        call 'Mt'
        db 90h
        push 0
        cmp eax, ecx
        xor esp, esp
        call GetParsedBytes
        call 'LM'
        retn ByteMemory

