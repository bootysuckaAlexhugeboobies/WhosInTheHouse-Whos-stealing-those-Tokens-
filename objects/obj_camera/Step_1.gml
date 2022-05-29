/// @description camera regions
// extremely badly coded ones at that

with obj_cameraregion
{
	if col
	{
		if boundary_x
		{
			other.limitcam[0] = Approach(other.limitcam[0], x, 32);
			other.limitcam[2] = Approach(other.limitcam[2], x + sprite_width, 32);
		}
		if boundary_y
		{
			other.limitcam[1] = Approach(other.limitcam[1], y, 32);
			other.limitcam[3] = Approach(other.limitcam[3], y + sprite_height, 32);
		}
		other.angle = Approach(other.angle, angle, 5);
		other.zoom = Approach(other.zoom, zoom, 0.15);
		exit;
	}
}
zoom = Approach(zoom, 1, 0.15);
angle = Approach(angle, 0, 5);
limitcam[0] = Approach(limitcam[0], 0, 32);
limitcam[1] = Approach(limitcam[1], 0, 32);
limitcam[2] = Approach(limitcam[2], room_width, 32);
limitcam[3] = Approach(limitcam[3], room_height, 32);

if limitcam[0] < _camx - 64
	limitcam[0] = 0;
if limitcam[1] < _camy - 64
	limitcam[1] = 0;
if limitcam[2] > _camx + _camw + 64
	limitcam[2] = room_width;
if limitcam[3] > _camy + _camh + 64
	limitcam[3] = room_height;
