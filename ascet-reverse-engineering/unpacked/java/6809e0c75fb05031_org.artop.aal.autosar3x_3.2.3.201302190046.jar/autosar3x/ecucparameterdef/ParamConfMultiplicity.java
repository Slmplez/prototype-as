/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GParamConfMultiplicity
 */
package autosar3x.ecucparameterdef;

import autosar3x.genericstructure.infrastructure.ARObject;
import gautosar.gecucparameterdef.GParamConfMultiplicity;

public interface ParamConfMultiplicity
extends ARObject,
GParamConfMultiplicity {
    public String getLowerMultiplicity();

    public void setLowerMultiplicity(String var1);

    public void unsetLowerMultiplicity();

    public boolean isSetLowerMultiplicity();

    public String getUpperMultiplicity();

    public void setUpperMultiplicity(String var1);

    public void unsetUpperMultiplicity();

    public boolean isSetUpperMultiplicity();
}

