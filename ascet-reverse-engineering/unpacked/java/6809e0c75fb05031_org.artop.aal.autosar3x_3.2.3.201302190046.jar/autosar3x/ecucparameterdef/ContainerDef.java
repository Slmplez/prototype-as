/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GContainerDef
 */
package autosar3x.ecucparameterdef;

import autosar3x.ecucparameterdef.ParamConfMultiplicity;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import gautosar.gecucparameterdef.GContainerDef;

public interface ContainerDef
extends Identifiable,
ParamConfMultiplicity,
GContainerDef {
    public Boolean getPostBuildChangeable();

    public void setPostBuildChangeable(Boolean var1);

    public void unsetPostBuildChangeable();

    public boolean isSetPostBuildChangeable();
}

