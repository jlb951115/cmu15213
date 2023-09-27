
activity:     file format elf64-x86-64


Disassembly of section .init:

00000000000005e8 <_init>:
 5e8:	48 83 ec 08          	sub    $0x8,%rsp
 5ec:	48 8b 05 f5 19 20 00 	mov    0x2019f5(%rip),%rax        # 201fe8 <__gmon_start__>
 5f3:	48 85 c0             	test   %rax,%rax
 5f6:	74 02                	je     5fa <_init+0x12>
 5f8:	ff d0                	callq  *%rax
 5fa:	48 83 c4 08          	add    $0x8,%rsp
 5fe:	c3                   	retq   

Disassembly of section .plt:

0000000000000600 <.plt>:
 600:	ff 35 a2 19 20 00    	pushq  0x2019a2(%rip)        # 201fa8 <_GLOBAL_OFFSET_TABLE_+0x8>
 606:	ff 25 a4 19 20 00    	jmpq   *0x2019a4(%rip)        # 201fb0 <_GLOBAL_OFFSET_TABLE_+0x10>
 60c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000610 <puts@plt>:
 610:	ff 25 a2 19 20 00    	jmpq   *0x2019a2(%rip)        # 201fb8 <puts@GLIBC_2.2.5>
 616:	68 00 00 00 00       	pushq  $0x0
 61b:	e9 e0 ff ff ff       	jmpq   600 <.plt>

0000000000000620 <gets@plt>:
 620:	ff 25 9a 19 20 00    	jmpq   *0x20199a(%rip)        # 201fc0 <gets@GLIBC_2.2.5>
 626:	68 01 00 00 00       	pushq  $0x1
 62b:	e9 d0 ff ff ff       	jmpq   600 <.plt>

0000000000000630 <exit@plt>:
 630:	ff 25 92 19 20 00    	jmpq   *0x201992(%rip)        # 201fc8 <exit@GLIBC_2.2.5>
 636:	68 02 00 00 00       	pushq  $0x2
 63b:	e9 c0 ff ff ff       	jmpq   600 <.plt>

0000000000000640 <fwrite@plt>:
 640:	ff 25 8a 19 20 00    	jmpq   *0x20198a(%rip)        # 201fd0 <fwrite@GLIBC_2.2.5>
 646:	68 03 00 00 00       	pushq  $0x3
 64b:	e9 b0 ff ff ff       	jmpq   600 <.plt>

Disassembly of section .plt.got:

0000000000000650 <__cxa_finalize@plt>:
 650:	ff 25 a2 19 20 00    	jmpq   *0x2019a2(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 656:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000660 <_start>:
 660:	31 ed                	xor    %ebp,%ebp
 662:	49 89 d1             	mov    %rdx,%r9
 665:	5e                   	pop    %rsi
 666:	48 89 e2             	mov    %rsp,%rdx
 669:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 66d:	50                   	push   %rax
 66e:	54                   	push   %rsp
 66f:	4c 8d 05 da 03 00 00 	lea    0x3da(%rip),%r8        # a50 <__libc_csu_fini>
 676:	48 8d 0d 63 03 00 00 	lea    0x363(%rip),%rcx        # 9e0 <__libc_csu_init>
 67d:	48 8d 3d bd 01 00 00 	lea    0x1bd(%rip),%rdi        # 841 <main>
 684:	ff 15 56 19 20 00    	callq  *0x201956(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 68a:	f4                   	hlt    
 68b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000690 <deregister_tm_clones>:
 690:	48 8d 3d 81 19 20 00 	lea    0x201981(%rip),%rdi        # 202018 <__TMC_END__>
 697:	55                   	push   %rbp
 698:	48 8d 05 79 19 20 00 	lea    0x201979(%rip),%rax        # 202018 <__TMC_END__>
 69f:	48 39 f8             	cmp    %rdi,%rax
 6a2:	48 89 e5             	mov    %rsp,%rbp
 6a5:	74 19                	je     6c0 <deregister_tm_clones+0x30>
 6a7:	48 8b 05 2a 19 20 00 	mov    0x20192a(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 6ae:	48 85 c0             	test   %rax,%rax
 6b1:	74 0d                	je     6c0 <deregister_tm_clones+0x30>
 6b3:	5d                   	pop    %rbp
 6b4:	ff e0                	jmpq   *%rax
 6b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 6bd:	00 00 00 
 6c0:	5d                   	pop    %rbp
 6c1:	c3                   	retq   
 6c2:	0f 1f 40 00          	nopl   0x0(%rax)
 6c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 6cd:	00 00 00 

00000000000006d0 <register_tm_clones>:
 6d0:	48 8d 3d 41 19 20 00 	lea    0x201941(%rip),%rdi        # 202018 <__TMC_END__>
 6d7:	48 8d 35 3a 19 20 00 	lea    0x20193a(%rip),%rsi        # 202018 <__TMC_END__>
 6de:	55                   	push   %rbp
 6df:	48 29 fe             	sub    %rdi,%rsi
 6e2:	48 89 e5             	mov    %rsp,%rbp
 6e5:	48 c1 fe 03          	sar    $0x3,%rsi
 6e9:	48 89 f0             	mov    %rsi,%rax
 6ec:	48 c1 e8 3f          	shr    $0x3f,%rax
 6f0:	48 01 c6             	add    %rax,%rsi
 6f3:	48 d1 fe             	sar    %rsi
 6f6:	74 18                	je     710 <register_tm_clones+0x40>
 6f8:	48 8b 05 f1 18 20 00 	mov    0x2018f1(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 6ff:	48 85 c0             	test   %rax,%rax
 702:	74 0c                	je     710 <register_tm_clones+0x40>
 704:	5d                   	pop    %rbp
 705:	ff e0                	jmpq   *%rax
 707:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 70e:	00 00 
 710:	5d                   	pop    %rbp
 711:	c3                   	retq   
 712:	0f 1f 40 00          	nopl   0x0(%rax)
 716:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 71d:	00 00 00 

0000000000000720 <__do_global_dtors_aux>:
 720:	80 3d 01 19 20 00 00 	cmpb   $0x0,0x201901(%rip)        # 202028 <completed.7698>
 727:	75 2f                	jne    758 <__do_global_dtors_aux+0x38>
 729:	48 83 3d c7 18 20 00 	cmpq   $0x0,0x2018c7(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 730:	00 
 731:	55                   	push   %rbp
 732:	48 89 e5             	mov    %rsp,%rbp
 735:	74 0c                	je     743 <__do_global_dtors_aux+0x23>
 737:	48 8b 3d ca 18 20 00 	mov    0x2018ca(%rip),%rdi        # 202008 <__dso_handle>
 73e:	e8 0d ff ff ff       	callq  650 <__cxa_finalize@plt>
 743:	e8 48 ff ff ff       	callq  690 <deregister_tm_clones>
 748:	c6 05 d9 18 20 00 01 	movb   $0x1,0x2018d9(%rip)        # 202028 <completed.7698>
 74f:	5d                   	pop    %rbp
 750:	c3                   	retq   
 751:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 758:	f3 c3                	repz retq 
 75a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000760 <frame_dummy>:
 760:	55                   	push   %rbp
 761:	48 89 e5             	mov    %rsp,%rbp
 764:	5d                   	pop    %rbp
 765:	e9 66 ff ff ff       	jmpq   6d0 <register_tm_clones>

000000000000076a <win>:
 76a:	48 83 ec 08          	sub    $0x8,%rsp
 76e:	81 ff 13 52 01 00    	cmp    $0x15213,%edi
 774:	74 2e                	je     7a4 <win+0x3a>
 776:	81 ff 13 82 01 00    	cmp    $0x18213,%edi
 77c:	74 34                	je     7b2 <win+0x48>
 77e:	81 ff 13 86 01 00    	cmp    $0x18613,%edi
 784:	74 3a                	je     7c0 <win+0x56>
 786:	8b 05 a4 18 20 00    	mov    0x2018a4(%rip),%eax        # 202030 <mystery>
 78c:	3d 13 55 01 00       	cmp    $0x15513,%eax
 791:	74 3b                	je     7ce <win+0x64>
 793:	48 8d 3d 36 03 00 00 	lea    0x336(%rip),%rdi        # ad0 <_IO_stdin_used+0x70>
 79a:	e8 71 fe ff ff       	callq  610 <puts@plt>
 79f:	48 83 c4 08          	add    $0x8,%rsp
 7a3:	c3                   	retq   
 7a4:	48 8d 3d bd 02 00 00 	lea    0x2bd(%rip),%rdi        # a68 <_IO_stdin_used+0x8>
 7ab:	e8 60 fe ff ff       	callq  610 <puts@plt>
 7b0:	eb ed                	jmp    79f <win+0x35>
 7b2:	48 8d 3d 3f 03 00 00 	lea    0x33f(%rip),%rdi        # af8 <_IO_stdin_used+0x98>
 7b9:	e8 52 fe ff ff       	callq  610 <puts@plt>
 7be:	eb df                	jmp    79f <win+0x35>
 7c0:	48 8d 3d c1 02 00 00 	lea    0x2c1(%rip),%rdi        # a88 <_IO_stdin_used+0x28>
 7c7:	e8 44 fe ff ff       	callq  610 <puts@plt>
 7cc:	eb d1                	jmp    79f <win+0x35>
 7ce:	48 8d 3d db 02 00 00 	lea    0x2db(%rip),%rdi        # ab0 <_IO_stdin_used+0x50>
 7d5:	e8 36 fe ff ff       	callq  610 <puts@plt>
 7da:	eb c3                	jmp    79f <win+0x35>

00000000000007dc <solve>:
 7dc:	48 83 ec 38          	sub    $0x38,%rsp
 7e0:	48 c7 44 24 28 b4 00 	movq   $0xb4,0x28(%rsp)
 7e7:	00 00 
 7e9:	48 c7 44 24 08 af 00 	movq   $0xaf,0x8(%rsp)
 7f0:	00 00 
 7f2:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
 7f7:	e8 72 00 00 00       	callq  86e <Gets>
 7fc:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
 801:	48 b8 31 35 32 31 33 	movabs $0x3331323531,%rax
 808:	00 00 00 
 80b:	48 39 c2             	cmp    %rax,%rdx
 80e:	74 19                	je     829 <solve+0x4d>
 810:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
 815:	48 b8 31 38 32 31 33 	movabs $0x3331323831,%rax
 81c:	00 00 00 
 81f:	48 39 c2             	cmp    %rax,%rdx
 822:	74 11                	je     835 <solve+0x59>
 824:	48 83 c4 38          	add    $0x38,%rsp
 828:	c3                   	retq   
 829:	bf 13 52 01 00       	mov    $0x15213,%edi
 82e:	e8 37 ff ff ff       	callq  76a <win>
 833:	eb db                	jmp    810 <solve+0x34>
 835:	bf 13 82 01 00       	mov    $0x18213,%edi
 83a:	e8 2b ff ff ff       	callq  76a <win>
 83f:	eb e3                	jmp    824 <solve+0x48>

0000000000000841 <main>:
 841:	48 83 ec 08          	sub    $0x8,%rsp
 845:	48 8b 35 c4 17 20 00 	mov    0x2017c4(%rip),%rsi        # 202010 <stack_top>
 84c:	48 8d 3d 89 ff ff ff 	lea    -0x77(%rip),%rdi        # 7dc <solve>
 853:	e8 52 00 00 00       	callq  8aa <run_on_stack>
 858:	48 8d 3d b4 02 00 00 	lea    0x2b4(%rip),%rdi        # b13 <_IO_stdin_used+0xb3>
 85f:	e8 ac fd ff ff       	callq  610 <puts@plt>
 864:	b8 00 00 00 00       	mov    $0x0,%eax
 869:	48 83 c4 08          	add    $0x8,%rsp
 86d:	c3                   	retq   

000000000000086e <Gets>:
 86e:	48 83 ec 08          	sub    $0x8,%rsp
 872:	e8 a9 fd ff ff       	callq  620 <gets@plt>
 877:	48 85 c0             	test   %rax,%rax
 87a:	74 05                	je     881 <Gets+0x13>
 87c:	48 83 c4 08          	add    $0x8,%rsp
 880:	c3                   	retq   
 881:	48 8b 0d 98 17 20 00 	mov    0x201798(%rip),%rcx        # 202020 <stderr@@GLIBC_2.2.5>
 888:	ba 0d 00 00 00       	mov    $0xd,%edx
 88d:	be 01 00 00 00       	mov    $0x1,%esi
 892:	48 8d 3d 97 02 00 00 	lea    0x297(%rip),%rdi        # b30 <_IO_stdin_used+0xd0>
 899:	e8 a2 fd ff ff       	callq  640 <fwrite@plt>
 89e:	bf 01 00 00 00       	mov    $0x1,%edi
 8a3:	e8 88 fd ff ff       	callq  630 <exit@plt>

00000000000008a8 <gadget1>:
 8a8:	5f                   	pop    %rdi
 8a9:	c3                   	retq   

00000000000008aa <run_on_stack>:
 8aa:	48 89 e2             	mov    %rsp,%rdx
 8ad:	48 8d 66 f8          	lea    -0x8(%rsi),%rsp
 8b1:	52                   	push   %rdx
 8b2:	ff d7                	callq  *%rdi
 8b4:	5a                   	pop    %rdx
 8b5:	48 89 d4             	mov    %rdx,%rsp
 8b8:	c3                   	retq   

00000000000008b9 <start_farm>:
 8b9:	b8 01 00 00 00       	mov    $0x1,%eax
 8be:	c3                   	retq   

00000000000008bf <getval_142>:
 8bf:	b8 fb 78 90 90       	mov    $0x909078fb,%eax
 8c4:	c3                   	retq   

00000000000008c5 <addval_273>:
 8c5:	8d 87 48 89 c7 c3    	lea    -0x3c3876b8(%rdi),%eax
 8cb:	c3                   	retq   

00000000000008cc <addval_219>:
 8cc:	8d 87 51 73 58 90    	lea    -0x6fa78caf(%rdi),%eax
 8d2:	c3                   	retq   

00000000000008d3 <setval_237>:
 8d3:	c7 07 48 89 c7 c7    	movl   $0xc7c78948,(%rdi)
 8d9:	c3                   	retq   

00000000000008da <setval_424>:
 8da:	c7 07 54 c2 58 92    	movl   $0x9258c254,(%rdi)
 8e0:	c3                   	retq   

00000000000008e1 <setval_470>:
 8e1:	c7 07 63 48 8d c7    	movl   $0xc78d4863,(%rdi)
 8e7:	c3                   	retq   

00000000000008e8 <setval_426>:
 8e8:	c7 07 48 89 c7 90    	movl   $0x90c78948,(%rdi)
 8ee:	c3                   	retq   

00000000000008ef <getval_280>:
 8ef:	b8 29 58 90 c3       	mov    $0xc3905829,%eax
 8f4:	c3                   	retq   

00000000000008f5 <mid_farm>:
 8f5:	b8 01 00 00 00       	mov    $0x1,%eax
 8fa:	c3                   	retq   

00000000000008fb <add_xy>:
 8fb:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
 8ff:	c3                   	retq   

0000000000000900 <getval_481>:
 900:	b8 5c 89 c2 90       	mov    $0x90c2895c,%eax
 905:	c3                   	retq   

0000000000000906 <setval_296>:
 906:	c7 07 99 d1 90 90    	movl   $0x9090d199,(%rdi)
 90c:	c3                   	retq   

000000000000090d <addval_113>:
 90d:	8d 87 89 ce 78 c9    	lea    -0x36873177(%rdi),%eax
 913:	c3                   	retq   

0000000000000914 <addval_490>:
 914:	8d 87 8d d1 20 db    	lea    -0x24df2e73(%rdi),%eax
 91a:	c3                   	retq   

000000000000091b <getval_226>:
 91b:	b8 89 d1 48 c0       	mov    $0xc048d189,%eax
 920:	c3                   	retq   

0000000000000921 <setval_384>:
 921:	c7 07 81 d1 84 c0    	movl   $0xc084d181,(%rdi)
 927:	c3                   	retq   

0000000000000928 <addval_190>:
 928:	8d 87 41 48 89 e0    	lea    -0x1f76b7bf(%rdi),%eax
 92e:	c3                   	retq   

000000000000092f <setval_276>:
 92f:	c7 07 88 c2 08 c9    	movl   $0xc908c288,(%rdi)
 935:	c3                   	retq   

0000000000000936 <addval_436>:
 936:	8d 87 89 ce 90 90    	lea    -0x6f6f3177(%rdi),%eax
 93c:	c3                   	retq   

000000000000093d <getval_345>:
 93d:	b8 48 89 e0 c1       	mov    $0xc1e08948,%eax
 942:	c3                   	retq   

0000000000000943 <addval_479>:
 943:	8d 87 89 c2 00 c9    	lea    -0x36ff3d77(%rdi),%eax
 949:	c3                   	retq   

000000000000094a <addval_187>:
 94a:	8d 87 89 ce 38 c0    	lea    -0x3fc73177(%rdi),%eax
 950:	c3                   	retq   

0000000000000951 <setval_248>:
 951:	c7 07 81 ce 08 db    	movl   $0xdb08ce81,(%rdi)
 957:	c3                   	retq   

0000000000000958 <getval_159>:
 958:	b8 89 d1 38 c9       	mov    $0xc938d189,%eax
 95d:	c3                   	retq   

000000000000095e <addval_110>:
 95e:	8d 87 c8 89 e0 c3    	lea    -0x3c1f7638(%rdi),%eax
 964:	c3                   	retq   

0000000000000965 <addval_487>:
 965:	8d 87 89 c2 84 c0    	lea    -0x3f7b3d77(%rdi),%eax
 96b:	c3                   	retq   

000000000000096c <addval_201>:
 96c:	8d 87 48 89 e0 c7    	lea    -0x381f76b8(%rdi),%eax
 972:	c3                   	retq   

0000000000000973 <getval_272>:
 973:	b8 99 d1 08 d2       	mov    $0xd208d199,%eax
 978:	c3                   	retq   

0000000000000979 <getval_155>:
 979:	b8 89 c2 c4 c9       	mov    $0xc9c4c289,%eax
 97e:	c3                   	retq   

000000000000097f <setval_299>:
 97f:	c7 07 48 89 e0 91    	movl   $0x91e08948,(%rdi)
 985:	c3                   	retq   

0000000000000986 <addval_404>:
 986:	8d 87 89 ce 92 c3    	lea    -0x3c6d3177(%rdi),%eax
 98c:	c3                   	retq   

000000000000098d <getval_311>:
 98d:	b8 89 d1 08 db       	mov    $0xdb08d189,%eax
 992:	c3                   	retq   

0000000000000993 <setval_167>:
 993:	c7 07 89 d1 91 c3    	movl   $0xc391d189,(%rdi)
 999:	c3                   	retq   

000000000000099a <setval_328>:
 99a:	c7 07 81 c2 38 d2    	movl   $0xd238c281,(%rdi)
 9a0:	c3                   	retq   

00000000000009a1 <setval_450>:
 9a1:	c7 07 09 ce 08 c9    	movl   $0xc908ce09,(%rdi)
 9a7:	c3                   	retq   

00000000000009a8 <addval_358>:
 9a8:	8d 87 08 89 e0 90    	lea    -0x6f1f76f8(%rdi),%eax
 9ae:	c3                   	retq   

00000000000009af <addval_124>:
 9af:	8d 87 89 c2 c7 3c    	lea    0x3cc7c289(%rdi),%eax
 9b5:	c3                   	retq   

00000000000009b6 <getval_169>:
 9b6:	b8 88 ce 20 c0       	mov    $0xc020ce88,%eax
 9bb:	c3                   	retq   

00000000000009bc <setval_181>:
 9bc:	c7 07 48 89 e0 c2    	movl   $0xc2e08948,(%rdi)
 9c2:	c3                   	retq   

00000000000009c3 <addval_184>:
 9c3:	8d 87 89 c2 60 d2    	lea    -0x2d9f3d77(%rdi),%eax
 9c9:	c3                   	retq   

00000000000009ca <getval_472>:
 9ca:	b8 8d ce 20 d2       	mov    $0xd220ce8d,%eax
 9cf:	c3                   	retq   

00000000000009d0 <setval_350>:
 9d0:	c7 07 48 89 e0 90    	movl   $0x90e08948,(%rdi)
 9d6:	c3                   	retq   

00000000000009d7 <end_farm>:
 9d7:	b8 01 00 00 00       	mov    $0x1,%eax
 9dc:	c3                   	retq   
 9dd:	0f 1f 00             	nopl   (%rax)

00000000000009e0 <__libc_csu_init>:
 9e0:	41 57                	push   %r15
 9e2:	41 56                	push   %r14
 9e4:	49 89 d7             	mov    %rdx,%r15
 9e7:	41 55                	push   %r13
 9e9:	41 54                	push   %r12
 9eb:	4c 8d 25 ae 13 20 00 	lea    0x2013ae(%rip),%r12        # 201da0 <__frame_dummy_init_array_entry>
 9f2:	55                   	push   %rbp
 9f3:	48 8d 2d ae 13 20 00 	lea    0x2013ae(%rip),%rbp        # 201da8 <__init_array_end>
 9fa:	53                   	push   %rbx
 9fb:	41 89 fd             	mov    %edi,%r13d
 9fe:	49 89 f6             	mov    %rsi,%r14
 a01:	4c 29 e5             	sub    %r12,%rbp
 a04:	48 83 ec 08          	sub    $0x8,%rsp
 a08:	48 c1 fd 03          	sar    $0x3,%rbp
 a0c:	e8 d7 fb ff ff       	callq  5e8 <_init>
 a11:	48 85 ed             	test   %rbp,%rbp
 a14:	74 20                	je     a36 <__libc_csu_init+0x56>
 a16:	31 db                	xor    %ebx,%ebx
 a18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 a1f:	00 
 a20:	4c 89 fa             	mov    %r15,%rdx
 a23:	4c 89 f6             	mov    %r14,%rsi
 a26:	44 89 ef             	mov    %r13d,%edi
 a29:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 a2d:	48 83 c3 01          	add    $0x1,%rbx
 a31:	48 39 dd             	cmp    %rbx,%rbp
 a34:	75 ea                	jne    a20 <__libc_csu_init+0x40>
 a36:	48 83 c4 08          	add    $0x8,%rsp
 a3a:	5b                   	pop    %rbx
 a3b:	5d                   	pop    %rbp
 a3c:	41 5c                	pop    %r12
 a3e:	41 5d                	pop    %r13
 a40:	41 5e                	pop    %r14
 a42:	41 5f                	pop    %r15
 a44:	c3                   	retq   
 a45:	90                   	nop
 a46:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 a4d:	00 00 00 

0000000000000a50 <__libc_csu_fini>:
 a50:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000a54 <_fini>:
 a54:	48 83 ec 08          	sub    $0x8,%rsp
 a58:	48 83 c4 08          	add    $0x8,%rsp
 a5c:	c3                   	retq   
