/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.ecuresource.ecuelectronics;

import autosar3x.ecuresource.ecuelectronics.PowerDriverHWElement;
import autosar3x.genericstructure.infrastructure.ARObject;

public interface PowerDriverProtection
extends ARObject {
    public PowerDriverHWElement getPowerDriverHWElement();

    public void setPowerDriverHWElement(PowerDriverHWElement var1);

    public Boolean getLossOfGroundProtection();

    public void setLossOfGroundProtection(Boolean var1);

    public void unsetLossOfGroundProtection();

    public boolean isSetLossOfGroundProtection();

    public Boolean getMaxCurrentProtection();

    public void setMaxCurrentProtection(Boolean var1);

    public void unsetMaxCurrentProtection();

    public boolean isSetMaxCurrentProtection();

    public Boolean getMaxVoltageProtection();

    public void setMaxVoltageProtection(Boolean var1);

    public void unsetMaxVoltageProtection();

    public boolean isSetMaxVoltageProtection();

    public Boolean getMinCurrentProtection();

    public void setMinCurrentProtection(Boolean var1);

    public void unsetMinCurrentProtection();

    public boolean isSetMinCurrentProtection();

    public Boolean getMinVoltageProtection();

    public void setMinVoltageProtection(Boolean var1);

    public void unsetMinVoltageProtection();

    public boolean isSetMinVoltageProtection();

    public Boolean getOverTemperatureProtection();

    public void setOverTemperatureProtection(Boolean var1);

    public void unsetOverTemperatureProtection();

    public boolean isSetOverTemperatureProtection();

    public Boolean getReverseBatteryProtection();

    public void setReverseBatteryProtection(Boolean var1);

    public void unsetReverseBatteryProtection();

    public boolean isSetReverseBatteryProtection();
}

