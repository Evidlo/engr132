function varargout = NanoMelt_ksermers(varargin)
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

% Last Modified by GUIDE v2.5 23-Apr-2014 20:23:37

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

%Initialize Handles
handles.spec_heat = .54; %initial value for specific heat
guidata(hObject, handles);

handles.heat_fus = 296; %initial value for heat of fusion
guidata(hObject, handles);

handles.Temp_change = 3560; %initial value for the temperature change
guidata(hObject, handles);

handles.density = 4500; %initial value for the material density
guidata(hObject, handles);

handles.melt_point = 1941; %initial value for the melting point
guidata(hObject, handles);



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
% hObject    handle to push_Main_Menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
nanohubGUI_sec005_team18 %open Main Menu
close(NanoMelt_ksermers); %close gui


% --- Executes on button press in push_Previous.
function push_Previous_Callback(hObject, eventdata, handles)
% hObject    handle to push_Previous (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
NanoMeltIntro_ksermers %open NanoMeltIntro_ksermers
close(NanoMelt_ksermers); %close gui


% --- Executes on button press in push_Exit.
function push_Exit_Callback(hObject, eventdata, handles)
% hObject    handle to push_Exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(NanoMelt_ksermers); %close gui


% --- Executes on slider movement.
function slide_Radius_Callback(hObject, eventdata, handles)
% hObject    handle to slide_Radius (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

radius = get(handles.slide_Radius, 'value') * 1e-6; %Gets radius from slider
set(handles.static_Radius, 'string', radius); %Shows slider value in static text box



% --- Executes during object creation, after setting all properties.
function slide_Radius_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slide_Radius (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end






% --- Executes when selected object is changed in bgroup_Material.
function bgroup_Material_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in bgroup_Material 
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)

% Gets value of each radio button
gold = get(handles.radio_Gold, 'value'); 
alum = get(handles.radio_Aluminum, 'value');
copper = get(handles.radio_Copper, 'value');
titanium = get(handles.radio_Titanium, 'value');

% Variable values if gold is selected
if gold
   spec_heat = .126;
   heat_fus = 63.7;
   Temp_change = 3243;
   density = 19320;
   melt_point = 1337;

% Variable values if aluminum is selected   
elseif alum
   spec_heat = .91;
   heat_fus = 397;
   Temp_change = 2792;
   density = 2712;
   melt_point = 933;
   
% Variable values if copper is selected 
elseif copper
    spec_heat = .39;
    heat_fus = 209;
    Temp_change = 2835;
    density = 8940;
    melt_point = 1358;
    
% Variable values if titanium is selected 
elseif titanium
    spec_heat = .54;
    heat_fus = 296;
    Temp_change = 3560;
    density = 4500;
    melt_point = 1941;
end

% Sets handles from button group
handles.spec_heat = spec_heat;
guidata(handles.bgroup_Material, handles);

handles.heat_fus = heat_fus;
guidata(handles.bgroup_Material, handles);

handles.Temp_change = Temp_change;
guidata(handles.bgroup_Material, handles);

handles.density = density;
guidata(handles.bgroup_Material, handles);

handles.melt_point = melt_point;
guidata(handles.bgroup_Material, handles);




% --- Executes on button press in push_Graph.
function push_Graph_Callback(hObject, eventdata, handles)
% hObject    handle to push_Graph (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% radius = get(handles.Radius, 'value');
% density = get(handles.density, 'value');
% spec_heat = get(handles.spec_heat, 'value');
% melt_point = get(handles.melt_point, 'value');
% heat_fus = get(handles.heat_fus, 'value');
% Temp_change = get(handles.Temp_change, 'value');


%get values from radio buttons and slider
radius = get(handles.slide_Radius, 'value');
spec_heat = handles.spec_heat;
density = handles.density;
melt_point = handles.melt_point;
heat_fus = handles.heat_fus;
Temp_change = handles.Temp_change;

radius = radius * 10 .^ -6; % Converts radius to nanometers
mass = (4/3) * pi * (radius ^ 3) * density; %Determines the particle's mass
t1 = mass * spec_heat * melt_point; %The time it takes to melt from the beginning
t2 = mass * heat_fus + t1; %The time it takes from the beginning until the heat of fusion process is complete
t3 = mass * spec_heat * (Temp_change - melt_point) + t2; %The time it takes from the beginning to boil

x = [0, t1, t2, t3]; %sets values as an array
y = [0, melt_point, melt_point, Temp_change];

axes(handles.plot_Phase_change)
plot(x,y);


