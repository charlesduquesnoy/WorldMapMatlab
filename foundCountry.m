S1 = load('worldMap.mat').WorldMap;

% Target lat and lon (e.g Tokyo)
lat = 68.3594;
lon = -133.7294;

% Find which country contains (lat,lon)

idx = cellfun(@(X,Y) inpolygon(lon,lat,X,Y),S1(:,1), S1(:,2));

% Show the result
disp(string(S1(idx,3)))