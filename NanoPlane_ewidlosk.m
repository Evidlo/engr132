%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%ght:50px;width:100%;background-color:grey;bottom:0px;%
%  ENGR 13200 Spring 2014
%  Programmer(s) and Purdue Email Address(es):
%  1. Name ewidlosk@purdue.edu
%
%  Other Contributor(s) and Purdue Email Address(es):
%  1. Name login@purdue.edu
%
%  Section #: 005     Team #: 18
%
%  Assignment #: M7
%
%  Academic Integrity Statement:
%
%       I/we have not used source code obtained from
%       any other unauthorized source, either modified
%       or unmodified.  Neither have I/we provided access
%       to my/our code to another. The project I/we am/are submitting
%       is my/our own original work.
%
%  Program Description:  Simulate airplane takeoff given wing density in
%  hypothetical design situation
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function varargout = NanoPlane_ewidlosk(varargin)
% NANOPLANE_EWIDLOSK MATLAB code for NanoPlane_ewidlosk.fig
%      NANOPLANE_EWIDLOSK, by itself, creates a new NANOPLANE_EWIDLOSK or raises the existing
%      singleton*.
%
%      H = NANOPLANE_EWIDLOSK returns the handle to a new NANOPLANE_EWIDLOSK or the handle to
%      the existing singleton*.
%
%      NANOPLANE_EWIDLOSK('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NANOPLANE_EWIDLOSK.M with the given input arguments.
%
%      NANOPLANE_EWIDLOSK('Property','Value',...) creates a new NANOPLANE_EWIDLOSK or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before NanoPlane_ewidlosk_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to NanoPlane_ewidlosk_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help NanoPlane_ewidlosk

% Last Modified by GUIDE v2.5 29-Apr-2014 15:01:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @NanoPlane_ewidlosk_OpeningFcn, ...
                   'gui_OutputFcn',  @NanoPlane_ewidlosk_OutputFcn, ...
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


% --- Executes just before NanoPlane_ewidlosk is made visible.
function NanoPlane_ewidlosk_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to NanoPlane_ewidlosk (see VARARGIN)

% Choose default command line output for NanoPlane_ewidlosk
handles.output = hObject;
updateTags(handles);

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes NanoPlane_ewidlosk wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = NanoPlane_ewidlosk_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in menu_plane.
function menu_plane_Callback(hObject, eventdata, handles)
% hObject    handle to menu_plane (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns menu_plane contents as cell array
%        contents{get(hObject,'Value')} returns selected item from menu_plane
updateTags(handles);

% --- Executes during object creation, after setting all properties.
function menu_plane_CreateFcn(hObject, eventdata, handles)
% hObject    handle to menu_plane (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in push_takeoff.
function push_takeoff_Callback(hObject, eventdata, handles)
% hObject    handle to push_takeoff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
updateTags(handles);


contents = cellstr(get(handles.menu_plane,'String'));
if strcmp(contents{get(handles.menu_plane,'Value')},'Cessna')
    handles.mass_factor = 404;
    takeoff = 10;
else
    handles.mass_factor = 333000;
    takeoff = 16;
end
slider = get(handles.slide_truss,'Value');
slider = slider + .1;
handles.truss_length = 10^-(10*slider+8);
handles.wing_mass = .01*handles.mass_factor*(slider) + .5 * handles.mass_factor/10000;
handles.wing_strength = .01*handles.mass_factor*(2*slider)^2;
set(handles.static_truss,'String',strcat(num2str(handles.truss_length),' m'));
set(handles.static_mass,'String',strcat(num2str(handles.wing_mass),' kg'));
set(handles.static_strength,'String',strcat(num2str(handles.wing_strength),' GPa'));


set(hObject,'String','Simulating');
set(handles.static_tip,'String','Simulating!!!');
res = .1;
x = 0:res:takeoff;
y_crit = zeros(length(x)) + handles.wing_strength;handles.wing_mass + handles.mass_factor;
y = exp(-(x+slider)).*(x).^(2+slider*.5).*(handles.wing_mass);
xmin = min(x);xmax = max(x);ymin = min(y);ymax = max(y);
axes(handles.plot_tension)

handles.wing_strength
success = 1;

c=[];
[r c] = find(y>y_crit(1));
c = c.*res;
endtime = 10;
if length(c) > 0
    if c(1) < endtime
     endtime = c(1);
     success = 0;
    end
end

plot(x,y_crit,'r-');
hold on

for n = 1:endtime/res
    set(handles.static_runtime,'String',num2str(x(n)));
    plot(x(1:n),y(1:n));
    ylabel('Wing Tension (GPa)');
    xlabel('Time');
    axis([xmin xmax 0 handles.wing_strength*1.25]);
    pause(.05)
end

set(hObject,'String','Start Takeoff!');
if success == 0
    set(handles.static_tip,'String','Takeoff failed!  Your plane crashed!  Adjust the nanostructure size and try again.');
else
    set(handles.static_tip,'String','Congratulations!  You successfully balanced the gains in strength and total weight.');
end
hold off


% --- Executes on button press in push_exit.
function push_exit_Callback(hObject, eventdata, handles)
close
% hObject    handle to push_exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on slider movement.
function slide_truss_Callback(hObject, eventdata, handles)
% hObject    handle to slide_truss (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
updateTags(handles);



% --- Executes during object creation, after setting all properties.
function slide_truss_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slide_truss (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in push_previous.
function push_previous_Callback(hObject, eventdata, handles)
NanoPlaneIntro_ewidlosk;
close(NanoPlane_ewidlosk);

% hObject    handle to push_previous (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in push_menu.
function push_menu_Callback(hObject, eventdata, handles)
nanohubGUI_sec005_team18;
close(NanoPlane_ewidlosk);
% hObject    handle to push_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% update all static tags with plane data
function updateTags(handles)

contents = cellstr(get(handles.menu_plane,'String'));
if strcmp(contents{get(handles.menu_plane,'Value')},'Cessna')
    handles.mass_factor = 404;
    takeoff = 10;
else
    handles.mass_factor = 333000;
    takeoff = 16;
end
slider = get(handles.slide_truss,'Value');
slider = slider + .1;
handles.truss_length = 10^-(10*slider+8);
handles.wing_mass = .01*handles.mass_factor*(slider) + .5 * handles.mass_factor/10000;
handles.wing_strength = .01*handles.mass_factor*(2*slider)^2;
set(handles.static_truss,'String',strcat(num2str(handles.truss_length),' m'));
set(handles.static_mass,'String',strcat(num2str(handles.wing_mass),' kg'));
set(handles.static_strength,'String',strcat(num2str(handles.wing_strength),' GPa'));
