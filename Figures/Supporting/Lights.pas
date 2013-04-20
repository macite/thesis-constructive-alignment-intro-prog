program GameMain;
uses SwinGame, sgTypes;

procedure LoadResources();
begin
	LoadBitmapNamed('on', 'on.png');
	LoadBitmapNamed('off', 'off.png');
end;

procedure DrawLight(isOn: Boolean; x, y: Integer);
begin
	if isOn then
		DrawBitmap('on', x, y)
	else
		DrawBitmap('off', x, y);
end;

procedure Main();
var
	lightX, lightY: Integer;
	lightIsOn: Boolean;
begin
	lightX := 10;
	lightY := 10;
	lightIsOn := False;

	OpenGraphicsWindow('Light Switch', 800, 600);
	LoadDefaultColors();
	LoadResources();

	repeat
		ProcessEvents();

		if KeyTyped(vk_Space) or MouseClicked(LeftButton) then
			lightIsOn := not lightIsOn;

		if KeyDown(vk_Left) then lightX := lightX - 1;

		if KeyDown(vk_Right) then lightX := lightX + 1;

		if lightX < 0 then lightX := 0;

		ClearScreen(ColorWhite);
		DrawLight(lightIsOn, lightX, lightY);
		RefreshScreen();
	until WindowCloseRequested() or KeyTyped(vk_Escape);
end;

begin
	Main();
end.
