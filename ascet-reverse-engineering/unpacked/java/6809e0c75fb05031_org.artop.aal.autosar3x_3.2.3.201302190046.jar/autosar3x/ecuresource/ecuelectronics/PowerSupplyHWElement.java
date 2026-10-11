/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.ecuresource.ecuelectronics;

import autosar3x.ecuresource.ecuelectronics.ECUElectronics;
import autosar3x.ecuresource.ecuelectronics.HwElementResetOnFaultBehaviourEnum;
import autosar3x.ecuresource.ecuelectronics.PowerSupplyCurrentNotification;
import autosar3x.ecuresource.ecuelectronics.PowerSupplyVoltageNotification;

public interface PowerSupplyHWElement
extends ECUElectronics {
    public Double getBackupCapacity();

    public void setBackupCapacity(Double var1);

    public void unsetBackupCapacity();

    public boolean isSetBackupCapacity();

    public Double getDefaultVoltageOnReset();

    public void setDefaultVoltageOnReset(Double var1);

    public void unsetDefaultVoltageOnReset();

    public boolean isSetDefaultVoltageOnReset();

    public Double getMaxVoltage();

    public void setMaxVoltage(Double var1);

    public void unsetMaxVoltage();

    public boolean isSetMaxVoltage();

    public Double getMinVoltage();

    public void setMinVoltage(Double var1);

    public void unsetMinVoltage();

    public boolean isSetMinVoltage();

    public Boolean getNotificationOverTemperature();

    public void setNotificationOverTemperature(Boolean var1);

    public void unsetNotificationOverTemperature();

    public boolean isSetNotificationOverTemperature();

    public Boolean getNotificationReset();

    public void setNotificationReset(Boolean var1);

    public void unsetNotificationReset();

    public boolean isSetNotificationReset();

    public PowerSupplyCurrentNotification getOverCurrentNotification();

    public void setOverCurrentNotification(PowerSupplyCurrentNotification var1);

    public PowerSupplyVoltageNotification getOverVoltageNotification();

    public void setOverVoltageNotification(PowerSupplyVoltageNotification var1);

    public Double getResetDelay();

    public void setResetDelay(Double var1);

    public void unsetResetDelay();

    public boolean isSetResetDelay();

    public HwElementResetOnFaultBehaviourEnum getResetOnFaultBehaviour();

    public void setResetOnFaultBehaviour(HwElementResetOnFaultBehaviourEnum var1);

    public void unsetResetOnFaultBehaviour();

    public boolean isSetResetOnFaultBehaviour();

    public PowerSupplyVoltageNotification getUnderVoltageNotification();

    public void setUnderVoltageNotification(PowerSupplyVoltageNotification var1);

    public Boolean getWakeupCapability();

    public void setWakeupCapability(Boolean var1);

    public void unsetWakeupCapability();

    public boolean isSetWakeupCapability();
}

