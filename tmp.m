S1 = load('worldMap.mat').WorldMap;

% Target lat and lon (e.g Tokyo)
lat = 68.3594;
lon = -133.7294;

% Find which country contains (lat,lon)

idx = cellfun(@(X,Y) inpolygon(lon,lat,X,Y),S1.X, S1.Y);

% Show the result
disp(S1.NAME(idx))