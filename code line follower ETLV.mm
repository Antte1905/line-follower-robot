int vald = 0;
int valg = 0;



void setup(){
	pinMode(10, OUTPUT);
	pinMode(11, OUTPUT);
}

void loop(){
	valg = analogRead(A0);
	vald = analogRead(A1);

	if valg < vald {
		analogWrite(10, 0);
		analogWrite(11, 255);
	}


	if vald < valg {	
		analogWrite(10, 255);
		analogWrite(11, 0);
	}

	if valg == vald {
		analogWrite(10, 0);
		analogWrite(11, 0);
	}

}

