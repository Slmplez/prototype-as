/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.applicationattributes;

import autosar21.swcomponent.applicationattributes.MaxCommMode;
import autosar21.swcomponent.applicationattributes.ServiceNeeds;

public interface ComMUserNeeds
extends ServiceNeeds {
    public MaxCommMode getMaxCommMode();

    public void setMaxCommMode(MaxCommMode var1);

    public void unsetMaxCommMode();

    public boolean isSetMaxCommMode();
}

