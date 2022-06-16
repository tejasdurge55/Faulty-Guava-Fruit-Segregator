//Conveyor Final Program:
#define b1 A0
#define c1 A1
int b ;
int c ;
  
void setup()
{
 // pinMode(13, OUTPUT);
  pinMode(8, OUTPUT);
  //pinMode(7, INPUT);
  pinMode(6, INPUT);  
 pinMode(5, INPUT); 
  pinMode(7, OUTPUT);
  pinMode(10, OUTPUT);
  pinMode(9, OUTPUT);
//  digitalWrite(13,LOW);
  digitalWrite(12,LOW);
  digitalWrite(11,LOW);
  digitalWrite(10,LOW);
  digitalWrite(9,LOW);
   // digitalWrite(7,LOW);
    digitalWrite(6,LOW);
    digitalWrite(5,LOW);
  Serial.begin(9600);
}

void loop()
{
 //a=digitalRead(7);
  b=analogRead(b1);
  c=analogRead(c1);
  Serial.println(b);
  Serial.println(c);
 
   
     if (b>800)
     {
      Serial.println("mtr 1 is working");
        digitalWrite(8,LOW);
        digitalWrite(7,HIGH);
       delay(1000);
       digitalWrite(8,LOW);
       digitalWrite(7,LOW);
       delay(5000);
        digitalWrite(7,LOW);
        digitalWrite(8,HIGH);
       delay(1000);
       digitalWrite(8,LOW);
       digitalWrite(7,LOW);
       
     }
    if(c>900)
    {
      Serial.println("mtr 1 & 2 are working");
       digitalWrite(10,LOW);
      digitalWrite(9,HIGH);
       digitalWrite(8,LOW);
        digitalWrite(7,HIGH);
       delay(1000);
      digitalWrite(10,LOW);
      digitalWrite(9,LOW);
       digitalWrite(8,LOW);
        digitalWrite(7,LOW);
             delay(5000);
       digitalWrite(10,HIGH);
      digitalWrite(9,LOW);
        digitalWrite(7,LOW);
        digitalWrite(8,HIGH);
       delay(1000);
      digitalWrite(10,LOW);
      digitalWrite(9,LOW);
       digitalWrite(8,LOW);
        digitalWrite(7,LOW);
         
    }
}
