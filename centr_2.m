function varargout = centr_2(varargin)
% CENTR_2 MATLAB code for centr_2.fig
%      CENTR_2, by itself, creates a new CENTR_2 or raises the existing
%      singleton*.
%
%      H = CENTR_2 returns the handle to a new CENTR_2 or the handle to
%      the existing singleton*.
%
%      CENTR_2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CENTR_2.M with the given input arguments.
%
%      CENTR_2('Property','Value',...) creates a new CENTR_2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before centr_2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to centr_2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help centr_2

% Last Modified by GUIDE v2.5 12-Mar-2023 18:41:28

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @centr_2_OpeningFcn, ...
                   'gui_OutputFcn',  @centr_2_OutputFcn, ...
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


% --- Executes just before centr_2 is made visible.
function centr_2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to centr_2 (see VARARGIN)

% Choose default command line output for centr_2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes centr_2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = centr_2_OutputFcn(hObject, eventdata, handles) 
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



function txtN_Callback(hObject, eventdata, handles)
% hObject    handle to txtN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtN as text
%        str2double(get(hObject,'String')) returns contents of txtN as a double


% --- Executes during object creation, after setting all properties.
function txtN_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function txtM_Callback(hObject, eventdata, handles)
% hObject    handle to txtM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtM as text
%        str2double(get(hObject,'String')) returns contents of txtM as a double


% --- Executes during object creation, after setting all properties.
function txtM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnStart.
function btnStart_Callback(hObject, eventdata, handles)
% hObject    handle to btnStart (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try
    n = round(str2num(handles.txtN.String));
    m = round(str2num(handles.txtM.String));
    a = rand(n,m);
    E = 0.5;D = sqrt(1/12);
    kszi = (sum(a)-n*E)/(sqrt(n)*D);
    x = -4:0.1:4;
    histogram(handles.hPicture,kszi,x,'normalization','pdf');
    hold(handles.hPicture,'on');
    plot(handles.hPicture,x,normpdf(x),'r','Linewidth',3);
    hold(handles.hPicture,'off');
catch ME
    msgbox(ME.message);
end
