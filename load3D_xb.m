function load3D_xb(filename)

% function load3D(filename)
% Load the 3-D array of 32-bit floats from filename.3d to global
% array xb.

global xb

fid=fopen([filename '.3d'],'r');
if fid < 0,
   error(['Cannot open 3D file: ' filename '.3d for reading']);
end

sx = fread(fid,3,'int32');

xb = zeros(sx.');
xb(:)=fread(fid,inf,'float32');

fclose(fid);
return;
