void settings()
{
  size(500,500);
}
void setup()
  {
    noLoop();
  }
  void draw()
  {
      //your code here
      background(420);
      int myTotal=0;
      for (int y =50; y <=175; y= y+ 125){
        for (int x=0; x<=125; x=x+125){
          Die mePlease= new Die(x,y);
          mePlease.roll();
          mePlease.show();
          myTotal= myTotal + mePlease.myRoll;
        }
      }
      int theirTotal=0;     
      for (int y =50; y <=175; y= y+ 125){
        for (int x=275; x<=400; x=x+125){
          Die themPlease= new Die(x,y);
          themPlease.roll();
          themPlease.show();
          theirTotal= theirTotal + themPlease.myRoll;
        }
      } 
      fill(255);
      text("You                            Versus              A CPU named Switch",100,25);
      text("Your Total: " +myTotal, 90,300);
      text("Switch's Total: " +theirTotal, 360,300);
         rect(200,375, 100,100);
         fill(0);
         rect(185,400,15,40);
         rect(300,400,15,40);
         rect(230,360,40,15);
         rect(220,400,20,20);
         rect(260,400,20,20);
         rect(235,440,30,11);
         fill(255);
         rect(226,402,8,8);
         rect(266,402,8,8);
      if(myTotal>theirTotal){
        text("You Win!!",225,325);
        fill(0);
        rect(235,440,30,15);
        rect(230,450,10,10);
        rect(260,450,10,10);
        rect(225,420,5,5);
      }else if(myTotal<theirTotal){
        text("You Lose...",225,325);
        fill(0);
        rect(235,440,30,15);
        rect(230,435,10,10);
        rect(260,435,10,10);
      }else{
        text("It's a tie??",225,325);
        fill(0);
        rect(225,440,50,15);
      }   
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      //member variable declarations here
      int theX, theY, myRoll;
      Die(int x, int y) //constructor
      {
          //variable initializations here
          theX= x;
          theY= y;
      }
      void roll()
      {
          //your code here
          myRoll= (int)((Math.random()*6)+1);
      }
      void show()
      {
          //your code here
          fill(255);
          rect(theX,theY,100,100);
          if(myRoll==1){
            fill(0);
            ellipse(theX+50,theY+50,10,10);
          }else if(myRoll==2){
            fill(0);
            ellipse(theX+75,theY+25,10,10);
            ellipse(theX+25,theY+75,10,10);
          }else if(myRoll==3){
            fill(0);
            ellipse(theX+50,theY+50,10,10);
            ellipse(theX+75,theY+25,10,10);
            ellipse(theX+25,theY+75,10,10);
         }else if(myRoll==4){
           fill(0);
           ellipse(theX+75,theY+25,10,10);
           ellipse(theX+25,theY+75,10,10);
           ellipse(theX+75,theY+75,10,10);
           ellipse(theX+25,theY+25,10,10);
         }else if(myRoll==5){
           fill(0);
           ellipse(theX+75,theY+25,10,10);
           ellipse(theX+25,theY+75,10,10);
           ellipse(theX+75,theY+75,10,10);
           ellipse(theX+25,theY+25,10,10);
           ellipse(theX+50,theY+50,10,10);
         }else{
           fill(0);
           ellipse(theX+75,theY+25,10,10);
           ellipse(theX+25,theY+75,10,10);
           ellipse(theX+75,theY+75,10,10);
           ellipse(theX+25,theY+25,10,10);
           ellipse(theX+75,theY+50,10,10);
           ellipse(theX+25,theY+50,10,10);
         }
      }
  }
