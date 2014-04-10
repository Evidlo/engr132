function varargout = Intro_nluehrs(varargin)
% INTRO_NLUEHRS MATLAB code for Intro_nluehrs.fig
%      INTRO_NLUEHRS, by itself, creates a new INTRO_NLUEHRS or raises the existing
%      singleton*.
%
%      H = INTRO_NLUEHRS returns the handle to a new INTRO_NLUEHRS or the handle to
%      the existing singleton*.
%
%      INTRO_NLUEHRS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INTRO_NLUEHRS.M with the given input arguments.
%
%      INTRO_NLUEHRS('Property','Value',...) creates a new INTRO_NLUEHRS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Intro_nluehrs_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Intro_nluehrs_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Intro_nluehrs

% Last Modified by GUIDE v2.5 09-Apr-2014 21:40:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Intro_nluehrs_OpeningFcn, ...
                   'gui_OutputFcn',  @Intro_nluehrs_OutputFcn, ...
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


% --- Executes just before Intro_nluehrs is made visible.
function Intro_nluehrs_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Intro_nluehrs (see VARARGIN)

% Choose default command line output for Intro_nluehrs
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Intro_nluehrs wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Intro_nluehrs_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in push_mainmenu.
function push_mainmenu_Callback(hObject, eventdata, handles)
% hObject    handle to push_mainmenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
nanoGUI_sec005_team18;
close;

% --- Executes on button press in push_continue.
function push_continue_Callback(hObject, eventdata, handles)
% hObject    handle to push_continue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
NanoSize_nluehrs;
close;

% --- Executes on button press in push_exit.
function push_exit_Callback(hObject, eventdata, handles)
% hObject    handle to push_exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;
