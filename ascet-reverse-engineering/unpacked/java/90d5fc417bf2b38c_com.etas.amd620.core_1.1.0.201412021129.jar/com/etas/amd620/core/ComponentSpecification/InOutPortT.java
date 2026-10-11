/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.GraphicObjectT;
import com.etas.amd620.core.ComponentSpecification.PointT;

public interface InOutPortT
extends GraphicObjectT {
    public PointT getPosition();

    public void setPosition(PointT var1);

    public String getName();

    public void setName(String var1);
}

