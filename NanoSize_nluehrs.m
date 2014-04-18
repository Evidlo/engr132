function varargout = NanoSize_nluehrs(varargin)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% ENGR 13200 Spring 2014 
% Programmer(s) and Purdue Email Address(es): 
% 1. Nelson Luehrs, nluehrs@purdue.edu 
% 
% Other Contributor(s) and Purdue Email Address(es): 
% 1.none 
% 
% Section #:005 Team #:18 
% Assignment: nanoHUB Project 
% 
% Academic Integrity Statement: 
% I/We have not used source code obtained from 
% any other unauthorized source, either modified 
% or unmodified. Neither have I/we provided access 
% to my/our code to another. The project I/we am/are 
% submitting is my/our own original work. 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

% NANOSIZE_NLUEHRS MATLAB code for NanoSize_nluehrs.fig
%      NANOSIZE_NLUEHRS, by itself, creates a new NANOSIZE_NLUEHRS or raises the existing
%      singleton*.
%
%      H = NANOSIZE_NLUEHRS returns the handle to a new NANOSIZE_NLUEHRS or the handle to
%      the existing singleton*.
%
%      NANOSIZE_NLUEHRS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NANOSIZE_NLUEHRS.M with the given input arguments.
%
%      NANOSIZE_NLUEHRS('Property','Value',...) creates a new NANOSIZE_NLUEHRS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before NanoSize_nluehrs_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to NanoSize_nluehrs_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help NanoSize_nluehrs

% Last Modified by GUIDE v2.5 18-Apr-2014 15:24:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @NanoSize_nluehrs_OpeningFcn, ...
                   'gui_OutputFcn',  @NanoSize_nluehrs_OutputFcn, ...
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


% --- Executes just before NanoSize_nluehrs is made visible.
function NanoSize_nluehrs_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to NanoSize_nluehrs (see VARARGIN)

% Choose default command line output for NanoSize_nluehrs
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes NanoSize_nluehrs wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = NanoSize_nluehrs_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in push_previous.
function push_previous_Callback(hObject, eventdata, handles)
% hObject    handle to push_previous (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
NanoSizeIntro_nluehrs;
close(NanoSize_nluehrs);

% --- Executes on button press in push_exit.
function push_exit_Callback(hObject, eventdata, handles)
% hObject    handle to push_exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(NanoSize_nluehrs);

% --- Executes on button press in push_mainmenu.
function push_mainmenu_Callback(hObject, eventdata, handles)
% hObject    handle to push_mainmenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
nanohubGUI_sec005_team18;
close(NanoSize_nluehrs);
