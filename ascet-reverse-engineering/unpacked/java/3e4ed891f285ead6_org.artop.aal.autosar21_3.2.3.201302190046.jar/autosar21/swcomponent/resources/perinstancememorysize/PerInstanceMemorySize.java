/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.resources.perinstancememorysize;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.internalbehavior.perinstancememory.PerInstanceMemory;
import autosar21.swcomponent.resources.ResourceConsumption;

public interface PerInstanceMemorySize
extends ARObject {
    public ResourceConsumption getResourceConsumption();

    public void setResourceConsumption(ResourceConsumption var1);

    public Integer getAlignment();

    public void setAlignment(Integer var1);

    public void unsetAlignment();

    public boolean isSetAlignment();

    public PerInstanceMemory getPerInstanceMemory();

    public void setPerInstanceMemory(PerInstanceMemory var1);

    public Integer getSize();

    public void setSize(Integer var1);

    public void unsetSize();

    public boolean isSetSize();
}

