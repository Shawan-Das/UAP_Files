byte m,n,x,y;
int Z=7;
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(13,INPUT);
  pinMode(12,INPUT);
  pinMode(11,INPUT);
  pinMode(10,INPUT);
  pinMode(Z,OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  m=digitalRead(13);
  n=digitalRead(12);
  x=digitalRead(11);
  y=digitalRead(10);
  
  byte Bangladesh= bitRead(2,1);
  byte New_Zealand= bitRead(2,0);

//  Serial.println(Bangladesh);
//  Serial.println(New_Zealand);

  if((!m)&&(!n)){
    digitalWrite(Z,y|x|Bangladesh);
  }
  else if((!m)&&n){
    digitalWrite(Z,y^x^bitRead(14,0));
  }
  else if(m && (!n)){
    digitalWrite(Z,y+(!x +1)-New_Zealand);
  }
  else if(m&&n){
    Serial.println("New Zealand will be whitewashed by Bangladesh");
  }
}
