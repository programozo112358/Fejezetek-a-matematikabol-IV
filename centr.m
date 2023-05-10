function varargout = centr(varargin)
% CENTR MATLAB code for centr.fig
%      CENTR, by itself, creates a new CENTR or raises the existing
%      singleton*.
%
%      H = CENTR returns the handle to a new CENTR or the handle to
%      the existing singleton*.
%
%      CENTR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CENTR.M with the given input arguments.
%
%      CENTR('Property','Value',...) creates a new CENTR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before centr_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to centr_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help centr

% Last Modified by GUIDE v2.5 06-Mar-2023 12:24:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @centr_OpeningFcn, ...
                   'gui_OutputFcn',  @centr_OutputFcn, ...
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


% --- Executes just before centr is made visible.
function centr_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to centr (see VARARGIN)

% Choose default command line output for centr
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes centr wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = centr_OutputFcn(hObject, eventdata, handles) 
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
try  
    if handles.rbtnEgyenletes.Value
        a = rand(n,m);
        E = 0.5;D = sqrt(1/12);
    end
    if handles.rbtnExponencialis.Value
        lambda = 2;
        a = exprnd(1/lambda,n,m);
        E = 1/lambda;D = 1/lambda;
    end
    if handles.rbtnLognormalis.Value
        mu = 0;sigma = 1;
        a = logrnd(mu,sigma,n,m);
        E = exp(mu+0.5*sigma^2);D = E*sqrt(exp(sigma^2)-1);
    end
    kszi = (sum(a))-n*E/(sqrt(n)*D);
    x = -4:0.1:4;
    histogram(handles.hPicture,kszi,x,'normalization','pdf');
    hold(handles.hPicture,'on');
    plot(handles.hPicture,x,normpdf(x),'r','LineWidth',3)
    hold(handles.hPicture,'off');
catch ME
    msgbox(ME.message);
end
