/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.ContentsComplexType;
import com.etas.amd620.core.ComponentSpecification.GraphicObjectT;
import com.etas.amd620.core.ComponentSpecification.IconT;
import com.etas.amd620.core.ComponentSpecification.InterfacesType3;
import com.etas.amd620.core.ComponentSpecification.PointT;
import com.etas.amd620.core.ComponentSpecification.SizeT;

public interface HierarchyT
extends GraphicObjectT {
    public SizeT getSize();

    public void setSize(SizeT var1);

    public PointT getPosition();

    public void setPosition(PointT var1);

    public InterfacesType3 getInterfaces();

    public void setInterfaces(InterfacesType3 var1);

    public PointT getLabelPosition();

    public void setLabelPosition(PointT var1);

    public IconT getIcon();

    public void setIcon(IconT var1);

    public ContentsComplexType getContents();

    public void setContents(ContentsComplexType var1);

    public String getName();

    public void setName(String var1);

    public boolean isNameVisibility();

    public void setNameVisibility(boolean var1);

    public void unsetNameVisibility();

    public boolean isSetNameVisibility();
}

