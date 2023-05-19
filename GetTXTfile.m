

% fileID=fopen('./test.txt','w+');
% tline=[tline,'\r\n'];
ShapeBox=100;
Tetrode=5;
Unit=2;
[file,path] = uigetfile('*.txt',...
    'Select One or More Files', ...
    'MultiSelect', 'on');
fileID=fopen('./498_2.txt','w+');

for i=1:length(file)
    [filepath,name,ext] = fileparts(file{1,i})
    %       fprintf('',path)
    fprintf(fileID,['Session ' '%s' name '\r\n'],path);
    fprintf(fileID,['Shape Box %i\r\n'],ShapeBox);
    fprintf(fileID,['Tetrode %i\r\n'],Tetrode);
    fprintf(fileID,['Unit %i\r\n'],Unit);

    if i==length(file)
        fprintf(fileID,['---']);
    else
        fprintf(fileID,['---\r\n']);
    end
    % 	fprintf(fileID,'%.4f %.4f %.4f \r\n',data(i,:)); %data的列数有几列，就存在几个%.4f
end
fclose(fileID);

