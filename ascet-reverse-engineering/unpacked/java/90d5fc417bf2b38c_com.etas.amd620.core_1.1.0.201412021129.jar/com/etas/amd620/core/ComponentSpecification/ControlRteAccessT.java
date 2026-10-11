/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.AccessType1;
import com.etas.amd620.core.ComponentSpecification.GraphicObjectT;
import com.etas.amd620.core.ComponentSpecification.InterfacesType1;
import com.etas.amd620.core.ComponentSpecification.PointT;
import com.etas.amd620.core.ComponentSpecification.TypeType1;
import java.math.BigInteger;

public interface ControlRteAccessT
extends GraphicObjectT {
    public PointT getPosition();

    public void setPosition(PointT var1);

    public InterfacesType1 getInterfaces();

    public void setInterfaces(InterfacesType1 var1);

    public AccessType1 getAccess();

    public void setAccess(AccessType1 var1);

    public void unsetAccess();

    public boolean isSetAccess();

    public BigInteger getArguments();

    public void setArguments(BigInteger var1);

    public BigInteger getReturns();

    public void setReturns(BigInteger var1);

    public boolean isTempVar();

    public void setTempVar(boolean var1);

    public void unsetTempVar();

    public boolean isSetTempVar();

    public TypeType1 getType();

    public void setType(TypeType1 var1);

    public void unsetType();

    public boolean isSetType();
}

