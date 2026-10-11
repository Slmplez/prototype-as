/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.ConnectorInterfaceType;
import com.etas.amd620.core.ComponentSpecification.GraphicObjectT;
import com.etas.amd620.core.ComponentSpecification.IconT;
import com.etas.amd620.core.ComponentSpecification.PointT;
import com.etas.amd620.core.ComponentSpecification.SizeT;

public interface JunctionT
extends GraphicObjectT {
    public SizeT getSize();

    public void setSize(SizeT var1);

    public PointT getPosition();

    public void setPosition(PointT var1);

    public ConnectorInterfaceType getInterfaces();

    public void setInterfaces(ConnectorInterfaceType var1);

    public IconT getIcon();

    public void setIcon(IconT var1);

    public String getName();

    public void setName(String var1);
}

