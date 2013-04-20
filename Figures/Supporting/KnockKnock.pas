program KnockKnock;
uses SwinGame;

procedure LoadResources();
begin
  LoadBitmapNamed('door', 'KnockKnock.jpg');
  LoadSoundEffectNamed('knock', 'door-knock-3.wav');
  LoadFontNamed('joke font', 'Action Man.ttf', 48)
end;

procedure DrawDoor();
begin
  DrawBitmap('door', 0, 0);
  RefreshScreen();
  Delay(2000);
end;

procedure ClearAreaForText(); ...

procedure ShowKnockKnock();
begin
  ClearAreaForText();
  PlaySoundEffect('knock');
  DrawText('Knock knock...', ColorWhite, 'joke font', 200,500);
  RefreshScreen();
  Delay(2000)
end;

procedure Main(); ...

begin
  Main();
end.
