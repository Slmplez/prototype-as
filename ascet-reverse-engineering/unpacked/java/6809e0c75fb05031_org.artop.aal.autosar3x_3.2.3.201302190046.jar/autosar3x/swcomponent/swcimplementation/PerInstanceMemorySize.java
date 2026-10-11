/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.swcomponent.swcimplementation;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.swcimplementation.SwcImplementation;
import autosar3x.swcomponent.swcinternalbehavior.perinstancememory.PerInstanceMemory;

public interface PerInstanceMemorySize
extends ARObject {
    public SwcImplementation getSwcImplementation();

    public void setSwcImplementation(SwcImplementation var1);

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

