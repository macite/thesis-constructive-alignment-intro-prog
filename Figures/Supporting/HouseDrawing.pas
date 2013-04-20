program HouseDrawing;
uses SwinGame;

procedure DrawBackground();
begin
  ClearScreen(ColorWhite);
  FillEllipse(ColorGreen, 0, 400, 800, 400);
end;

procedure DrawHouse();
begin
  FillRectangle(ColorGrey, 300, 300, 200, 200);
  FillTriangle(ColorRed, 250, 300, 400, 150, 550, 300);
end;

procedure Main();
begin
    OpenGraphicsWindow('House Drawing', 800, 600);
    
    DrawBackground();
    DrawHouse();
    
    RefreshScreen();
    Delay(5000);
end;

begin
  Main();
end.
