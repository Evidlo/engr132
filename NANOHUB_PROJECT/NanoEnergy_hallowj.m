
function varargout = NanoEnergy_hallowj(varargin)
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

%NANOENERGY_HALLOWJ M-file for NanoEnergy_hallowj.fig
%      NANOENERGY_HALLOWJ, by itself, creates a new NANOENERGY_HALLOWJ or raises the existing
%      singleton*.
%
%      H = NANOENERGY_HALLOWJ returns the handle to a new NANOENERGY_HALLOWJ or the handle to
%      the existing singleton*.
%
%      NANOENERGY_HALLOWJ('Property','Value',...) creates a new NANOENERGY_HALLOWJ using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to NanoEnergy_hallowj_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      NANOENERGY_HALLOWJ('CALLBACK') and NANOENERGY_HALLOWJ('CALLBACK',hObject,...) call the
%      local function named CALLBACK in NANOENERGY_HALLOWJ.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help NanoEnergy_hallowj

% Last Modified by GUIDE v2.5 09-Apr-2014 22:10:54

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @NanoEnergy_hallowj_OpeningFcn, ...
                   'gui_OutputFcn',  @NanoEnergy_hallowj_OutputFcn, ...
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


% --- Executes just before NanoEnergy_hallowj is made visible.
function NanoEnergy_hallowj_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for NanoEnergy_hallowj
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes NanoEnergy_hallowj wait for user response (see UIRESUME)
% uiwait(handles.figure1);
set(handles.text_error_neg, 'Visible', 'off')
set(handles.text_error_metal, 'Visible', 'off')


% --- Outputs from this function are returned to the command line.
function varargout = NanoEnergy_hallowj_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit_Nanoparticle_Callback(hObject, eventdata, handles)
% hObject    handle to edit_Nanoparticle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_Nanoparticle as text
%        str2double(get(hObject,'String')) returns contents of edit_Nanoparticle as a double
if(str2num(get(handles.edit_Nanoparticle, 'string')) <= 0)
    set(handles.text_error_neg, 'Visible', 'on')
    cla(handles.plot_CoEnergy)
else
    set(handles.text_error_neg, 'Visible', 'off')
end


% --- Executes during object creation, after setting all properties.
function edit_Nanoparticle_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_Nanoparticle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on button press in radio_Aluminum.
function radio_Aluminum_Callback(hObject, eventdata, handles)
% hObject    handle to radio_Aluminum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radio_Aluminum
if(get(handles.radio_Aluminum, 'value') == 1)
    set(handles.radio_Copper, 'value', 0)
    set(handles.radio_Manganese, 'value', 0)
    set(handles.radio_Silicon, 'value', 0)
end


% --- Executes on button press in radio_Copper.
function radio_Copper_Callback(hObject, eventdata, handles)
% hObject    handle to radio_Copper (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radio_Copper
if(get(handles.radio_Copper, 'value') == 1)
    set(handles.radio_Aluminum, 'value', 0)
    set(handles.radio_Manganese, 'value', 0)
    set(handles.radio_Silicon, 'value', 0)
end


% --- Executes on button press in radio_Manganese.
function radio_Manganese_Callback(hObject, eventdata, handles)
% hObject    handle to radio_Manganese (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radio_Manganese
if(get(handles.radio_Manganese, 'value') == 1)
    set(handles.radio_Copper, 'value', 0)
    set(handles.radio_Aluminum, 'value', 0)
    set(handles.radio_Silicon, 'value', 0)
end


% --- Executes on button press in radio_Silicon.
function radio_Silicon_Callback(hObject, eventdata, handles)
% hObject    handle to radio_Silicon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radio_Silicon
if(get(handles.radio_Silicon, 'value') == 1)
    set(handles.radio_Copper, 'value', 0)
    set(handles.radio_Manganese, 'value', 0)
    set(handles.radio_Aluminum, 'value', 0)
end


% --- Executes on button press in push_MainMenu.
function push_MainMenu_Callback(hObject, eventdata, handles)
nanohubGUI_sec005_team18;
close(NanoEnergy_hallowj);
% hObject    handle to push_MainMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in push_Next.
function push_Next_Callback(hObject, eventdata, handles)
% hObject    handle to push_Next (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in push_Previous.
function push_Previous_Callback(hObject, eventdata, handles)
NanoEnergyIntro_hallowj;
close(NanoEnergy_hallowj);
% hObject    handle to push_Previous (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in push_Exit.
function push_Exit_Callback(hObject, eventdata, handles)
close(NanoEnergy_hallowj);
% hObject    handle to push_Exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in push_Graph.
function push_Graph_Callback(hObject, eventdata, handles)
% hObject    handle to push_Graph (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.text_error_metal, 'Visible', 'off')
a = get(handles.radio_Silicon, 'value');
b = get(handles.radio_Copper, 'value');
c = get(handles.radio_Manganese, 'value');
d = get(handles.radio_Aluminum, 'value');
if((a == 1) || (b == 1) || (c == 1) || (d == 1))
    if(a == 1)
        Eb = 446;
        d = .222;
        D = str2num(get(handles.edit_Nanoparticle, 'string'));
        Ep = Eb * (1 - (d/D));
    elseif(b == 1)
        Eb = 336;
        d = .128;
        D = str2num(get(handles.edit_Nanoparticle, 'string'));
        Ep = Eb * (1 - (d/D));
    elseif(c == 1)
        Eb = 282;
        d = .161;
        D = str2num(get(handles.edit_Nanoparticle, 'string'));
        Ep = Eb * (1 - (d/D));
    elseif(d == 1)
        Eb = 327;
        d = .118;
        D = str2num(get(handles.edit_Nanoparticle, 'string'));
        Ep = Eb * (1 - (d/D));
    end
    axes(handles.plot_CoEnergy)
    plot(D, Ep, 'rs')
    title('Cohesive Energy of Nanoparticles')
    xlabel('Nanoparticle size (nm)')
    ylabel('Cohesive Energy (kj/mol)')
else
    set(handles.text_error_metal, 'Visible', 'on')
    cla(handles.plot_CoEnergy)
end

