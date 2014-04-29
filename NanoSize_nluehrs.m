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

% Last Modified by GUIDE v2.5 23-Apr-2014 16:18:34

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

set(handles.bgroup_plot, 'visible', 'off');         %disable radio buttons until start is clicked
set(handles.static_help, 'string', 'Click Start!'); %prompts the user to click start

%Set up conversion factor variable
handles.conversion = 1e7;
guidata(hObject, handles);

%Plot rivets as circles
fltrivet = @(x) sqrt(.25 - (x + 1) .^ 2);       %function for the top of the left rivet
flbrivet = @(x) -sqrt(.25 - (x + 1) .^ 2);      %function for the bottom of the left rivet
frtrivet = @(x) sqrt(.25 - (x - 1) .^ 2);       %function for the top of the right rivet
frbrivet = @(x) -sqrt(.25 - (x - 1) .^ 2);      %function for the bottom of the right rivet

axes(handles.plot_nanosize);                    %selects plot
hold on;
fplot(fltrivet, [-1.5 -.5], 'k');               %plot above funtcions
fplot(flbrivet, [-1.5 -.5], 'k');
fplot(frtrivet, [.5 1.5], 'k');
fplot(frbrivet, [.5 1.5], 'k');

%plot line connecting them for visual reference
rivets_x = [-1 1];                              %x-coor of rivets
rivets_y = [0 0];                               %y-coor of rivets
plot(rivets_x, rivets_y, 'k-');                 %plots line
axis([-3 3 -1.5 1.5]);                          %set and label axes to keep plot looking nice
title('Rivets of an Airplane Wing');
xlabel('Centimeters');
ylabel('Centimeters');

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


% --- Executes on button press in push_retry.
function push_retry_Callback(hObject, eventdata, handles)
% hObject    handle to push_retry (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in push_start.
function push_start_Callback(hObject, eventdata, handles)
% hObject    handle to push_start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.static_help, 'string', 'CLICK IN THE CENTER, THEN HIT ENTER')   %prompts the user to click the plot
set(handles.bgroup_plot, 'visible', 'on');                                  %enables the next button

conversion = handles.conversion;                                            %retrieve conversion code

%disable all buttons
set(handles.push_previous, 'enable', 'off');
set(handles.push_exit, 'enable', 'off');
set(handles.push_mainmenu, 'enable', 'off');
set(handles.radio_rivets, 'enable', 'off');
set(handles.radio_tubes, 'enable', 'off');
set(handles.radio_graphene, 'enable', 'off');
set(handles.push_start, 'enable', 'off');

[x, y] = ginput;                                                            %function that takes in mouse clicks
distance = sqrt((x(end)) ^ 2 + (y(end)) ^ 2);                               %calulates distance from the origin, and the center between the rivets
distance = distance * conversion;                                                  %converts from cm to nm
diststr = num2str(distance);                                                %converts from number to string
set(handles.static_result, 'string', diststr)                               %displays result

if distance >= .5 * conversion                                             %if the user clicks an obscene distance from the center, they are told to try harder
    set(handles.static_help, 'string', 'Come on, at least try!!');
else                                                                        %otherwise they are prompted to continue
    set(handles.static_help, 'string', 'Click Next Plot Option');
end

set(handles.push_start, 'string', 'Retry');                                 %changes start button to a retry button

%re-enable all buttons
set(handles.push_previous, 'enable', 'on');
set(handles.push_exit, 'enable', 'on');
set(handles.push_mainmenu, 'enable', 'on');
set(handles.radio_rivets, 'enable', 'on');
set(handles.radio_tubes, 'enable', 'on');
set(handles.radio_graphene, 'enable', 'on');
set(handles.push_start, 'enable', 'on');

% --- Executes when selected object is changed in bgroup_plot.
function bgroup_plot_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in bgroup_plot 
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)

%grab values of each radio button
rivets = get(handles.radio_rivets, 'value');
tubes = get(handles.radio_tubes, 'value');
graphene = get(handles.radio_graphene, 'value');

set(handles.push_start, 'string', 'Start');         %changes retry button to start button
set(handles.static_result, 'string', ' ');          %clears the distance so the user can start fresh on the next part of the gui



if rivets
    set(handles.static_help, 'string', 'Click Start!'); %prompts the user to click start
    
    %Plot rivets as circles
    fltrivet = @(x) sqrt(.25 - (x + 1) .^ 2);       %function for the top of the left rivet
    flbrivet = @(x) -sqrt(.25 - (x + 1) .^ 2);      %function for the bottom of the left rivet
    frtrivet = @(x) sqrt(.25 - (x - 1) .^ 2);       %function for the top of the right rivet
    frbrivet = @(x) -sqrt(.25 - (x - 1) .^ 2);      %function for the bottom of the right rivet

    axes(handles.plot_nanosize);                    %selects plot
    hold off;
    fplot(fltrivet, [-1.5 -.5], 'k');               %plot above funtcions
    hold on;
    fplot(flbrivet, [-1.5 -.5], 'k');
    fplot(frtrivet, [.5 1.5], 'k');
    fplot(frbrivet, [.5 1.5], 'k');

    %plot line connecting them for visual reference
    rivets_x = [-1 1];                              %x-coor of rivets
    rivets_y = [0 0];                               %y-coor of rivets
    hold on;
    plot(rivets_x, rivets_y, 'k-');                 %plots line
    axis([-3 3 -1.5 1.5]);                          %set and label axes to keep plot looking nice
    title('Rivets of an Airplane Wing');
    xlabel('Centimeters');
    ylabel('Centimeters');
    %Update Directions
    
    %Update conversion factor
    conversion = 1e7;
    
elseif tubes
    set(handles.static_help, 'string', 'Click Start!'); %prompts the user to click start
    
    %plot concentric circles that symbolize carbon nanotubes
    fittube = @(x) sqrt(1 - x .^ 2);                    %creates function for top of inner nanotube
    fibtube = @(x) -sqrt(1 - x .^ 2);                   %creates function for bottom of inner nanotube
    fottube = @(x) sqrt((1.36 ^ 2) - x .^ 2);           %creates function for top of outer nanotube
    fobtube = @(x) -sqrt((1.36 ^ 2) - x .^ 2);          %creates function for bottom of outer nanotube

    axes(handles.plot_nanosize);                    %selects plot
    hold off;
    fplot(fittube, [-1 1], 'k');                        %plots above functions
    hold on;
    fplot(fibtube, [-1 1], 'k');
    fplot(fottube, [-1.36 1.36], 'k');
    fplot(fobtube, [-1.36 1.36], 'k');
    
    %format plot for technical presentation
    title('End View of Carbon Nanotubes');
    xlabel('Nanometers');                               
    ylabel('Nanometers');
    axis([-2.5 2.5 -1.5 1.5]);
    
    %update directions
    set(handles.static_directions1, 'string', 'Shown to the right is the end view of a double walled carbon nanotube. The inner tube has a radius of about 1 nanometer, and there is a space of .36 nm between the walls (Carbon Nanotubes 2013).');
    set(handles.static_directions2, 'string', 'Your goal is to click in the center of the nanotubes and then hit enter or return! Text will appear telling you how far off you were.');
    
    %update conversion factor
    conversion = 1;
    
elseif graphene
    set(handles.static_help, 'string', 'Click Start!'); %prompts the user to click start
    
    %plot circles that symbolize carbon atoms in graphene molecule
    side = .142; %nm                                %length of a side of a graphene molecule (Fuente)
    axes(handles.plot_nanosize);                    %selects plot
    hold off
    
    %plot lines connecting carbon atoms
    
        %x- and y-coor of hexagon vertices -formulas found at WolframAlpha.com
    hex_x = [side, side / 2, -side / 2, -side, -side / 2, side / 2, side];
    hex_y = [0, sqrt(3) * side / 2, sqrt(3) * side / 2, 0, -sqrt(3) * side / 2, -sqrt(3) * side / 2, 0];
    plot(hex_x, hex_y, 'k-');                       %plots hexagon
    
    %format plot for technical presentation
    title('Graphene Molecule');
    xlabel('Nanometers');
    ylabel('Nanometers');
    axis([-(side + .1) (side + .1) -(sqrt(3) * side / 2 + .025) (sqrt(3) * side / 2 + .025)]);
    
    %Úpdate Directions
    set(handles.static_directions1, 'string', 'Finally you have just the graphene molecule, six carbon atoms bound together, and the building block for carbon nanotubes. Each bond length shown at right is 0.142 nm in length. (Fuente)');
    set(handles.static_directions2, 'string', 'Your goal is to click in the center of the molecule and then hit enter or return! Text will appear telling you how far off you were.');    
    
    %Update conversion factor
    conversion = 1;
    
end

%Update handle of conversion factor
handles.conversion = conversion;
guidata(handles.bgroup_plot, handles);





