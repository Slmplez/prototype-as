/*
 * Decompiled with CFR 0.152.
 */
package autosar21.ecuresource.peripherals;

import autosar21.ecuresource.peripherals.ADCBehaviourAtLimitEnum;
import autosar21.ecuresource.peripherals.AnalogueIO;

public interface ADC
extends AnalogueIO {
    public ADCBehaviourAtLimitEnum getBehaviourAtLimit();

    public void setBehaviourAtLimit(ADCBehaviourAtLimitEnum var1);

    public void unsetBehaviourAtLimit();

    public boolean isSetBehaviourAtLimit();
}

