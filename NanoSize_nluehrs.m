function varargout = NAnoSize_nluehrs(varargin)
% NANOSIZE_NLUEHRS MATLAB code for NAnoSize_nluehrs.fig
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
%      applied to the GUI before NAnoSize_nluehrs_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to NAnoSize_nluehrs_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help NAnoSize_nluehrs

% Last Modified by GUIDE v2.5 07-Apr-2014 12:40:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @NAnoSize_nluehrs_OpeningFcn, ...
                   'gui_OutputFcn',  @NAnoSize_nluehrs_OutputFcn, ...
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


% --- Executes just before NAnoSize_nluehrs is made visible.
function NAnoSize_nluehrs_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to NAnoSize_nluehrs (see VARARGIN)

% Choose default command line output for NAnoSize_nluehrs
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes NAnoSize_nluehrs wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = NAnoSize_nluehrs_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in push_back.
function push_back_Callback(hObject, eventdata, handles)
% hObject    handle to push_back (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in push_exit.
function push_exit_Callback(hObject, eventdata, handles)
% hObject    handle to push_exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in push_continue.
function push_continue_Callback(hObject, eventdata, handles)
% hObject    handle to push_continue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
