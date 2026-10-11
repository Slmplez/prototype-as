/*
 * Decompiled with CFR 0.152.
 */
package gautosar.gecucparameterdef;

import gautosar.gecucparameterdef.GParamConfMultiplicity;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;

public interface GContainerDef
extends GIdentifiable,
GParamConfMultiplicity {
    public Boolean gGetPostBuildChangeable();

    public void gSetPostBuildChangeable(Boolean var1);
}

