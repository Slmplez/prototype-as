/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.ContentsComplexType;
import com.etas.amd620.core.ComponentSpecification.PortsType;
import com.etas.amd620.core.ComponentSpecification.StateT;

public interface HierarchyStateT
extends StateT {
    public PortsType getPorts();

    public void setPorts(PortsType var1);

    public ContentsComplexType getContents();

    public void setContents(ContentsComplexType var1);
}

