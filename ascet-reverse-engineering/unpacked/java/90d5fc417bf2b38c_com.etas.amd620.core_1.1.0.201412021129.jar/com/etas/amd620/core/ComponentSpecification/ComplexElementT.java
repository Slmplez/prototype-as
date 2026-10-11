/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.LayoutT;
import com.etas.amd620.core.ComponentSpecification.TypeType3;

public interface ComplexElementT
extends LayoutT {
    public String getElementName();

    public void setElementName(String var1);

    public String getElementOID();

    public void setElementOID(String var1);

    public String getMethodName();

    public void setMethodName(String var1);

    public TypeType3 getType();

    public void setType(TypeType3 var1);

    public void unsetType();

    public boolean isSetType();
}

