/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.InterfacesType5;
import com.etas.amd620.core.ComponentSpecification.SimpleElementBaseT;

public interface ImplementationCastT
extends SimpleElementBaseT {
    public InterfacesType5 getInterfaces();

    public void setInterfaces(InterfacesType5 var1);

    public boolean isTempVar();

    public void setTempVar(boolean var1);

    public void unsetTempVar();

    public boolean isSetTempVar();
}

