/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.PortT;
import com.etas.amd620.core.ComponentSpecification.SelectorPortType;
import java.math.BigInteger;

public interface ReturnPortType1
extends PortT {
    public SelectorPortType getSelectorPort();

    public void setSelectorPort(SelectorPortType var1);

    public BigInteger getIndex();

    public void setIndex(BigInteger var1);

    public String getLabel();

    public void setLabel(String var1);
}

