function varargout = Newton_Rhapson(varargin)
% NEWTON_RHAPSON MATLAB code for Newton_Rhapson.fig
%      NEWTON_RHAPSON, by itself, creates a new NEWTON_RHAPSON or raises the existing
%      singleton*.
%
%      H = NEWTON_RHAPSON returns the handle to a new NEWTON_RHAPSON or the handle to
%      the existing singleton*.
%
%      NEWTON_RHAPSON('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NEWTON_RHAPSON.M with the given input arguments.
%
%      NEWTON_RHAPSON('Property','Value',...) creates a new NEWTON_RHAPSON or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Newton_Rhapson_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Newton_Rhapson_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Newton_Rhapson

% Last Modified by GUIDE v2.5 03-Apr-2017 21:01:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Newton_Rhapson_OpeningFcn, ...
                   'gui_OutputFcn',  @Newton_Rhapson_OutputFcn, ...
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


% --- Executes just before Newton_Rhapson is made visible.
function Newton_Rhapson_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Newton_Rhapson (see VARARGIN)

% Choose default command line output for Newton_Rhapson
%handles.output = hObject;

% Update handles structure
%guidata(hObject, handles);

% UIWAIT makes Newton_Rhapson wait for user response (see UIRESUME)
% uiwait(handles.figure1);
%background = imread('back.jpg'); %Leer imagen
%axes(handles.background); %Carga la imagen en background
%axis off;
%imshow(background); %Presenta la imagen
handles.output = hObject;
guidata(hObject, handles);



% --- Outputs from this function are returned to the command line.
function varargout = Newton_Rhapson_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double

Val=get(hObject,'String'); %Almacenar valor ingresado
NewVal = Val; %Se queda en String
handles.edit1=NewVal; %Almacenar en identificador
guidata(hObject,handles); %Salvar datos de la aplicación


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
fx=sym(handles.edit1);
gx=diff(fx);

x=str2double(handles.edit3);
ansx=x;
tol=str2double(handles.edit5);
it=0;
while abs(eval(fx)) > tol
    ansx=x;
    x=x-eval(fx)/eval(gx);
    it=it+1;
end
x=ansx;
set(handles.text12,'String', it-1);
set(handles.text13,'String', x);
set(handles.text14,'String', eval(fx));
set(handles.text15,'String', eval(gx));
    

function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double

Val=get(hObject,'String'); %Almacenar valor ingresado
NewVal = Val; %Transformar a formato double
handles.edit3=NewVal; %Almacenar en identificador
guidata(hObject,handles); %Salvar datos de la aplicación


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double

Val=get(hObject,'String'); %Almacenar valor ingresado
NewVal = Val; %Transformar a formato double
handles.edit5=NewVal; %Almacenar en identificador
guidata(hObject,handles); %Salvar datos de la aplicación



% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
