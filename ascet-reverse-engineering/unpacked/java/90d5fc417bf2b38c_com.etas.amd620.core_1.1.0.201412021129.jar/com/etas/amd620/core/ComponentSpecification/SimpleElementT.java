/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.InterfacesType4;
import com.etas.amd620.core.ComponentSpecification.SimpleElementBaseT;
import com.etas.amd620.core.ComponentSpecification.TypeType2;

public interface SimpleElementT
extends SimpleElementBaseT {
    public InterfacesType4 getInterfaces();

    public void setInterfaces(InterfacesType4 var1);

    public TypeType2 getType();

    public void setType(TypeType2 var1);

    public void unsetType();

    public boolean isSetType();
}

