/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcinternalbehavior.gperinstancememory.GPerInstanceMemory
 */
package autosar3x.swcomponent.swcinternalbehavior.perinstancememory;

import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.swcomponent.swcinternalbehavior.InternalBehavior;
import gautosar.gswcomponents.gswcinternalbehavior.gperinstancememory.GPerInstanceMemory;

public interface PerInstanceMemory
extends Identifiable,
GPerInstanceMemory {
    public InternalBehavior getInternalBehavior();

    public void setInternalBehavior(InternalBehavior var1);

    public String getType();

    public void setType(String var1);

    public void unsetType();

    public boolean isSetType();

    public String getTypeDefinition();

    public void setTypeDefinition(String var1);

    public void unsetTypeDefinition();

    public boolean isSetTypeDefinition();
}

