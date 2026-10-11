/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.ecuresource;

import autosar3x.ecuresource.HWElementContainer;
import autosar3x.swcomponent.components.ComponentType;

public interface ECU
extends HWElementContainer {
    public ComponentType getEcuAbstraction();

    public void setEcuAbstraction(ComponentType var1);
}

