//move person 2 left and right
int x = 100;
//move person 1 left and right
int y = 20;

//moving arms up and down for person1
int q = 45;
int w = 45;

//making the background color random
int r = (int)(Math.random()*255);
int b = (int)(Math.random()*255);
int g = (int)(Math.random()*255);




void setup()
{
  size(200,100);
  //frameRate(0.5);
  noLoop();

}


void draw()
{
	background(r,g,b);
	text("DANCE PARTY!!!", 50,10);
	person1();
	person2();

}


void person1()
{

	//arms
	strokeWeight(3);
	stroke(0,0,0);
	line(37+y, 57, 60+y,q);
	line(37-16+y, 57, 5+y,q);

	//line(37+y, 57, 60+y,30+45);
	//line(37-16+y, 57, 5+y,30+45);

	//Make arms move
	q= q + 45;
		if (q > 75)
		{
			q= 30;
		}

	
	strokeWeight(1);
	//body
	fill(0,255,50);
	rect(20+y,40,20,40);

	//head
	fill(255,224,189);
	ellipse(30+y,40,30,30);

	//facial expressions
	stroke(0,0,0);
	//arc(36, 39, 8, 7, PI/4, 7*PI/4);
	line(36+y, 35, 36+y,43);
	line(23+y, 35, 23+y,43);
	fill(250,0,0);
	arc(29+y, 46, 10, 9, 0, PI);

}


void person2()
{
	//body
	fill(0,255,50);
	rect(20 +x,40,20,40);

	//head
	fill(255,224,189);
	ellipse(30+x,40,30,30);

	//facial expressions
	stroke(0,0,0);
	//arc(36, 39, 8, 7, PI/4, 7*PI/4);
	line(36+x+05, 35, 36+x-3,42);
	line(23+x-5, 35, 23+x+3,42);
	
	//mouth
	arc(29+x, 46, 5, 4, PI/2, 3*PI/2);
	arc(29+x, 50, 5, 4, PI/2, 3*PI/2);

	//arms
	strokeWeight(3);
	line(37+x, 30, 60+x,30);
	line(37+x, 57, 60+x,30);
	line(37-17+x, 57, 0+x,w);

	//make arms move
	w= w + 25;
		if (w > 70)
		{
			w= 45;
		}



	//line(37-17+x, 57, 0+x,70-25);


}

 
void mousePressed()
{
 r = (int)(Math.random()*255);
 b = (int)(Math.random()*255);
 g = (int)(Math.random()*255);

	redraw();

}








//mr simon's smiley
void smiley()
{
  fill(255,255,0);
  ellipse(100,50,80,80);
  arc(100,50,60,60,PI/8,7*PI/8);
  fill(0,0,0);
  ellipse(85,40,10,15);
  ellipse(115,40,10,15);
}


