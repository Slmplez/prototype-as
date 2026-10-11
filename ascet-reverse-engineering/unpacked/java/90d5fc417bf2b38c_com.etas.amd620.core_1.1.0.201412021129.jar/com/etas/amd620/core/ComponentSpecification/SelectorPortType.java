/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.PortT;
import java.math.BigInteger;

public interface SelectorPortType
extends PortT {
    public BigInteger getIndex();

    public void setIndex(BigInteger var1);

    public String getLabel();

    public void setLabel(String var1);
}

