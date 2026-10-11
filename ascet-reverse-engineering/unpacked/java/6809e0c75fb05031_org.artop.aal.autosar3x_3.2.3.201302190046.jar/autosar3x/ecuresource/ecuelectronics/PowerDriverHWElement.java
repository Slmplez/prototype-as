/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.ecuresource.ecuelectronics;

import autosar3x.ecuresource.ecuelectronics.ECUElectronics;
import autosar3x.ecuresource.ecuelectronics.HwElementDefaultResetBehaviorEnum;
import autosar3x.ecuresource.ecuelectronics.HwElementPowerDriverTypeEnum;
import autosar3x.ecuresource.ecuelectronics.HwElementResetOnFaultBehaviourEnum;
import autosar3x.ecuresource.ecuelectronics.PowerDriverNotification;
import autosar3x.ecuresource.ecuelectronics.PowerDriverProtection;

public interface PowerDriverHWElement
extends ECUElectronics {
    public Double getCurrentLimitation();

    public void setCurrentLimitation(Double var1);

    public void unsetCurrentLimitation();

    public boolean isSetCurrentLimitation();

    public HwElementDefaultResetBehaviorEnum getDefaultResetBehaviuor();

    public void setDefaultResetBehaviuor(HwElementDefaultResetBehaviorEnum var1);

    public void unsetDefaultResetBehaviuor();

    public boolean isSetDefaultResetBehaviuor();

    public PowerDriverNotification getNotification();

    public void setNotification(PowerDriverNotification var1);

    public Double getOnStateResistance();

    public void setOnStateResistance(Double var1);

    public void unsetOnStateResistance();

    public boolean isSetOnStateResistance();

    public HwElementPowerDriverTypeEnum getPowerDriverType();

    public void setPowerDriverType(HwElementPowerDriverTypeEnum var1);

    public void unsetPowerDriverType();

    public boolean isSetPowerDriverType();

    public PowerDriverProtection getProtection();

    public void setProtection(PowerDriverProtection var1);

    public HwElementResetOnFaultBehaviourEnum getResetOnFaultBehaviour();

    public void setResetOnFaultBehaviour(HwElementResetOnFaultBehaviourEnum var1);

    public void unsetResetOnFaultBehaviour();

    public boolean isSetResetOnFaultBehaviour();
}

