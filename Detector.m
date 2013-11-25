function Detector( record )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
  fileName = sprintf('%sm.mat', record);
  t=cputime();
  m=7;
  normalizeConst=32;
  idx = QRSDetect(fileName,m, normalizeConst);
  fprintf('Running time: %f\n', cputime() - t);
  asciName = sprintf('%s.asc',record);
  fid = fopen(asciName, 'wt');
  for i=1:size(idx,2)
      fprintf(fid,'0:00:00.00 %d N 0 0 0\n', idx(1,i) );
  end
  fclose(fid);
end

