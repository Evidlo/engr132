function varargout = NanoMeltIntro_ksermers(varargin)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% ENGR 13200 Spring 2014 
% Programmer(s) and Purdue Email Address(es): 
% 1. Kurt Sermersheim, ksermers@purdue.edu 
% 
% Other Contributor(s) and Purdue Email Address(es): 
% 1. Name login@purdue.edu 
% 
% Section #: 005 Team #: 18
% Assignment: nanoHUB Project 
% 
% Academic Integrity Statement: 
% I/We have not used source code obtained from 
% any other unauthorized source, either modified 
% or unmodified. Neither have I/we provided access 
% to my/our code to another. The project I/we am/are 
% submitting is my/our own original work. 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

%NANOMELTINTRO_KSERMERS M-file for NanoMeltIntro_ksermers.fig
%      NANOMELTINTRO_KSERMERS, by itself, creates a new NANOMELTINTRO_KSERMERS or raises the existing
%      singleton*.
%
%      H = NANOMELTINTRO_KSERMERS returns the handle to a new NANOMELTINTRO_KSERMERS or the handle to
%      the existing singleton*.
%
%      NANOMELTINTRO_KSERMERS('Property','Value',...) creates a new NANOMELTINTRO_KSERMERS using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to NanoMeltIntro_ksermers_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      NANOMELTINTRO_KSERMERS('CALLBACK') and NANOMELTINTRO_KSERMERS('CALLBACK',hObject,...) call the
%      local function named CALLBACK in NANOMELTINTRO_KSERMERS.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help NanoMeltIntro_ksermers

% Last Modified by GUIDE v2.5 15-Apr-2014 16:29:06

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @NanoMeltIntro_ksermers_OpeningFcn, ...
                   'gui_OutputFcn',  @NanoMeltIntro_ksermers_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
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


% --- Executes just before NanoMeltIntro_ksermers is made visible.
function NanoMeltIntro_ksermers_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for NanoMeltIntro_ksermers
handles.output = hObject;
axes(handles.plot_Image)
imshow('nanocubes.jpg')
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes NanoMeltIntro_ksermers wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = NanoMeltIntro_ksermers_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in push_Main_Menu.
function push_Main_Menu_Callback(hObject, eventdata, handles)
nanohubGUI_sec005_team18 %open Main Menu
close(NanoMeltIntro_ksermers); %close gui
% hObject    handle to push_Main_Menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in push_Exit.
function push_Exit_Callback(hObject, eventdata, handles)
close(NanoMeltIntro_ksermers); % close GUI
% hObject    handle to push_Exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in push_Next.
function push_Next_Callback(hObject, eventdata, handles)
NanoMelt_ksermers %open NanoMelt_ksermers
close(NanoMeltIntro_ksermers); %close gui
% hObject    handle to push_Next (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
