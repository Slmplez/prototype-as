/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.serviceneeds;

import autosar3x.commonstructure.serviceneeds.MaxCommModeEnum;
import autosar3x.commonstructure.serviceneeds.ServiceNeeds;

public interface ComMgrUserNeeds
extends ServiceNeeds {
    public MaxCommModeEnum getMaxCommMode();

    public void setMaxCommMode(MaxCommModeEnum var1);

    public void unsetMaxCommMode();

    public boolean isSetMaxCommMode();
}

