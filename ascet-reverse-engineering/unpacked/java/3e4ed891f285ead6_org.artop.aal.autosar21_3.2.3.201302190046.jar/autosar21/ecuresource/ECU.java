/*
 * Decompiled with CFR 0.152.
 */
package autosar21.ecuresource;

import autosar21.ecuresource.HWElementContainer;
import autosar21.swcomponent.components.ComponentType;

public interface ECU
extends HWElementContainer {
    public ComponentType getEcuAbstraction();

    public void setEcuAbstraction(ComponentType var1);
}

