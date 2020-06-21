--- @class GNextBot
--- NextBots are a new system to create NPCs in the Source Engine, utilizing the more powerful navmesh system for navigation over the old node based system.  
--- This page lists all possible functions usable with NextBots.  
--- See NextBot NPC Creation for more information on how to create NextBot NPCs.  
local GNextBot = {}
--- Become a ragdoll and remove the entity.  
--- @param info GCTakeDamageInfo @Damage info passed from an onkilled event
--- @return GEntity @The created ragdoll, if any.
function GNextBot:BecomeRagdoll(info)
end

--- Should only be called in BodyUpdate. This sets the move_x and move_y pose parameters of the bot to fit how they're currently moving, sets the animation speed to suit the ground speed, and calls FrameAdvance.  
--- * **BUG**: [This function might cause crashes with some activities.](https://github.com/Facepunch/garrysmod-issues/issues/3420)  
function GNextBot:BodyMoveXY()
end

--- Like NextBot:FindSpots but only returns a vector.  
--- @param type string @Either "random", "near", "far"
--- @param options table @This table should contain the search info
--- @return GVector @If it finds a spot it will return a vector
function GNextBot:FindSpot(type, options)
end

--- Returns a table of hiding spots.  
--- @param specs table @This table should contain the search info
--- @return table @An unsorted table of tables containing:
function GNextBot:FindSpots(specs)
end

--- Returns the currently running activity  
--- @return number @The current activity
function GNextBot:GetActivity()
end

--- Returns squared distance to an entity or a position.  
--- See also NextBot:GetRangeTo.  
--- @param to GVector @The position to measure distance to
--- @return number @The squared distance
function GNextBot:GetRangeSquaredTo(to)
end

--- Returns the distance to an entity or position.  
--- See also NextBot:GetRangeSquaredTo.  
--- @param to GVector @The position to measure distance to
--- @return number @The distance
function GNextBot:GetRangeTo(to)
end

--- Returns the solid mask for given NextBot.  
--- @return number @The solid mask, see Enums/CONTENTS and Enums/MASK
function GNextBot:GetSolidMask()
end

--- Called from Lua when the NPC is stuck. This should only be called from the behaviour coroutine - so if you want to override this function and do something special that yields - then go for it.  
--- You should always call self.loco:ClearStuck() in this function to reset the stuck status - so it knows it's unstuck. See CLuaLocomotion:ClearStuck.  
function GNextBot:HandleStuck()
end

--- To be called in the behaviour coroutine only! Will yield until the bot has reached the goal or is stuck  
--- @param pos GVector @The position we want to get to
--- @param options table @A table containing a bunch of tweakable options
--- @return string @Either "failed", "stuck", "timeout" or "ok" - depending on how the NPC got on
function GNextBot:MoveToPos(pos, options)
end

--- To be called in the behaviour coroutine only! Plays an animation sequence and waits for it to end before returning.  
--- @param name string @The sequence name
--- @param speed number @Playback Rate of that sequence
function GNextBot:PlaySequenceAndWait(name, speed)
end

--- Sets the solid mask for given NextBot.  
--- The default solid mask of a NextBot is MASK_NPCSOLID.  
--- @param mask number @The new mask, see Enums/CONTENTS and Enums/MASK
function GNextBot:SetSolidMask(mask)
end

--- Start doing an activity (animation)  
--- @param activity number @One of the Enums/ACT
function GNextBot:StartActivity(activity)
end

