/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.GraphicObjectT;
import com.etas.amd620.core.ComponentSpecification.InterfacesType6;
import com.etas.amd620.core.ComponentSpecification.OperatorTType;
import com.etas.amd620.core.ComponentSpecification.PointT;
import java.math.BigInteger;

public interface OperatorT
extends GraphicObjectT {
    public PointT getPosition();

    public void setPosition(PointT var1);

    public InterfacesType6 getInterfaces();

    public void setInterfaces(InterfacesType6 var1);

    public BigInteger getArguments();

    public void setArguments(BigInteger var1);

    public Object getOldFashion();

    public void setOldFashion(Object var1);

    public BigInteger getReturns();

    public void setReturns(BigInteger var1);

    public boolean isTempVar();

    public void setTempVar(boolean var1);

    public void unsetTempVar();

    public boolean isSetTempVar();

    public OperatorTType getType();

    public void setType(OperatorTType var1);

    public void unsetType();

    public boolean isSetType();
}

