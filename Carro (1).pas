// Elton Antonio RA 02220112

Program Venda_de_Carros;
const
	max = 2;
	VIDRO = 1000.00;
	AUTOMOTIVO = 800.00;
	ANTIFURTO = 500.00;
	AR = 2500.00; 	
type	
	carro = record
		 marca: string;
		 modelo: string;
		 v_Venda: real;
		 v_Compra: real;
		 V_Lucro_Veiculo: real; 
		 V_T_Veiculo:real 
	end;
	
	complementos = record
		vidroEletrico: char;
	  som: char;
	  alarme: char;
	  suspAr: char;
	  V_Complementos: real;
	end;
	
var
	car: array[1..max] of carro;
	adicionais: array[1..max] of complementos; 
	i, j: integer;
	V_Lucro_CC: real;
	
	
		
begin
	
	for i := 1 to max do
	begin
		textbackground(white);
		clrscr; 
		gotoxy(50,7); 
		textcolor(red);
		writeln('-----------------------------------------'); 
		gotoxy(50,8); 
	  writeln('-------- BEM VINDO A NOSSA LOJA ---------');
	  gotoxy(50,9); 
	  writeln('-----------------------------------------'); 
		delay(2000);
		clrscr;
		gotoxy(50,7);
		write('Digite a marca do carro.............: ');
		readln(car[i].marca); 
		gotoxy(50,8);                          
		write('Informe o modelo do carro...........: ');
		readln(car[i].modelo);
		gotoxy(50,9);
		write('Informe o valor de compra do carro..: ');
		readln(car[i].v_Compra);
		gotoxy(50,10);
		write('Informe o valor de venda do carro...: ');
		readln(car[i].v_Venda);
		gotoxy(50,11); 
		writeln('---- Complementos do Carro ----');
		gotoxy(50,12);
		write('Vidro Eletrico R$',VIDRO:0:2 ,'? S/N ');
		readln(adicionais[i].vidroEletrico);
		gotoxy(50,13);
		write('Som Automotivo R$',AUTOMOTIVO:0:2,'? S/N ');
		readln(adicionais[i].som);
		gotoxy(50,14);
		write('Alarme R$',ANTIFURTO:0:2 ,'? S/N ');
		readln(adicionais[i].alarme);
		gotoxy(50,15);
		write('Suspensão a Ar R$',AR:0:2,'? S/N ');
		readln(adicionais[i].suspAr);
		clrscr;
	
		if (adicionais[i].vidroEletrico = 'S') then
		begin
			adicionais[i].V_Complementos := adicionais[i].V_Complementos + VIDRO;
		end;
		if (adicionais[i].som = 'S') then
		begin
			adicionais[i].V_Complementos := adicionais[i].V_Complementos + AUTOMOTIVO;
		end;
		if (adicionais[i].alarme = 'S') then
		begin
			adicionais[i].V_Complementos := adicionais[i].V_Complementos + ANTIFURTO;
		end;
		if (adicionais[i].suspAr = 'S') then
		begin
			adicionais[i].V_Complementos := adicionais[i].V_Complementos + AR;
		end;
		begin
		  
			car[i].V_T_Veiculo:=car[i].v_Venda + adicionais[i].V_Complementos;
			car[i].V_Lucro_Veiculo := car[i].V_T_Veiculo - car[i].v_Compra;		
			V_Lucro_CC:= V_Lucro_CC + car[i].V_Lucro_Veiculo;
	 	end;	
		clrscr;
	end;			
	for i := 1 to max do
	begin
		textcolor(red);
		writeln('----------------- TABELA DO CARRO -----------------');
		writeln('O carro da marca .........: ',car[i].marca);
		writeln('Do modelo ................: ',car[i].modelo);		
		writeln('Valor de compra ..........: R$',car[i].v_Compra:0:2);;
		writeln('Valor de venda ...........: R$',car[i].v_Venda:0:2);
		writeln('Vidro eletrico ...........: R$',VIDRO:0:2,' Adicional? ',adicionais[i].vidroEletrico);
		writeln('Som ......................: R$',AUTOMOTIVO:0:2,'  Adicional? ',adicionais[i].som);
		writeln('Alarme ...................: R$',ANTIFURTO:0:2,'  Adicional? ',adicionais[i].alarme);
		writeln('Suspensão a Ar ...........: R$',AR:0:2,' Adicional? ',adicionais[i].suspAr);
		writeln('Valor total do veiculo ...: R$',car[i].V_T_Veiculo:0:2);
		writeln('Valor lucro no Veiculo ...: R$',car[i].V_Lucro_Veiculo:0:2);
	  writeln('---------------------------------------------------');
		writeln(); 
	end;
	writeln('Valor lucro da CC........: R$',V_Lucro_CC:0:2); 
end. 