function varargout = BabyGroot(varargin)
% BABYGROOT MATLAB code for BabyGroot.fig
%      BABYGROOT, by itself, creates a new BABYGROOT or raises the existing
%      singleton*.
%
%      H = BABYGROOT returns the handle to a new BABYGROOT or the handle to
%      the existing singleton*.
%
%      BABYGROOT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BABYGROOT.M with the given input arguments.
%
%      BABYGROOT('Property','Value',...) creates a new BABYGROOT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before BabyGroot_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to BabyGroot_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help BabyGroot

% Last Modified by GUIDE v2.5 29-May-2017 03:34:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @BabyGroot_OpeningFcn, ...
                   'gui_OutputFcn',  @BabyGroot_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before BabyGroot is made visible.
function BabyGroot_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to BabyGroot (see VARARGIN)

% Choose default command line output for BabyGroot
handles.output = hObject;
grid on;
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes BabyGroot wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = BabyGroot_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
X=[122 130 149 175 231 262 292 323 348 382 410 436 462 485 503 520 532 536 542 ; 77 70 59 43 30 31 36 42 47 54 59 65 75 92 115 143 173 188 237];
spline3(X);

X=[128 137 147 ; 81 88 95];
spline3(X);

X=[23 24 25 26 29 35 45 53 64 87 114 136; 245 236 221 202 182 158 134 116 113 109 104 100];
spline3(X);

X=[29 51 67 85 103 110 ; 245 248 250 252 257 260];
spline3(X);

X=[68 71 83 92 111 ; 332 319 283 268 262];
spline3(X);

X=[67 73 81 87 96 ;336 335 375 387 406];
spline3(X);

X=[102 115 129 ; 409 411 413];
spline3(X);

X=[108 119 ; 445 450];
spline3(X);

X=[101 108 119 ; 480 467 450];
spline3(X);

X=[111 127 ; 492 493];
spline3(X);

X=[135 146 154 170 180 215 246 280 334 390 444 483 513 530 539 541 542 ; 488 474 446 446 451 470 482 471 458 448 434 409 376 331 299 270 237];
spline3(X);

X=[111 127 ; 492 493];
spline3(X);

X=[107 111 122 131; 445 432 421 415];
spline3(X);

%ojos
X=[323 324 331 342 360 385 403 420 429 433; 142 133 116 103 89 89 95 110 128 145];
spline3(X);

X=[324 328 340 354 382 406 426 433; 151 171 185 195 198 190 169 145];
spline3(X);

X=[321 323 330 338 353 376 393 413 428 432; 361 342 322 316 308 302 304 316 339 363];
spline3(X);

X=[321 322 335 353 377 400 416 427 432; 376 377 398 409 413 409 396 382 364];
spline3(X);
grid on;

camroll(-90);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla reset; grid on;