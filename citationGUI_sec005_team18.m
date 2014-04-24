function varargout = citationGUI_sec005_team18(varargin)
% CITATIONGUI_SEC005_TEAM18 MATLAB code for citationGUI_sec005_team18.fig
%      CITATIONGUI_SEC005_TEAM18, by itself, creates a new CITATIONGUI_SEC005_TEAM18 or raises the existing
%      singleton*.
%
%      H = CITATIONGUI_SEC005_TEAM18 returns the handle to a new CITATIONGUI_SEC005_TEAM18 or the handle to
%      the existing singleton*.
%
%      CITATIONGUI_SEC005_TEAM18('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CITATIONGUI_SEC005_TEAM18.M with the given input arguments.
%
%      CITATIONGUI_SEC005_TEAM18('Property','Value',...) creates a new CITATIONGUI_SEC005_TEAM18 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before citationGUI_sec005_team18_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to citationGUI_sec005_team18_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help citationGUI_sec005_team18

% Last Modified by GUIDE v2.5 23-Apr-2014 20:55:34

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @citationGUI_sec005_team18_OpeningFcn, ...
                   'gui_OutputFcn',  @citationGUI_sec005_team18_OutputFcn, ...
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


% --- Executes just before citationGUI_sec005_team18 is made visible.
function citationGUI_sec005_team18_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to citationGUI_sec005_team18 (see VARARGIN)

% Choose default command line output for citationGUI_sec005_team18
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes citationGUI_sec005_team18 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = citationGUI_sec005_team18_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in push_exit.
function push_exit_Callback(hObject, eventdata, handles)
% hObject    handle to push_exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(citationGUI_sec005_team18);

% --- Executes on button press in push_main.
function push_main_Callback(hObject, eventdata, handles)
% hObject    handle to push_main (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
nanohubGUI_sec005_team18;
close(citationGUI_sec005_team18);
