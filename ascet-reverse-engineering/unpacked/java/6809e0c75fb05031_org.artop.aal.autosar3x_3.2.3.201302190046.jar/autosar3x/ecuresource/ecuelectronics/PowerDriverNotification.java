/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.ecuresource.ecuelectronics;

import autosar3x.ecuresource.ecuelectronics.PowerDriverHWElement;
import autosar3x.ecuresource.processingunit.InterruptProduceHWPort;
import autosar3x.genericstructure.infrastructure.ARObject;

public interface PowerDriverNotification
extends ARObject {
    public PowerDriverHWElement getPowerDriverHWElement();

    public void setPowerDriverHWElement(PowerDriverHWElement var1);

    public InterruptProduceHWPort getIssuedInterruptSource();

    public void setIssuedInterruptSource(InterruptProduceHWPort var1);

    public Boolean getLossOfGround();

    public void setLossOfGround(Boolean var1);

    public void unsetLossOfGround();

    public boolean isSetLossOfGround();

    public Boolean getMaxCurrent();

    public void setMaxCurrent(Boolean var1);

    public void unsetMaxCurrent();

    public boolean isSetMaxCurrent();

    public Boolean getMaxVoltage();

    public void setMaxVoltage(Boolean var1);

    public void unsetMaxVoltage();

    public boolean isSetMaxVoltage();

    public Boolean getMinCurrent();

    public void setMinCurrent(Boolean var1);

    public void unsetMinCurrent();

    public boolean isSetMinCurrent();

    public Boolean getMinVoltage();

    public void setMinVoltage(Boolean var1);

    public void unsetMinVoltage();

    public boolean isSetMinVoltage();

    public Boolean getOpenLoad();

    public void setOpenLoad(Boolean var1);

    public void unsetOpenLoad();

    public boolean isSetOpenLoad();

    public Boolean getOverTemperature();

    public void setOverTemperature(Boolean var1);

    public void unsetOverTemperature();

    public boolean isSetOverTemperature();

    public Boolean getShortLoad();

    public void setShortLoad(Boolean var1);

    public void unsetShortLoad();

    public boolean isSetShortLoad();

    public Boolean getShortToBatt();

    public void setShortToBatt(Boolean var1);

    public void unsetShortToBatt();

    public boolean isSetShortToBatt();

    public Boolean getShortToGround();

    public void setShortToGround(Boolean var1);

    public void unsetShortToGround();

    public boolean isSetShortToGround();
}

