/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.GraphicObjectT;
import com.etas.amd620.core.ComponentSpecification.PointT;

public interface SimpleElementBaseT
extends GraphicObjectT {
    public PointT getPosition();

    public void setPosition(PointT var1);

    public PointT getLabelPosition();

    public void setLabelPosition(PointT var1);

    public String getElementName();

    public void setElementName(String var1);

    public String getElementOID();

    public void setElementOID(String var1);

    public String getMethodName();

    public void setMethodName(String var1);
}

