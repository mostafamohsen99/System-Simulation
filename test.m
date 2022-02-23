function varargout = test(varargin)
% TEST MATLAB code for test.fig
%      TEST, by itself, creates a new TEST or raises the existing
%      singleton*.
%
%      FIG = TEST returns the handle to a new TEST or the handle to
%      the existing singleton*.
%
%      TEST('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TEST.M with the given input arguments.
%
%      TEST('Property','Value',...) creates a new TEST or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before test_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to test_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help test

% Last Modified by GUIDE v2.5 15-Jun-2011 03:07:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @test_OpeningFcn, ...
                   'gui_OutputFcn',  @test_OutputFcn, ...
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


% --- Executes just before test is made visible.
function test_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to test (see VARARGIN)
axes(handles.axes3);

    imshow('IMPULSE.jpg');
% Choose default command line output for test
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes test wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = test_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function inputN_Callback(hObject, eventdata, handles)
% hObject    handle to inputN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% Hints: get(hObject,'String') returns contents of inputN as text
%        str2double(get(hObject,'String')) returns contents of inputN as a double


% --- Executes during object creation, after setting all properties.
function inputN_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inputM_Callback(hObject, eventdata, handles)
% hObject    handle to inputM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputM as text
%        str2double(get(hObject,'String')) returns contents of inputM as a double


% --- Executes during object creation, after setting all properties.
function inputM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton1


% --- Executes during object creation, after setting all properties.
function uitable2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uitable2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function axes6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
axis(hObject);
imshow('2.jpg')
% Hint: place code in OpeningFcn to populate axes6


% --- Executes on key press with focus on unipanel5 and none of its controls.
function unipanel5_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to unipanel5 (see GCBO)
% eventdata  structure with the following fields (see UITABLE)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global n m 
n = str2num(get(handles.inputN,'string'));
m = str2num(get(handles.inputM,'string'));

if n > 4 || n < 0 || floor(n)~= ceil(n)
    msgbox('ERROR! { n must be 0 , 1 , 2 , 3 or 4 }');
end

if m > 4 || m < 0  || floor(m)~= ceil(m)
    msgbox('ERROR! { m must be 0, 1 , 2 , 3 or 4 }');
end
global randomSelection
randomSelection = get(handles.checkbox1,'value');

if m > n  
    msgbox('ERROR! { m must be lower than or equal n }');
end
if randomSelection
    set(handles.inputA0,'Enable','off');
    set(handles.inputA1,'Enable','off');
    set(handles.inputA2,'Enable','off');
    set(handles.inputA3,'Enable','off');
    set(handles.inputA4,'Enable','off');
    set(handles.inputB0,'Enable','off');
    set(handles.inputB1,'Enable','off');
    set(handles.inputB2,'Enable','off');
    set(handles.inputB3,'Enable','off');
    set(handles.inputB4,'Enable','off');
else
if n == 0 && n>=m
    set(handles.inputA0,'Enable','on');
    set(handles.inputA1,'Enable','off');
    set(handles.inputA2,'Enable','off');
    set(handles.inputA3,'Enable','off');
    set(handles.inputA4,'Enable','off');
    
    if m == 0
    set(handles.inputB0,'Enable','on');
    set(handles.inputB1,'Enable','off');
    set(handles.inputB2,'Enable','off');
    set(handles.inputB3,'Enable','off');
    set(handles.inputB4,'Enable','off');
    end
end 

if n == 1 &&n>=m
    set(handles.inputA0,'Enable','on');
    set(handles.inputA1,'Enable','on');
    set(handles.inputA2,'Enable','off');
    set(handles.inputA3,'Enable','off');
    set(handles.inputA4,'Enable','off');
    if m == 0
    set(handles.inputB0,'Enable','on');
    set(handles.inputB1,'Enable','off');
    set(handles.inputB2,'Enable','off');
    set(handles.inputB3,'Enable','off');
    set(handles.inputB4,'Enable','off');
    end
    if m == 1
    set(handles.inputB0,'Enable','on');
    set(handles.inputB1,'Enable','on');
    set(handles.inputB2,'Enable','off');
    set(handles.inputB3,'Enable','off');
    set(handles.inputB4,'Enable','off');
    end
end 
if n == 2 &&n>=m
    set(handles.inputA0,'Enable','on');
    set(handles.inputA1,'Enable','on');
    set(handles.inputA2,'Enable','on');
    set(handles.inputA3,'Enable','off');
    set(handles.inputA4,'Enable','off');
    if m == 0
    set(handles.inputB0,'Enable','on');
    set(handles.inputB1,'Enable','off');
    set(handles.inputB2,'Enable','off');
    set(handles.inputB3,'Enable','off');
    set(handles.inputB4,'Enable','off'); 
    end
    if m == 1
    set(handles.inputB0,'Enable','on');        
    set(handles.inputB1,'Enable','on');
    set(handles.inputB2,'Enable','off');
    set(handles.inputB3,'Enable','off');
    set(handles.inputB4,'Enable','off');
    end
    if m == 2
    set(handles.inputB0,'Enable','on');
    set(handles.inputB1,'Enable','on');
    set(handles.inputB2,'Enable','on');
    set(handles.inputB3,'Enable','off');
    set(handles.inputB4,'Enable','off');
    end
end 
if n == 3 &&n>=m
    set(handles.inputA0,'Enable','on');
    set(handles.inputA1,'Enable','on');
    set(handles.inputA2,'Enable','on');
    set(handles.inputA3,'Enable','on');
    set(handles.inputA4,'Enable','off');
    if m == 0
    set(handles.inputB0,'Enable','on');
    set(handles.inputB1,'Enable','off');
    set(handles.inputB2,'Enable','off');
    set(handles.inputB3,'Enable','off');
    set(handles.inputB4,'Enable','off');
    end
    if m == 1
    set(handles.inputB0,'Enable','on');
    set(handles.inputB1,'Enable','on');
    set(handles.inputB2,'Enable','off');
    set(handles.inputB3,'Enable','off');
    set(handles.inputB4,'Enable','off');
    end
    if m == 2
    set(handles.inputB0,'Enable','on');
    set(handles.inputB1,'Enable','on');
    set(handles.inputB2,'Enable','on');
    set(handles.inputB3,'Enable','off');
    set(handles.inputB4,'Enable','off');
    end
    if m == 3
    set(handles.inputB0,'Enable','on');
    set(handles.inputB1,'Enable','on');
    set(handles.inputB2,'Enable','on');
    set(handles.inputB3,'Enable','on');
    set(handles.inputB4,'Enable','off');
    end
end 
if n == 4 &&n>=m
    set(handles.inputA0,'Enable','on');
    set(handles.inputA1,'Enable','on');
    set(handles.inputA2,'Enable','on');
    set(handles.inputA3,'Enable','on');
    set(handles.inputA4,'Enable','on');
    if m == 0
    set(handles.inputB0,'Enable','on');
    set(handles.inputB1,'Enable','off');
    set(handles.inputB2,'Enable','off');
    set(handles.inputB3,'Enable','off');
    set(handles.inputB4,'Enable','off');
    end
    if m == 1
    set(handles.inputB0,'Enable','on');
    set(handles.inputB1,'Enable','on');
    set(handles.inputB2,'Enable','off');
    set(handles.inputB3,'Enable','off');
    set(handles.inputB4,'Enable','off');
    end
    if m == 2
    set(handles.inputB0,'Enable','on');
    set(handles.inputB1,'Enable','on');
    set(handles.inputB2,'Enable','on');
    set(handles.inputB3,'Enable','off');
    set(handles.inputB4,'Enable','off');
    end
    if m == 3
    set(handles.inputB0,'Enable','on');
    set(handles.inputB1,'Enable','on');
    set(handles.inputB2,'Enable','on');
    set(handles.inputB3,'Enable','on');
    set(handles.inputB4,'Enable','off');
    end
    if m == 4
    set(handles.inputB0,'Enable','on');
    set(handles.inputB1,'Enable','on');
    set(handles.inputB2,'Enable','on');
    set(handles.inputB3,'Enable','on');
    set(handles.inputB4,'Enable','on');
    end
end 
end

if randomSelection    
 if n == 0
        set(handles.inputA0,'String',rand*100);
    end
    if n == 1
        set(handles.inputA0,'String',rand*100);
        set(handles.inputA1,'String',rand*100);
    end
    if n == 2
        set(handles.inputA0,'String',rand*100);
        set(handles.inputA1,'String',rand*100);
        set(handles.inputA2,'String',rand*100);
    end
    if n == 3
        set(handles.inputA0,'String',rand*100);
        set(handles.inputA1,'String',rand*100);
        set(handles.inputA2,'String',rand*100);
        set(handles.inputA3,'String',rand*100);
    end
    if n == 4
        set(handles.inputA0,'String',rand*100);
        set(handles.inputA1,'String',rand*100);
        set(handles.inputA2,'String',rand*100);
        set(handles.inputA3,'String',rand*100);
        set(handles.inputA4,'String',rand*100);
    end
    if m == 0
        set(handles.inputB0,'String',rand*100);
    end
    if m == 1
        set(handles.inputB0,'String',rand*100);
        set(handles.inputB1,'String',rand*100);
    end
    if m == 2
        set(handles.inputB0,'String',rand*100);
        set(handles.inputB1,'String',rand*100);
        set(handles.inputB2,'String',rand*100);
    end
    if m == 3
        set(handles.inputB0,'String',rand*100);
        set(handles.inputB1,'String',rand*100);
        set(handles.inputB2,'String',rand*100);
        set(handles.inputB3,'String',rand*100);
    end
    if m == 4
        set(handles.inputB0,'String',rand*100);
        set(handles.inputB1,'String',rand*100);
        set(handles.inputB2,'String',rand*100);
        set(handles.inputB3,'String',rand*100);
        set(handles.inputB4,'String',rand*100);
    end
end

% --- Executes on button press in Simulate.
function Simulate_Callback(hObject, eventdata, handles)

n = str2num(get(handles.inputN,'string'));
m = str2num(get(handles.inputM,'string'));
%**********************************************%


% hObject    handle to Simulate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global n m randomSelection
global A0 A1 A2 A3 A4 B0 B1 B2 B3 B4;

A0 = 0;
A1 = 0;
A2 = 0;
A3 = 0;
A4 = 0;
B0 = 0;
B1 = 0;
B2 = 0;
B3 = 0;
B4 = 0;
    
if n == 0
         A0 = str2num(get(handles.inputA0,'string'));
    if m == 0
         B0 = str2num(get(handles.inputB0,'string'));
    end
end

if n == 1
         A0 = str2num(get(handles.inputA0,'string'));
         A1 = str2num(get(handles.inputA1,'string'));
    if m == 0
         B0 = str2num(get(handles.inputB0,'string'));
    end
    if m == 1
         B0 = str2num(get(handles.inputB0,'string'));
         B1 = str2num(get(handles.inputB1,'string'));
    end
end 
if n == 2
         A0 = str2num(get(handles.inputA0,'string'));
         A1 = str2num(get(handles.inputA1,'string'));
         A2 = str2num(get(handles.inputA2,'string'));
         
    if m == 0
         B0 = str2num(get(handles.inputB0,'string'));
    end
    if m == 1
         B0 = str2num(get(handles.inputB0,'string'));
         B1 = str2num(get(handles.inputB1,'string'));
    end
    if m == 2
         B0 = str2num(get(handles.inputB0,'string'));
         B1 = str2num(get(handles.inputB1,'string'));
         B2 = str2num(get(handles.inputB2,'string'));
    end
end 
if n == 3
         A0 = str2num(get(handles.inputA0,'string'));
         A1 = str2num(get(handles.inputA1,'string'));
         A2 = str2num(get(handles.inputA2,'string'));
         A3 = str2num(get(handles.inputA3,'string'));
         
    if m == 0
         B0 = str2num(get(handles.inputB0,'string'));
    end
    if m == 1
         B0 = str2num(get(handles.inputB0,'string'));
         B1 = str2num(get(handles.inputB1,'string'));
    end
    if m == 2
         B0 = str2num(get(handles.inputB0,'string'));
         B1 = str2num(get(handles.inputB1,'string'));
         B2 = str2num(get(handles.inputB2,'string'));
    end
    if m == 3
         B0 = str2num(get(handles.inputB0,'string'));
         B1 = str2num(get(handles.inputB1,'string'));
         B2 = str2num(get(handles.inputB2,'string'));
         B3 = str2num(get(handles.inputB3,'string'));
    end
end 
if n == 4
         A0 = str2num(get(handles.inputA0,'string'));
         A1 = str2num(get(handles.inputA1,'string'));
         A2 = str2num(get(handles.inputA2,'string'));
         A3 = str2num(get(handles.inputA3,'string'));
         A4 = str2num(get(handles.inputA4,'string'));

    if m == 0
         B0 = str2num(get(handles.inputB0,'string'));
    end
    if m == 1
         B0 = str2num(get(handles.inputB0,'string'));
         B1 = str2num(get(handles.inputB1,'string'));
    end
    if m == 2
         B0 = str2num(get(handles.inputB0,'string'));
         B1 = str2num(get(handles.inputB1,'string'));
         B2 = str2num(get(handles.inputB2,'string'));
    end
    if m == 3
         B0 = str2num(get(handles.inputB0,'string'));
         B1 = str2num(get(handles.inputB1,'string'));
         B2 = str2num(get(handles.inputB2,'string'));
         B3 = str2num(get(handles.inputB3,'string'));
    end
    if m == 4
         B0 = str2num(get(handles.inputB0,'string'));
         B1 = str2num(get(handles.inputB1,'string'));
         B2 = str2num(get(handles.inputB2,'string'));
         B3 = str2num(get(handles.inputB3,'string'));
         B4 = str2num(get(handles.inputB4,'string'));
    end
end

array = [ A0 , A1 , A2 , A3 , A4 ; B0 , B1 , B2 , B3 , B4];
if array(1,n+1) == 0
    
    msgbox('ERROR! Highest derivitive coefficent cannot be equal 0 use lower system order instead');
end

arr = [ A0/array(1,n+1) , A1/array(1,n+1) , A2/array(1,n+1) , A3/array(1,n+1) , A4/array(1,n+1) ;
        B0/array(1,n+1) , B1/array(1,n+1) , B2/array(1,n+1) , B3/array(1,n+1) , B4/array(1,n+1)];

mA = zeros(n,n);
mB = zeros(n,1);
mC = zeros(1,n);
mD = zeros(1,1);

        %Matrix A
        
    for ii=1:1:n-1
        for jj=1 : 1 : n
           if( (ii - jj) == -1 )
                mA(ii,jj) = 1;
           else mA(ii,jj) = 0;
           end
        end
    end
    
    for jj=1:1:n
        mA(n,jj) = -arr(1,jj);
    end
                set(handles.unipanel5,'data',mA);
                
        %Matrix B

        for ii=1:1:n-1
            mB(ii) = 0;
        end
        if n ~= 0 
        mB(n) = 1;
        end
                set(handles.unipanel6,'data',mB);
                
        %Matrix C
        
        for jj=1:1:n
         mC(1,jj) = arr(2,jj)- arr(1,jj)*arr(2,n+1);
        end
                set(handles.unipanel7,'data',mC);
                
        %Matrix D
        mD = arr(2,n+1);
                set(handles.unipanel8,'data',mD);
                
    %##########################################
    %define functions
    if n == 4
    fx1=@(t,x1,x2,x3,x4) x2;
    fx2=@(t,x1,x2,x3,x4) x3;
    fx3=@(t,x1,x2,x3,x4) x4;
    fx4=@(t,x1,x2,x3,x4) mA(n,1)*x1 + mA(n,2)*x2 + mA(n,3)*x3 + mA(n,4)*x4 + 1;
    elseif n == 3
    fx1=@(t,x1,x2,x3,x4) x2;
    fx2=@(t,x1,x2,x3,x4) x3;
    fx3=@(t,x1,x2,x3,x4) mA(n,1)*x1 + mA(n,2)*x2 + mA(n,3)*x3 + 1;
    fx4=@(t,x1,x2,x3,x4) 0;
    elseif n == 2
    fx1=@(t,x1,x2,x3,x4) x2;
    fx2=@(t,x1,x2,x3,x4) mA(n,1)*x1 + mA(n,2)*x2 + 1;
    fx3=@(t,x1,x2,x3,x4) 0;
    fx4=@(t,x1,x2,x3,x4) 0;
    elseif n == 1
    fx1=@(t,x1,x2,x3,x4) mA(n,1)*x1 + 1;
    fx2=@(t,x1,x2,x3,x4) 0;
    fx3=@(t,x1,x2,x3,x4) 0;
    fx4=@(t,x1,x2,x3,x4) 0;
    elseif n == 0
    fx1=@(t,x1,x2,x3,x4) 0;
    fx2=@(t,x1,x2,x3,x4) 0;
    fx3=@(t,x1,x2,x3,x4) 0;
    fx4=@(t,x1,x2,x3,x4) 0;
    end
    %intial conditions
    x1(1) = 0;
    x2(1) = 0;
    x3(1) = 0;
    x4(1) = 0;
    
    %Step size
    h = str2num(get(handles.edit19,'string'));
 
    tfinal = str2num(get(handles.edit20,'string'));
    N = ceil(tfinal/h);
            t = 1:0.1:tfinal;

    %Update loop
    
    for i=1:1:N
        %Update time
        t(i+1) = t(i) + h;
        
        W1x1 = h * fx1(t(i),     x1(i),        x2(i),        x3(i),        x4(i));
        W1x2 = h * fx2(t(i),     x1(i),        x2(i),        x3(i),        x4(i));
        W1x3 = h * fx3(t(i),     x1(i),        x2(i),        x3(i),        x4(i));
        W1x4 = h * fx4(t(i),     x1(i),        x2(i),        x3(i),        x4(i));
        
        W2x1 = h * fx1(t(i)+h/2, x1(i)+W1x1/2, x2(i)+W1x2/2, x3(i)+W1x3/2, x4(i)+W1x4/2 );
        W2x2 = h * fx2(t(i)+h/2, x1(i)+W1x1/2, x2(i)+W1x2/2, x3(i)+W1x3/2, x4(i)+W1x4/2 );
        W2x3 = h * fx3(t(i)+h/2, x1(i)+W1x1/2, x2(i)+W1x2/2, x3(i)+W1x3/2, x4(i)+W1x4/2 );
        W2x4 = h * fx4(t(i)+h/2, x1(i)+W1x1/2, x2(i)+W1x2/2, x3(i)+W1x3/2, x4(i)+W1x4/2 );
        
        W3x1 = h * fx1(t(i)+h/2, x1(i)+W2x1/2, x2(i)+W2x2/2, x3(i)+W2x3/2, x4(i)+W2x4/2 );
        W3x2 = h * fx2(t(i)+h/2, x1(i)+W2x1/2, x2(i)+W2x2/2, x3(i)+W2x3/2, x4(i)+W2x4/2 );
        W3x3 = h * fx3(t(i)+h/2, x1(i)+W2x1/2, x2(i)+W2x2/2, x3(i)+W2x3/2, x4(i)+W2x4/2 );
        W3x4 = h * fx4(t(i)+h/2, x1(i)+W2x1/2, x2(i)+W2x2/2, x3(i)+W2x3/2, x4(i)+W2x4/2 );
        
        W4x1 = h * fx1(t(i)+h, x1(i)+W3x1/2, x2(i)+W3x2/2, x3(i)+W3x3/2, x4(i)+W3x4 );
        W4x2 = h * fx2(t(i)+h, x1(i)+W3x1/2, x2(i)+W3x2/2, x3(i)+W3x3/2, x4(i)+W3x4 );
        W4x3 = h * fx3(t(i)+h, x1(i)+W3x1/2, x2(i)+W3x2/2, x3(i)+W3x3/2, x4(i)+W3x4 );
        W4x4 = h * fx4(t(i)+h, x1(i)+W3x1/2, x2(i)+W3x2/2, x3(i)+W3x3/2, x4(i)+W3x4 );
        
        x1(i+1) = x1(i) + 1/6 * (  W1x1 + 2 * W2x1 + 2 * W3x1 + W4x1 );
        x2(i+1) = x2(i) + 1/6 * (  W1x2 + 2 * W2x2 + 2 * W3x2 + W4x2 );
        x3(i+1) = x3(i) + 1/6 * (  W1x3 + 2 * W2x3 + 2 * W3x3 + W4x3 );
        x4(i+1) = x4(i) + 1/6 * (  W1x4 + 2 * W2x4 + 2 * W3x4 + W4x4 );

    end

    % output for step function
    y(1) =0;
        for i=1:1:N
            if n == 4
            y(i+1) = mC(1,1)*x1(i) + mC(1,2)*x2(i) + mC(1,3)*x3(i) + mC(1,4)*x4(i) + mD(1,1)*1;
            elseif n == 3
            y(i+1) = mC(1,1)*x1(i) + mC(1,2)*x2(i) + mC(1,3)*x3(i) + mD(1,1)*1;
            elseif n == 2
            y(i+1) = mC(1,1)*x1(i) + mC(1,2)*x2(i) + mD(1,1)*1;
            elseif n == 1
            y(i+1) = mC(1,1)*x1(i) + mD(1,1)*1;
            elseif n == 0
            y(i+1) = mD(1,1)*1;
            end
        end
        
    % getting output for impulse
    Y(1) = 0;
    X1(1) = 0;
    X2(1) = 0;
    X3(1) = 0;
    X4(1) = 0;
    
    for i=1:1:N
        Y(i+1)  =( y (i+1) - y (i) )/(h);
        X1(i+1) =( x1(i+1) - x1(i) )/(h);
        X2(i+1) =( x2(i+1) - x2(i) )/(h);
        X3(i+1) =( x3(i+1) - x3(i) )/(h);
        X4(i+1) =( x4(i+1) - x4(i) )/(h);

    end
    
    % output for impulse or unit step
    global TF
    axes(handles.axes4);
    if ( TF )
    plot(t,Y);
        axes(handles.axes10);
    plot(t,X1);
        axes(handles.axes12);
    plot(t,X2);
        axes(handles.axes13);
    plot(t,X3);
        axes(handles.axes14);
    plot(t,X4);
    else
    plot(t,y);
        axes(handles.axes10);
    plot(t,x1);
        axes(handles.axes12);
    plot(t,x2);
        axes(handles.axes13);
    plot(t,x3);
        axes(handles.axes14);
    plot(t,x4);
    end
    
% msgbox(sprintf('Event Frequency=%g Inner Race Fault Detected', B3), 'Fault Detected', 'warn')


% --- Executes during object creation, after setting all properties.
function fig_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fig (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
axis(hObject);
imshow('2.jpg');
% Hint: place code in OpeningFcn to populate fig




% --- Executes when selected object is changed in inputS.
function inputS_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in inputS 
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)
global u TF

u = get(handles.inputS,'SelectedObject');
inputSelection = get(u , 'String');

axes(handles.axes3);
   TF = strcmp(inputSelection,'Unit Impulse');
    
if  TF
    imshow('IMPULSE.jpg');
else
    imshow('STEP.jpg');
end
% --- Executes during object creation, after setting all properties.
function inputS_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function axes3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% Hint: place code in OpeningFcn to populate axes3



function inputA4_Callback(hObject, eventdata, handles)
% hObject    handle to inputA4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputA4 as text
%        str2double(get(hObject,'String')) returns contents of inputA4 as a double


function inputA3_Callback(hObject, eventdata, handles)
% hObject    handle to inputA3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputA3 as text
%        str2double(get(hObject,'String')) returns contents of inputA3 as a double



function inputB3_Callback(hObject, eventdata, handles)
% hObject    handle to inputB3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputB3 as text
%        str2double(get(hObject,'String')) returns contents of inputB3 as a double



function inputA2_Callback(hObject, eventdata, handles)
% hObject    handle to inputA2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputA2 as text
%        str2double(get(hObject,'String')) returns contents of inputA2 as a double



function inputB2_Callback(hObject, eventdata, handles)
% hObject    handle to inputB2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputB2 as text
%        str2double(get(hObject,'String')) returns contents of inputB2 as a double



function inputA1_Callback(hObject, eventdata, handles)
% hObject    handle to inputA1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputA1 as text
%        str2double(get(hObject,'String')) returns contents of inputA1 as a double



function inputB1_Callback(hObject, eventdata, handles)
% hObject    handle to inputB1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputB1 as text
%        str2double(get(hObject,'String')) returns contents of inputB1 as a double



function inputA0_Callback(hObject, eventdata, handles)
% hObject    handle to inputA0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputA0 as text
%        str2double(get(hObject,'String')) returns contents of inputA0 as a double



function inputB0_Callback(hObject, eventdata, handles)
% hObject    handle to inputB0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputB0 as text
%        str2double(get(hObject,'String')) returns contents of inputB0 as a double



function inputB4_Callback(hObject, eventdata, handles)
% hObject    handle to inputB4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputB4 as text
%        str2double(get(hObject,'String')) returns contents of inputB4 as a double


% --- Executes during object creation, after setting all properties.
function inputB4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputB4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function inputA4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputA4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function inputA3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputA3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function inputA2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputA2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function inputA1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputA1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function inputA0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputA0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function inputB0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputB0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function inputB1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputB1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function inputB2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputB2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function inputB3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputB3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object deletion, before destroying properties.
function inputB1_DeleteFcn(hObject, eventdata, handles)
% hObject    handle to inputB1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1



function edit19_Callback(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit19 as text
%        str2double(get(hObject,'String')) returns contents of edit19 as a double


% --- Executes during object creation, after setting all properties.
function edit19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit20_Callback(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit20 as text
%        str2double(get(hObject,'String')) returns contents of edit20 as a double


% --- Executes during object creation, after setting all properties.
function edit20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
