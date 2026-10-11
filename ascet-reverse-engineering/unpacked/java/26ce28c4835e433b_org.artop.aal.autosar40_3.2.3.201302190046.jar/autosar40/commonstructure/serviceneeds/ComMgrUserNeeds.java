/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.serviceneeds;

import autosar40.commonstructure.serviceneeds.MaxCommModeEnum;
import autosar40.commonstructure.serviceneeds.ServiceNeeds;

public interface ComMgrUserNeeds
extends ServiceNeeds {
    public MaxCommModeEnum getMaxCommMode();

    public void setMaxCommMode(MaxCommModeEnum var1);

    public void unsetMaxCommMode();

    public boolean isSetMaxCommMode();
}

