AddCSLuaFile()

function SWEP:CanPlayAimDownAnim()
    return !self:HasFlag("Reloading") 
        && !self:HasFlag("Drawing") 
        && !self:HasFlag("Holstering") 
        && !self:HasFlag("Sprinting") 
        && CurTime() > self:GetNextSprintTime()
        && CurTime() > self:GetNextFiremodeTime()
        && CurTime() > self:GetNextMeleeTime()
        && CurTime() > self:GetNextPrimaryFire()
        && !self:HasFlag("Customizing")    
end

function SWEP:CanPlayAimUpAnim()
    return !self:HasFlag("Reloading") 
        && !self:HasFlag("Drawing") 
        && !self:HasFlag("Holstering") 
        && !self:HasFlag("Sprinting") 
        && CurTime() > self:GetNextSprintTime()
        && CurTime() > self:GetNextFiremodeTime()
        && CurTime() > self:GetNextMeleeTime()
        && CurTime() > self:GetNextPrimaryFire()
end

function SWEP:CanAim()
    return --[[!self:HasFlag("Reloading") 
        &&!self:HasFlag("Drawing") 
        &&]] !self:HasFlag("Holstering") 
        && !self:HasFlag("Sprinting") 
        && !self:HasFlag("Customizing")
        && !self:HasFlag("PlayFirstDraw")
        --&& (!self:GetOwner():KeyDown(IN_USE) || (self:GetOwner():KeyDown(IN_USE) && self:GetAimDelta() > 0))
        && CurTime() > self:GetNextSprintTime() 
        && CurTime() > self:GetNextMeleeTime()
        --&& !self:HasFlag("Customizing")
        && !(self.CanDisableAimReload && self:HasFlag("Reloading"))
        && !(self:IsOwnerMoving() && self:GetOwner():KeyDown(IN_SPEED))
        --&& !self:GetOwner():KeyDown(IN_USE)
        --&& CurTime() > self:GetNextFiremodeTime()
end

function SWEP:AimLogic()
    if (CLIENT && game.SinglePlayer()) then
        return
    end

    if (self:GetOwner():GetInfoNum("mgbase_toggleaim", 0) >= 1) then
        if (self:GetOwner():KeyPressed(IN_ATTACK2)) then
            self:SetToggleAim(!self:GetToggleAim())
        end
    else
        self:SetToggleAim(self:GetOwner():KeyDown(IN_ATTACK2))
    end

    if (self:CanAim() && self:GetToggleAim()) then
        self:RemoveFlag("Lowered")
        self:SetNextInspectTime(0)

        if (!self:HasFlag("Aiming") && self:CanPlayAimUpAnim()) then
            self:PlayViewModelAnimation("Ads_In")
        end
    
        self:AddFlag("Aiming")
    
        local speed = 1 / self:GetAnimLength("Ads_In");
        self:SetAimDelta(math.min(self:GetAimDelta() + speed * FrameTime(), 1))
    else
        if (self:HasFlag("Aiming") && self:CanPlayAimDownAnim()) then
            self:PlayViewModelAnimation("Ads_Out")
        end

        self:RemoveFlag("Aiming")

        local speed = 1 / self:GetAnimLength("Ads_Out");
        self:SetAimDelta(math.max(self:GetAimDelta() - speed * FrameTime(), 0))
    end

    --aim mode
    if (self:GetAimMode() > 0) then
        local len = self:GetAnimLength("Ads_In") * 0.5

        if (self:GetSight() != nil && self:GetSight().ReticleHybrid != nil && self:GetSight().ReticleHybrid.OnAnimation != nil) then
            len = self:GetAnimLength(self:GetSight().ReticleHybrid.OnAnimation)
        end

        local speed = 1 / len;
        self:SetAimModeDelta(math.min(self:GetAimModeDelta() + speed * FrameTime(), 1))
    else
        local len = self:GetAnimLength("Ads_Out") * 0.5

        if (self:GetSight() != nil && self:GetSight().ReticleHybrid != nil && self:GetSight().ReticleHybrid.OffAnimation != nil) then
            len = self:GetAnimLength(self:GetSight().ReticleHybrid.OffAnimation)
        end

        local speed = 1 / len;
        self:SetAimModeDelta(math.max(self:GetAimModeDelta() - speed * FrameTime(), 0))
    end

    --breathe
    self:BreathingModule()
end

function SWEP:LauncherAimLogic()
    if (CLIENT && game.SinglePlayer()) then
        return
    end

    if (self:GetOwner():GetInfoNum("mgbase_toggleaim", 0) >= 1) then
        if (self:GetOwner():KeyPressed(IN_ATTACK2)) then
            self:SetToggleAim(!self:GetToggleAim())
        end
    else
        self:SetToggleAim(self:GetOwner():KeyDown(IN_ATTACK2))
    end

    if (self:CanAim() && (self:GetToggleAim() || (self:GetOwner():KeyDown(IN_ATTACK) && !self:HasFlag("Reloading")))) then
        self:RemoveFlag("Lowered")
        self:SetNextInspectTime(0)

        if (!self:HasFlag("Aiming") && self:CanPlayAimUpAnim()) then
            self:PlayViewModelAnimation("Ads_In")
        end
    
        self:AddFlag("Aiming")
    
        local speed = 1 / self:GetAnimLength("Ads_In");
        self:SetAimDelta(math.min(self:GetAimDelta() + speed * FrameTime(), 1))
    else
        if (self:HasFlag("Aiming") && self:CanPlayAimDownAnim()) then
            self:PlayViewModelAnimation("Ads_Out")
        end

        self:RemoveFlag("Aiming")

        local speed = 1 / self:GetAnimLength("Ads_Out");
        self:SetAimDelta(math.max(self:GetAimDelta() - speed * FrameTime(), 0))
    end

    --aim mode
    if (self:GetAimMode() > 0) then
        local len = self:GetAnimLength("Ads_In") * 0.5

        if (self:GetSight() != nil && self:GetSight().ReticleHybrid != nil && self:GetSight().ReticleHybrid.OnAnimation != nil) then
            len = self:GetAnimLength(self:GetSight().ReticleHybrid.OnAnimation)
        end

        local speed = 1 / len;
        self:SetAimModeDelta(math.min(self:GetAimModeDelta() + speed * FrameTime(), 1))
    else
        local len = self:GetAnimLength("Ads_Out") * 0.5

        if (self:GetSight() != nil && self:GetSight().ReticleHybrid != nil && self:GetSight().ReticleHybrid.OffAnimation != nil) then
            len = self:GetAnimLength(self:GetSight().ReticleHybrid.OffAnimation)
        end

        local speed = 1 / len;
        self:SetAimModeDelta(math.max(self:GetAimModeDelta() - speed * FrameTime(), 0))
    end

    --breathe
    self:BreathingModule()
    self:TrackingModule()
end

function SWEP:BreathingModule()
    if (self:GetSight() != nil && self:GetSight().Optic != nil && self:GetAimModeDelta() <= self.m_hybridSwitchThreshold && GetConVar("mgbase_sv_breathing"):GetInt() > 0) then
        local mul = 0.5

        if (self:HasFlag("Aiming")) then
            if (self:GetOwner():KeyDown(IN_SPEED) && !self:GetHasRunOutOfBreath()) then
                mul = 0.1

                self:SetBreathingDelta(math.max(self:GetBreathingDelta() - FrameTime() * 0.3, 0))

                if (self:GetBreathingDelta() <= 0) then
                    self:SetHasRunOutOfBreath(true)
                end
            end
        else
            self:SetBreathingDelta(math.min(self:GetBreathingDelta() + FrameTime() * 0.2, 1))
        end

        if (self:GetHasRunOutOfBreath()) then
            mul = 0.5 + (3 * (1 - self:GetBreathingDelta()))

            self:SetBreathingDelta(math.min(self:GetBreathingDelta() + FrameTime() * 0.2, 1))

            if (self:GetBreathingDelta() >= 1) then
                self:SetHasRunOutOfBreath(false)
            end
        end

        local pitch = math.sin(CurTime() * 3) * math.cos(CurTime() * 1.5)
        local yaw = math.cos(CurTime() * 1.5) * math.sin(CurTime() * 0.75)

        local ang = Angle(pitch * 0.2, yaw * 0.2, 0)
        ang:Mul(self:GetAimDelta() * mul)

        self:SetBreathingAngle(ang)
    else
        self:SetBreathingAngle(mw_math.ZeroAngle)
    end
end

function SWEP:CalcAngleDifference(AngA, AngB) 
    local difference = 0

    difference = difference + math.abs(math.AngleDifference(AngA.p, AngB.p))
    difference = difference + math.abs(math.AngleDifference(AngA.r, AngB.r))
    difference = difference + math.abs(math.AngleDifference(AngA.y, AngB.y))

    return difference
end

function SWEP:TrackingModule() 

    if !self.TrackingInfo then return end

    local angleForgiveness = 3.5

    local dir
    if self:GetPingedEntity():IsValid() then
        dir = self:GetPingedEntity():WorldSpaceAABB() - self:GetOwner():WorldSpaceAABB()
        dir = dir:Angle() 
    end


    if self:GetAimDelta() <= 0.8 then 
        if self:GetTrackedEntity():IsValid() || self:GetPingedEntity():IsValid() then
            self:StopPingingEntity()
            self:StopTrackingEntity() 
        end
    else

        local tr = self:GetOwner():GetEyeTrace()



        if self:GetPingedEntity():IsValid() && self:CalcAngleDifference(self:GetOwner():EyeAngles(), dir) < angleForgiveness then 

            if !self:GetTrackedEntity():IsValid() then
                if CurTime() >= self.PingData.TrackTime then 
                    self:StartTrackingEntity(self:GetPingedEntity())
                else 
                    for k, v in pairs(self.PingData.Pings) do 
                        if !v.WasActivated && CurTime() >= v.Time then 
                            self:EmitSound(self.TrackingInfo.PingSound)
                            v.WasActivated = true
                        end
                    end 
                end

            end
        elseif self:CanTrackEntity(tr.Entity) then 
            if !self.PingData then 
                self:StartPingingEntity(tr.Entity)
            end
        elseif tr.HitWorld || !self:CanTrackEntity(tr.Entity) then 

            if self:GetPingedEntity():IsValid() then
                local dir = self:GetPingedEntity():WorldSpaceAABB() - self:GetOwner():WorldSpaceAABB()
                dir = dir:Angle()
                if self:CalcAngleDifference(self:GetOwner():EyeAngles(), dir) > angleForgiveness then 
                    self:StopPingingEntity()
                    self:StopTrackingEntity()
                end
            end

            if self.TrackingInfo.TrackWorldPositions && !self:GetPingedEntity() then
                self.TrackedPosition = tr.HitPos
                self:SetTrackedEntity(nil) 
            end
        else 
            self:StopTrackingEntity()
        end 

    end
end

function SWEP:StartTrackingEntity(ent) 
    if !self:CanTrackEntity(ent) then return end
    self:SetTrackedEntity(ent)
    self:StopPingingEntity()
    self.TrackedEntity = ent
    self.TrackingSound = self:StartLoopingSound(self.TrackingInfo.Sound) --self.TrackingInfo.Sound
end

function SWEP:StopTrackingEntity() 
    self:SetTrackedEntity(nil)
    self.TrackedEntity = nil
    self:GetOwner():SendLua("LocalPlayer():GetActiveWeapon():SetTrackedEntity(nil)")
    if self.TrackingSound then
        self:StopLoopingSound(self.TrackingSound) 
    end
end

function SWEP:StartPingingEntity(ent) 
    if !self:CanTrackEntity(ent) then return end
    self:SetPingedEntity(ent)
    self.PingData = {
        TrackTime = CurTime() + self.TrackingInfo.PingTime * (self.TrackingInfo.PingCount + 1) - self.TrackingInfo.PingTime,
        Pings = {}
    }

    for i = 1, self.TrackingInfo.PingCount, 1 do 
        self.PingData.Pings[i] = {
            Time = (CurTime() + self.TrackingInfo.PingTime * i) - self.TrackingInfo.PingTime,
            WasActivated = false,
        }
    end
end

function SWEP:StopPingingEntity() 
    self:SetPingedEntity(nil)
    self:GetOwner():SendLua("LocalPlayer():GetActiveWeapon():SetPingedEntity(nil)")
    self.PingData = nil
end

function SWEP:GetPingedEntity() 
    return self:GetNWEntity("f_PingedEntity", nil)
end

function SWEP:SetPingedEntity(ent) 
    self:SetNWEntity("f_PingedEntity", ent)
end

function SWEP:GetTrackedEntity() 
    return self:GetNWEntity("f_TrackedEntity", nil)
end

function SWEP:SetTrackedEntity(ent) 
    self:SetNWEntity("f_TrackedEntity", ent)
end

function SWEP:CanTrackEntity(ent) 
    return ent:IsNPC() || ent:IsNextBot() || ent:IsVehicle() || ent:IsPlayer()
end

function SWEP:AdjustMouseSensitivity()
    // Calculate base multiplier for scope zoom transitions
    local mul = Lerp(self:GetAimModeDelta(), self.Zoom.FovMultiplier, 0.9)

    local aimDelta = self:GetAimDelta()
    if (aimDelta > 0 && CLIENT) then
        local magSens = 1 // Default sensitivity multiplier
        
        // Check if an optic sight equipped
        if (self:GetSight() != nil && self:GetSight().Base && string.find(self:GetSight().Base, "att_optic")) then
            local fovMul = self.Zoom.FovMultiplier // Get scope's zoom level
            
            // Map FOV multiplier to appropriate sensitivity setting
            if (fovMul >= 0.95 && fovMul < 1.05) then 
                magSens = GetConVar("mgbase_sensitivity_ads"):GetFloat()
            elseif (fovMul >= 0.65 && fovMul < 0.75) then 
                magSens = GetConVar("mgbase_sensitivity_1point5x"):GetFloat()
            elseif (fovMul >= 0.55 && fovMul < 0.65) then 
                magSens = GetConVar("mgbase_sensitivity_2x"):GetFloat()
            elseif (fovMul >= 0.45 && fovMul < 0.55) then 
                magSens = GetConVar("mgbase_sensitivity_3x"):GetFloat()
            elseif (fovMul >= 0.35 && fovMul < 0.45) then 
                magSens = GetConVar("mgbase_sensitivity_4x"):GetFloat()
            elseif (fovMul >= 0.15 && fovMul < 0.35) then
                magSens = GetConVar("mgbase_sensitivity_20x"):GetFloat()
            elseif (fovMul < 0.15) then
                magSens = GetConVar("mgbase_sensitivity_20x"):GetFloat()
            else // If unsure goes back to general ADS
                magSens = GetConVar("mgbase_sensitivity_ads"):GetFloat()
            end
        else
            // No optic used
            magSens = GetConVar("mgbase_sensitivity_ads"):GetFloat()
        end

        
        mul = mul * Lerp(aimDelta, 1, magSens)
    end

    
	return Lerp(self:GetAimDelta(), 1, mul)
end
