/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb;

import autosar40.commonstructure.timing.timingdescription.TimingDescriptionEvent;
import autosar40.swcomponent.components.PortPrototype;
import autosar40.swcomponent.composition.instancerefs.ComponentInCompositionInstanceRef;

public interface TDEventVfb
extends TimingDescriptionEvent {
    public ComponentInCompositionInstanceRef getComponent();

    public void setComponent(ComponentInCompositionInstanceRef var1);

    public Boolean getIsExternal();

    public void setIsExternal(Boolean var1);

    public void unsetIsExternal();

    public boolean isSetIsExternal();

    public PortPrototype getPort();

    public void setPort(PortPrototype var1);
}

