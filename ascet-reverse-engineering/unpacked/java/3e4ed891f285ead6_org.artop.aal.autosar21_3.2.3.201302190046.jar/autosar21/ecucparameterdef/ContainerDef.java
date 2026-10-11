/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GContainerDef
 */
package autosar21.ecucparameterdef;

import autosar21.ecucparameterdef.ParamConfMultiplicity;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
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

