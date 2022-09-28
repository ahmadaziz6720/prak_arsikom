
sumofsquare.o:     file format pe-x86-64


Disassembly of section .text:

0000000000000000 <square>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	89 4d 10             	mov    %ecx,0x10(%rbp)
   7:	8b 45 10             	mov    0x10(%rbp),%eax
   a:	0f af c0             	imul   %eax,%eax
   d:	5d                   	pop    %rbp
   e:	c3                   	ret    

000000000000000f <squaresum>:
   f:	55                   	push   %rbp
  10:	48 89 e5             	mov    %rsp,%rbp
  13:	48 83 ec 30          	sub    $0x30,%rsp
  17:	89 4d 10             	mov    %ecx,0x10(%rbp)
  1a:	89 55 18             	mov    %edx,0x18(%rbp)
  1d:	8b 4d 10             	mov    0x10(%rbp),%ecx
  20:	e8 db ff ff ff       	call   0 <square>
  25:	89 45 fc             	mov    %eax,-0x4(%rbp)
  28:	8b 45 18             	mov    0x18(%rbp),%eax
  2b:	89 c1                	mov    %eax,%ecx
  2d:	e8 ce ff ff ff       	call   0 <square>
  32:	89 45 f8             	mov    %eax,-0x8(%rbp)
  35:	8b 55 fc             	mov    -0x4(%rbp),%edx
  38:	8b 45 f8             	mov    -0x8(%rbp),%eax
  3b:	01 d0                	add    %edx,%eax
  3d:	48 83 c4 30          	add    $0x30,%rsp
  41:	5d                   	pop    %rbp
  42:	c3                   	ret    

0000000000000043 <main>:
  43:	55                   	push   %rbp
  44:	48 89 e5             	mov    %rsp,%rbp
  47:	48 83 ec 30          	sub    $0x30,%rsp
  4b:	e8 00 00 00 00       	call   50 <main+0xd>
  50:	c7 45 fc 05 00 00 00 	movl   $0x5,-0x4(%rbp)
  57:	c7 45 f8 09 00 00 00 	movl   $0x9,-0x8(%rbp)
  5e:	8b 55 f8             	mov    -0x8(%rbp),%edx
  61:	8b 45 fc             	mov    -0x4(%rbp),%eax
  64:	89 c1                	mov    %eax,%ecx
  66:	e8 a4 ff ff ff       	call   f <squaresum>
  6b:	48 83 c4 30          	add    $0x30,%rsp
  6f:	5d                   	pop    %rbp
  70:	c3                   	ret    
  71:	90                   	nop
  72:	90                   	nop
  73:	90                   	nop
  74:	90                   	nop
  75:	90                   	nop
  76:	90                   	nop
  77:	90                   	nop
  78:	90                   	nop
  79:	90                   	nop
  7a:	90                   	nop
  7b:	90                   	nop
  7c:	90                   	nop
  7d:	90                   	nop
  7e:	90                   	nop
  7f:	90                   	nop
