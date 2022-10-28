void main(){
	int a;
	int p;
	int x;
	a = 0;
	x = 1;
	printf("Masukkan jumlah loop: ");
	scanf("%d", &p);
	while (a<p){
		x = x * 2;
		a = a + 1;
	}
	printf("Hasil iterasi: %d\n", x);
}
