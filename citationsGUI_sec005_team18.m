function varargout = citationsGUI_sec005_team18(varargin)
%CITATIONSGUI_SEC005_TEAM18 M-file for citationsGUI_sec005_team18.fig
%      CITATIONSGUI_SEC005_TEAM18, by itself, creates a new CITATIONSGUI_SEC005_TEAM18 or raises the existing
%      singleton*.
%
%      H = CITATIONSGUI_SEC005_TEAM18 returns the handle to a new CITATIONSGUI_SEC005_TEAM18 or the handle to
%      the existing singleton*.
%
%      CITATIONSGUI_SEC005_TEAM18('Property','Value',...) creates a new CITATIONSGUI_SEC005_TEAM18 using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to citationsGUI_sec005_team18_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      CITATIONSGUI_SEC005_TEAM18('CALLBACK') and CITATIONSGUI_SEC005_TEAM18('CALLBACK',hObject,...) call the
%      local function named CALLBACK in CITATIONSGUI_SEC005_TEAM18.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help citationsGUI_sec005_team18

% Last Modified by GUIDE v2.5 09-Apr-2014 21:51:21

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @citationsGUI_sec005_team18_OpeningFcn, ...
                   'gui_OutputFcn',  @citationsGUI_sec005_team18_OutputFcn, ...
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


% --- Executes just before citationsGUI_sec005_team18 is made visible.
function citationsGUI_sec005_team18_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for citationsGUI_sec005_team18
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes citationsGUI_sec005_team18 wait for user response (see UIRESUME)
% uiwait(handles.figure1);
    

% --- Outputs from this function are returned to the command line.
function varargout = citationsGUI_sec005_team18_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in push_exit.
function push_exit_Callback(hObject, eventdata, handles)
close
% hObject    handle to push_exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on button press in push_menu.
function push_menu_Callback(hObject, eventdata, handles)
nanohubGUI_sec005_team18()
% hObject    handle to push_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in push_next.
function push_next_Callback(hObject, eventdata, handles)
% hObject    handle to push_next (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
NanoPlane_ewidlosk()
close
