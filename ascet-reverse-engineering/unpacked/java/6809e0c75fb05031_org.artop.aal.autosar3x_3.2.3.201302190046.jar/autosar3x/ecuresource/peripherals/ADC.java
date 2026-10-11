/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.ecuresource.peripherals;

import autosar3x.ecuresource.peripherals.AdcBehaviourAtLimitEnum;
import autosar3x.ecuresource.peripherals.AnalogueIO;

public interface ADC
extends AnalogueIO {
    public AdcBehaviourAtLimitEnum getBehaviourAtLimit();

    public void setBehaviourAtLimit(AdcBehaviourAtLimitEnum var1);

    public void unsetBehaviourAtLimit();

    public boolean isSetBehaviourAtLimit();
}

