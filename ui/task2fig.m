function varargout = task2fig(varargin)
% TASK2FIG MATLAB code for task2fig.fig
%      TASK2FIG, by itself, creates a new TASK2FIG or raises the existing
%      singleton*.
%
%      H = TASK2FIG returns the handle to a new TASK2FIG or the handle to
%      the existing singleton*.
%
%      TASK2FIG('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TASK2FIG.M with the given input arguments.
%
%      TASK2FIG('Property','Value',...) creates a new TASK2FIG or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before task2fig_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to task2fig_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help task2fig

% Last Modified by GUIDE v2.5 19-May-2021 17:06:59

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @task2fig_OpeningFcn, ...
                   'gui_OutputFcn',  @task2fig_OutputFcn, ...
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


% --- Executes just before task2fig is made visible.
function task2fig_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to task2fig (see VARARGIN)

handles.membrane=membrane;
x = 0:0.01:15;
s = sin(x);
handles.cb1 = 0;
handles.cb2 = 0;
handles.s = s;
% Set the current data value.
plot(0,0);
grid on

% Choose default command line output for task2fig
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes task2fig wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = task2fig_OutputFcn(hObject, eventdata, handles) 
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
x = 0:0.01:15;
s = sin(x);
c = cos(x);

if handles.cb1
    if handles.cb2
        hold off
        plot(x,c);
        hold on
        grid on
        plot(x,s);
    else
        hold off
        plot(x,s);
        grid on
    end
else
    if handles.cb2
        hold off
        plot(x,c);
        grid on
    else
        hold off
        plot(x,0*x,'k');
        grid on
    end
end
% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1
handles.cb1 = get(hObject,'Value');
guidata(hObject,handles)

% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2
handles.cb2 = get(hObject,'Value');
guidata(hObject,handles)