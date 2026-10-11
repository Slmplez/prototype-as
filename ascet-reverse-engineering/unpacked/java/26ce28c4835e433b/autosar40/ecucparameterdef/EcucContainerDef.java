/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GContainerDef
 */
package autosar40.ecucparameterdef;

import autosar40.ecucparameterdef.EcucDefinitionElement;
import gautosar.gecucparameterdef.GContainerDef;

public interface EcucContainerDef
extends EcucDefinitionElement,
GContainerDef {
    public Boolean getPostBuildChangeable();

    public void setPostBuildChangeable(Boolean var1);

    public void unsetPostBuildChangeable();

    public boolean isSetPostBuildChangeable();
}

