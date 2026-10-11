/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.GraphicObjectT;
import com.etas.amd620.core.ComponentSpecification.InterfacesType2;
import com.etas.amd620.core.ComponentSpecification.PointT;

public interface LiteralT
extends GraphicObjectT {
    public PointT getPosition();

    public void setPosition(PointT var1);

    public InterfacesType2 getInterfaces();

    public void setInterfaces(InterfacesType2 var1);

    public String getValue();

    public void setValue(String var1);
}

