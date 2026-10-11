/*
 * Decompiled with CFR 0.152.
 */
package autosar21.ecuresource.ecuelectronics;

import autosar21.ecuresource.ecuelectronics.ECUElectronics;
import autosar21.ecuresource.ecuelectronics.PowerDriverHWElementDefaultResetBehaviuorEnum;
import autosar21.ecuresource.ecuelectronics.PowerDriverHWElementPowerDriverTypeEnum;
import autosar21.ecuresource.ecuelectronics.PowerDriverHWElementResetOnFaultBehaviourEnum;
import autosar21.ecuresource.ecuelectronics.PowerDriverNotification;
import autosar21.ecuresource.ecuelectronics.PowerDriverProtection;

public interface PowerDriverHWElement
extends ECUElectronics {
    public Double getCurrentLimitation();

    public void setCurrentLimitation(Double var1);

    public void unsetCurrentLimitation();

    public boolean isSetCurrentLimitation();

    public PowerDriverHWElementDefaultResetBehaviuorEnum getDefaultResetBehaviuor();

    public void setDefaultResetBehaviuor(PowerDriverHWElementDefaultResetBehaviuorEnum var1);

    public void unsetDefaultResetBehaviuor();

    public boolean isSetDefaultResetBehaviuor();

    public PowerDriverNotification getNotification();

    public void setNotification(PowerDriverNotification var1);

    public Double getOnStateResistance();

    public void setOnStateResistance(Double var1);

    public void unsetOnStateResistance();

    public boolean isSetOnStateResistance();

    public PowerDriverHWElementPowerDriverTypeEnum getPowerDriverType();

    public void setPowerDriverType(PowerDriverHWElementPowerDriverTypeEnum var1);

    public void unsetPowerDriverType();

    public boolean isSetPowerDriverType();

    public PowerDriverProtection getProtection();

    public void setProtection(PowerDriverProtection var1);

    public PowerDriverHWElementResetOnFaultBehaviourEnum getResetOnFaultBehaviour();

    public void setResetOnFaultBehaviour(PowerDriverHWElementResetOnFaultBehaviourEnum var1);

    public void unsetResetOnFaultBehaviour();

    public boolean isSetResetOnFaultBehaviour();
}

