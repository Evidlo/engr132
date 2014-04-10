function varargout = NanoPlaneIntro_ewidlosk(varargin)
%NANOPLANEINTRO_EWIDLOSK M-file for NanoPlaneIntro_ewidlosk.fig
%      NANOPLANEINTRO_EWIDLOSK, by itself, creates a new NANOPLANEINTRO_EWIDLOSK or raises the existing
%      singleton*.
%
%      H = NANOPLANEINTRO_EWIDLOSK returns the handle to a new NANOPLANEINTRO_EWIDLOSK or the handle to
%      the existing singleton*.
%
%      NANOPLANEINTRO_EWIDLOSK('Property','Value',...) creates a new NANOPLANEINTRO_EWIDLOSK using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to NanoPlaneIntro_ewidlosk_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      NANOPLANEINTRO_EWIDLOSK('CALLBACK') and NANOPLANEINTRO_EWIDLOSK('CALLBACK',hObject,...) call the
%      local function named CALLBACK in NANOPLANEINTRO_EWIDLOSK.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help NanoPlaneIntro_ewidlosk

% Last Modified by GUIDE v2.5 09-Apr-2014 21:25:03

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @NanoPlaneIntro_ewidlosk_OpeningFcn, ...
                   'gui_OutputFcn',  @NanoPlaneIntro_ewidlosk_OutputFcn, ...
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


% --- Executes just before NanoPlaneIntro_ewidlosk is made visible.
function NanoPlaneIntro_ewidlosk_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for NanoPlaneIntro_ewidlosk
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes NanoPlaneIntro_ewidlosk wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = NanoPlaneIntro_ewidlosk_OutputFcn(hObject, eventdata, handles)
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
nanohubGUI_sec005_team18;
close(NanoPlane_ewidlosk);
% hObject    handle to push_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in push_next.
function push_next_Callback(hObject, eventdata, handles)
% hObject    handle to push_next (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
NanoPlane_ewidlosk;
close(NanoPlaneIntro_ewidlosk);
