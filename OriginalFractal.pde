public void setup()
{
  size(400, 400);
  background(350);
}
public void draw()
{
  strokeWeight(0);
  fill(150, 0, 0);
  fractal(30, 75, 215, 215);
}
public void fractal(int w, int x, int y, int z)
{
  if (z < 10)
  {
    pEllipse(w, x, y, z);
  }
  else if (z == 50)
  {
    pEllipse(0, 0, 50, 50);
    fractal(w+z/4, x+z/3, y+z/2, z/2);
    fractal(w+z/4, x+z/3, y+z/2, z/2);
    fractal(w+w/4, x+x/3, y, -z/2);
  }
  else
  {
    pEllipse(w, x, y, z);
    fractal(w+z/3, x+z, y+z/3, z/3);
    fractal(w+z-z/3, x+z/3, y+z/3, z/2);
  }
}
public void pEllipse(int w, int x, int y, int z){
  ellipse(w, x, y, z);
}
