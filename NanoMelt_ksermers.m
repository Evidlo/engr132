function varargout = NanoMelt_ksermers(varargin)
% NANOMELT_KSERMERS MATLAB code for NanoMelt_ksermers.fig
%      NANOMELT_KSERMERS, by itself, creates a new NANOMELT_KSERMERS or raises the existing
%      singleton*.
%
%      H = NANOMELT_KSERMERS returns the handle to a new NANOMELT_KSERMERS or the handle to
%      the existing singleton*.
%
%      NANOMELT_KSERMERS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NANOMELT_KSERMERS.M with the given input arguments.
%
%      NANOMELT_KSERMERS('Property','Value',...) creates a new NANOMELT_KSERMERS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before NanoMelt_ksermers_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to NanoMelt_ksermers_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help NanoMelt_ksermers

% Last Modified by GUIDE v2.5 09-Apr-2014 20:21:45

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @NanoMelt_ksermers_OpeningFcn, ...
                   'gui_OutputFcn',  @NanoMelt_ksermers_OutputFcn, ...
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


% --- Executes just before NanoMelt_ksermers is made visible.
function NanoMelt_ksermers_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to NanoMelt_ksermers (see VARARGIN)

% Choose default command line output for NanoMelt_ksermers
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes NanoMelt_ksermers wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = NanoMelt_ksermers_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in push_Main_Menu.
function push_Main_Menu_Callback(hObject, eventdata, handles)
nanohubGUI_sec005_team18 %open Main Menu
close(NanoMelt_ksermers); %close gui
% hObject    handle to push_Main_Menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in push_Previous.
function push_Previous_Callback(hObject, eventdata, handles)
NanoMeltIntro_ksermers %open NanoMeltIntro_ksermers
close(NanoMelt_ksermers); %close gui
% hObject    handle to push_Previous (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in push_Exit.
function push_Exit_Callback(hObject, eventdata, handles)
close(NanoMelt_ksermers); %close gui
% hObject    handle to push_Exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on slider movement.
function slide_Radius_Callback(hObject, eventdata, handles)
% hObject    handle to slide_Radius (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slide_Radius_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slide_Radius (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in push_Graph.
function push_Graph_Callback(hObject, eventdata, handles)
% hObject    handle to push_Graph (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
