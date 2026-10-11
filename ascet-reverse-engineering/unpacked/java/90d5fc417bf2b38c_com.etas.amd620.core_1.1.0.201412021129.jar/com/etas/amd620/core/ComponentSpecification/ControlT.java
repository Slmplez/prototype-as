/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.GraphicObjectT;
import com.etas.amd620.core.ComponentSpecification.InterfacesType;
import com.etas.amd620.core.ComponentSpecification.PointT;
import com.etas.amd620.core.ComponentSpecification.SizeT;
import com.etas.amd620.core.ComponentSpecification.TypeType;
import java.math.BigInteger;

public interface ControlT
extends GraphicObjectT {
    public PointT getPosition();

    public void setPosition(PointT var1);

    public InterfacesType getInterfaces();

    public void setInterfaces(InterfacesType var1);

    public SizeT getSize();

    public void setSize(SizeT var1);

    public BigInteger getArguments();

    public void setArguments(BigInteger var1);

    public BigInteger getReturns();

    public void setReturns(BigInteger var1);

    public TypeType getType();

    public void setType(TypeType var1);

    public void unsetType();

    public boolean isSetType();
}

