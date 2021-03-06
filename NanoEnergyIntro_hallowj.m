function varargout = NanoEnergyIntro_hallowj(varargin)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  ENGR 13200 Spring 2014
%  Programmer(s) and Purdue Email Address(es):
%  1. Jaccob Hallow, hallowj@purdue.edu
% 
% 
% Section #:005 Team #:18
% Assignment:
%   nanoHUB Project
% 
%  Academic Integrity Statement:
% 
% I/We have not used source code obtained from
% any other unauthorized source, either modified
% or unmodified. Neither have
% I/we provided access
% to my/our code to another. The project I/we am/are
% submitting is my/our own original work.
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% NANOENERGYINTRO_HALLOWJ MATLAB code for NanoEnergyIntro_hallowj.fig
%      NANOENERGYINTRO_HALLOWJ, by itself, creates a new NANOENERGYINTRO_HALLOWJ or raises the existing
%      singleton*.
%
%      H = NANOENERGYINTRO_HALLOWJ returns the handle to a new NANOENERGYINTRO_HALLOWJ or the handle to
%      the existing singleton*.
%
%      NANOENERGYINTRO_HALLOWJ('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NANOENERGYINTRO_HALLOWJ.M with the given input arguments.
%
%      NANOENERGYINTRO_HALLOWJ('Property','Value',...) creates a new NANOENERGYINTRO_HALLOWJ or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before NanoEnergyIntro_hallowj_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to NanoEnergyIntro_hallowj_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help NanoEnergyIntro_hallowj

% Last Modified by GUIDE v2.5 09-Apr-2014 21:52:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @NanoEnergyIntro_hallowj_OpeningFcn, ...
                   'gui_OutputFcn',  @NanoEnergyIntro_hallowj_OutputFcn, ...
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


% --- Executes just before NanoEnergyIntro_hallowj is made visible.
function NanoEnergyIntro_hallowj_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to NanoEnergyIntro_hallowj (see VARARGIN)

% Choose default command line output for NanoEnergyIntro_hallowj
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes NanoEnergyIntro_hallowj wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = NanoEnergyIntro_hallowj_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in push_mainmenu.
function push_mainmenu_Callback(hObject, eventdata, handles)
nanohubGUI_sec005_team18; % takes user to main menu
close(NanoEnergyIntro_hallowj); % closes intro page when going to main menu
% hObject    handle to push_mainmenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in push_next.
function push_next_Callback(hObject, eventdata, handles)
NanoEnergy_hallowj; % opens next page(NanoEnergy)
close(NanoEnergyIntro_hallowj); % closes intro page
% hObject    handle to push_next (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in push_exit.
function push_exit_Callback(hObject, eventdata, handles)
close(NanoEnergyIntro_hallowj); % closes entire GUI
% hObject    handle to push_exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
