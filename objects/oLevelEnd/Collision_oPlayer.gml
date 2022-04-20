/// @description next room

with (oPlayer)
{
	if (hascontrol)
	{
		hascontrol = false;
		SlideTrans(TRANS_MODE.GOTO,other.target);
	}
}
