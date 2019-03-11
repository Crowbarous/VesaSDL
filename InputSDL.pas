{ InputSDL.pas - Input subsystem of VesaSDL

Copyright (c) 2015-2018 NFS_MONSTR(Maxim Belyaev)

This software is provided 'as-is', without any express or implied
warranty. In no event will the authors be held liable for any damages
arising from the use of this software.

Permission is granted to anyone to use this software for any purpose,
including commercial applications, and to alter it and redistribute it
freely, subject to the following restrictions:

    1. The origin of this software must not be misrepresented; you must not
       claim that you wrote the original software. If you use this software
       in a product, an acknowledgement in the product documentation would be
       appreciated but is not required.
    2. Altered source versions must be plainly marked as such, and must not be
       misrepresented as being the original software.
    3. This notice may not be removed or altered from any source distribution.
}
unit InputSDL;

interface

uses
	SDL2;

const
	{Mouse}
	
	NoButton = 0;
	LeftButton = 1;
	MidButton = 2;
	RightButton = 3;
	BothButtons = 5; {For backward compatibility}
	LeftAndMidButton = 4;
	LeftAndRightButton = 5;
	MidAndRightButton = 6;
	LeftAndMidAndRightButton = 7;
	
	kUnknown = SDL_SCANCODE_UNKNOWN;
	kA = SDL_SCANCODE_A;
	kB = SDL_SCANCODE_B;
	kC = SDL_SCANCODE_C;
	kD = SDL_SCANCODE_D;
	kE = SDL_SCANCODE_E;
	kF = SDL_SCANCODE_F;
	kG = SDL_SCANCODE_G;
	kH = SDL_SCANCODE_H;
	kI = SDL_SCANCODE_I;
	kJ = SDL_SCANCODE_J;
	kK = SDL_SCANCODE_K;
	kL = SDL_SCANCODE_L;
	kM = SDL_SCANCODE_M;
	kN = SDL_SCANCODE_N;
	kO = SDL_SCANCODE_O;
	kP = SDL_SCANCODE_P;
	kQ = SDL_SCANCODE_Q;
	kR = SDL_SCANCODE_R;
	kS = SDL_SCANCODE_S;
	kT = SDL_SCANCODE_T;
	kU = SDL_SCANCODE_U;
	kV = SDL_SCANCODE_V;
	kW = SDL_SCANCODE_W;
	kX = SDL_SCANCODE_X;
	kY = SDL_SCANCODE_Y;
	kZ = SDL_SCANCODE_Z;
	
	k1 = SDL_SCANCODE_1;
	k2 = SDL_SCANCODE_2;
	k3 = SDL_SCANCODE_3;
	k4 = SDL_SCANCODE_4;
	k5 = SDL_SCANCODE_5;
	k6 = SDL_SCANCODE_6;
	k7 = SDL_SCANCODE_7;
	k8 = SDL_SCANCODE_8;
	k9 = SDL_SCANCODE_9;
	k0 = SDL_SCANCODE_0;
	
	kEnter = SDL_SCANCODE_RETURN;
	kEsc = SDL_SCANCODE_ESCAPE;
	kBackSpace = SDL_SCANCODE_BACKSPACE;
	kTab = SDL_SCANCODE_TAB;
	kSpace = SDL_SCANCODE_SPACE;
	kMinus = SDL_SCANCODE_MINUS;
	kEquals = SDL_SCANCODE_EQUALS; // =
	kLeftBracket = SDL_SCANCODE_LEFTBRACKET;  // [
	kRightBracket = SDL_SCANCODE_RIGHTBRACKET; // ]
	kBackSlash = SDL_SCANCODE_BACKSLASH; // \
	kSemicolon = SDL_SCANCODE_SEMICOLON;  // ;
	kApostrophe = SDL_SCANCODE_APOSTROPHE; // '
	kGrave = SDL_SCANCODE_GRAVE; // `
	kComma = SDL_SCANCODE_COMMA; // ,
	kDot = SDL_SCANCODE_PERIOD; // .
	kSlash = SDL_SCANCODE_SLASH; // /
	
	kCaps = SDL_SCANCODE_CAPSLOCK;
	
	kF1 = SDL_SCANCODE_F1;
	kF2 = SDL_SCANCODE_F2;
	kF3 = SDL_SCANCODE_F3;
	kF4 = SDL_SCANCODE_F4;
	kF5 = SDL_SCANCODE_F5;
	kF6 = SDL_SCANCODE_F6;
	kF7 = SDL_SCANCODE_F7;
	kF8 = SDL_SCANCODE_F8;
	kF9 = SDL_SCANCODE_F9;
	kF10 = SDL_SCANCODE_F10;
	kF11 = SDL_SCANCODE_F11;
	kF12 = SDL_SCANCODE_F12;
	
	kPrtScr = SDL_SCANCODE_PRINTSCREEN;
	kScrLock = SDL_SCANCODE_SCROLLLOCK;
	kPause = SDL_SCANCODE_PAUSE;
	kInsert = SDL_SCANCODE_INSERT;
	kHome = SDL_SCANCODE_HOME;
	kPgUp = SDL_SCANCODE_PAGEUP;
	kDel = SDL_SCANCODE_DELETE;
	kEnd = SDL_SCANCODE_END;
	kPgDown = SDL_SCANCODE_PAGEDOWN;
	kRight = SDL_SCANCODE_RIGHT;
	kLeft = SDL_SCANCODE_LEFT;
	kDown = SDL_SCANCODE_DOWN;
	kUp = SDL_SCANCODE_UP;
	
	// numpad
	
	kNumLock = SDL_SCANCODE_NUMLOCKCLEAR;
	kNumDiv = SDL_SCANCODE_KP_DIVIDE;
	kNumMul = SDL_SCANCODE_KP_MULTIPLY;
	kNumMinus = SDL_SCANCODE_KP_MINUS;
	kNumPlus = SDL_SCANCODE_KP_PLUS ;
	kNumEnter = SDL_SCANCODE_KP_ENTER;
	
	kNum1 = SDL_SCANCODE_KP_1;
	kNum2 = SDL_SCANCODE_KP_2;
	kNum3 = SDL_SCANCODE_KP_3;
	kNum4 = SDL_SCANCODE_KP_4;
	kNum5 = SDL_SCANCODE_KP_5;
	kNum6 = SDL_SCANCODE_KP_6;
	kNum7 = SDL_SCANCODE_KP_7;
	kNum8 = SDL_SCANCODE_KP_8;
	kNum9 = SDL_SCANCODE_KP_9;
	kNum0 = SDL_SCANCODE_KP_0;
	
	kNumDot = SDL_SCANCODE_KP_PERIOD;
	kNumEquals = SDL_SCANCODE_KP_EQUALS;
	kNumComma = SDL_SCANCODE_KP_COMMA;
	kNumEQUALSAS400 = SDL_SCANCODE_KP_EQUALSAS400;
	
	kApp = SDL_SCANCODE_APPLICATION;
	kPower = SDL_SCANCODE_POWER;
	
	
	kF13 = SDL_SCANCODE_F13;
	kF14 = SDL_SCANCODE_F14;
	kF15 = SDL_SCANCODE_F15;
	kF16 = SDL_SCANCODE_F16;
	kF17 = SDL_SCANCODE_F17;
	kF18 = SDL_SCANCODE_F18;
	kF19 = SDL_SCANCODE_F19;
	kF20 = SDL_SCANCODE_F20;
	kF21 = SDL_SCANCODE_F21;
	kF22 = SDL_SCANCODE_F22;
	kF23 = SDL_SCANCODE_F23;
	kF24 = SDL_SCANCODE_F24;
	
	kExecute = SDL_SCANCODE_EXECUTE;
	kHelp = SDL_SCANCODE_HELP;
	kMenu = SDL_SCANCODE_MENU;
	kSelect = SDL_SCANCODE_SELECT;
	kStop = SDL_SCANCODE_STOP;
	kAgain = SDL_SCANCODE_AGAIN;
	kUndo = SDL_SCANCODE_UNDO;
	kCut = SDL_SCANCODE_CUT;
	kCopy = SDL_SCANCODE_COPY;
	kPaste = SDL_SCANCODE_PASTE;
	kFind = SDL_SCANCODE_FIND;
	kMute = SDL_SCANCODE_MUTE;
	kVolumeUp = SDL_SCANCODE_VOLUMEUP;
	kVolumeDown = SDL_SCANCODE_VOLUMEDOWN;
	
	kInt1 = SDL_SCANCODE_INTERNATIONAL1;
	kInt2 = SDL_SCANCODE_INTERNATIONAL2;
	kInt3 = SDL_SCANCODE_INTERNATIONAL3;
	kInt4 = SDL_SCANCODE_INTERNATIONAL4;
	kInt5 = SDL_SCANCODE_INTERNATIONAL5;
	kInt6 = SDL_SCANCODE_INTERNATIONAL6;
	kInt7 = SDL_SCANCODE_INTERNATIONAL7;
	kInt8 = SDL_SCANCODE_INTERNATIONAL8;
	kInt9 = SDL_SCANCODE_INTERNATIONAL9;
	kLang1 = SDL_SCANCODE_LANG1;
	
	kCtrl = 224;
	kLCtrl = 224;
	kRCtrl = 228;
	kLCtrlMod = kMod_LCtrl;
	kRCtrlMod = kMod_RCtrl;
	
	kShift = 225;
	kLShift = 225;
	kRShift = 229;
	kLShiftMod = kMod_LShift;
	kRShiftMod = kMod_RShift;
	
	kAlt = 226;
	kLAlt = 226;
	kRAlt = 230;
	kLAltMod = kMod_LAlt;
	kRAltMod = kMod_RAlt;
	
	kGui = 227;
	kLGui = 227;
	KRGui = 231;
	kLGuiMod = kMod_LGui;
	kRGuiMod = kMod_RGui;

type
	tkey = record
		
		key : tsdl_keysym;
		mod_ : word;
	end;

	pBool = ^boolean;

var
	keys : pBool;
	
	mousex, mousey,
	mouseScrollHor, mouseScrollVert : Longint;
	
	mousebutton, countmousebuttonspressed : integer;
	
	lastkey : tkey;

procedure InputInit;
procedure KeyboardInit;
procedure KeyboardDone;
procedure InputUpdate;
	
function ReadKey (var x : ansistring; var keymod : word) : integer;
function ReadKey (var x : char; var keymod : word) : integer;


implementation


procedure InputUpdate;
var
	p, p1 : plongint;
	event : pSDL_Event;
begin
	new(event);
	
	if (SDL_PollEvent(event) = 1) then begin
		
		if (event^.type_ = SDL_QUITEV) then begin
			
			sdl_quit;
			halt(0);
		end;
		
		if (event^.type_ = sdl_mousemotion) then begin
			
			new(p);
			new(p1);
			
			sdl_getmousestate(p,p1);
			
			mousex:=p^;
			mousey:=p1^;
			
			dispose(p);
			dispose(p1);
		end;
		
		if (event^.type_ = SDL_MouseButtonDown) then begin
			
			if (countmousebuttonspressed = 0) then
				mousebutton := event^.button.button;
			
			if (countmousebuttonspressed > 0) then
				mousebutton += event^.button.button + 1;
			
			inc(countmousebuttonspressed);
		end;
		
		if (event^.type_ = SDL_MouseButtonUp) then begin
			
			if ((countmousebuttonspressed = 1) or (countmousebuttonspressed = 3)) then
				mousebutton -= event^.button.button;
			
			if (countmousebuttonspressed = 2) then
				mousebutton -= event^.button.button - 1;
			
			dec(countmousebuttonspressed);
		end;
		
		if (event^.type_ = sdl_keydown) then begin
			
			lastkey.key := event^.key.keysym;
			lastkey.mod_ := sdl_getmodstate;
		end;
		
		if (Event^.type_ = SDL_MOUSEWHEEL) then begin
		
			mouseScrollHor := Event^.wheel.x;
			mouseScrollVert := event^.wheel.y;
			
		end else begin
			
			mouseScrollHor:=0;
			mouseScrollVert:=0;
		end;
	end;
	
	dispose(event);
end;


function ReadKey (var x : ansistring; var keymod : word) : integer;
begin
	if (lastkey.key.sym <> -1) then begin
		
		ReadKey := lastkey.key.scancode;
		keymod := lastkey.mod_;
		x := SDL_GetKeyName(lastkey.key.sym);
		lastkey.key.sym := -1;
		
	end else begin
	
		ReadKey := -1;
		x := '';
	end;
end;


function ReadKey(var x:char; var keymod:word):integer;
begin
	if (lastkey.key.sym <> -1) then begin
		
		ReadKey := lastkey.key.scancode;
		keymod := lastkey.mod_;
		x := char(lastkey.key.sym);
		lastkey.key.sym := -1;
		
	end else begin
	
		ReadKey := -1;
		x := #0;
	end;
end;


procedure InputInit;
begin
	keys := pBool(SDL_GetKeyboardState(nil));
	
	lastkey.key.sym := -1;
	SDL_PumpEvents;
	
	mousebutton := 0;
	mouseScrollHor := 0;
	mouseScrollVert := 0;
	
	countmousebuttonspressed := 0;
	
	inputupdate;
end;


// For backward compatibility
procedure KeyboardInit;
begin
	InputInit;
end;

// For backward compatibility
procedure KeyboardDone;
begin
end;


begin
end.
