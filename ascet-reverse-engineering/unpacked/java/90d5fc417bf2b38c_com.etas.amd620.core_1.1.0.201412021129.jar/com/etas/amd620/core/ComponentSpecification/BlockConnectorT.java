/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.ConnectionPointT;
import com.etas.amd620.core.ComponentSpecification.DirectionType1;
import com.etas.amd620.core.ComponentSpecification.FlowType;
import com.etas.amd620.core.ComponentSpecification.GraphicObjectT;
import com.etas.amd620.core.ComponentSpecification.SizeT;

public interface BlockConnectorT
extends GraphicObjectT {
    public SizeT getSize();

    public void setSize(SizeT var1);

    public ConnectionPointT getConnectionPoint();

    public void setConnectionPoint(ConnectionPointT var1);

    public DirectionType1 getDirection();

    public void setDirection(DirectionType1 var1);

    public void unsetDirection();

    public boolean isSetDirection();

    public FlowType getFlow();

    public void setFlow(FlowType var1);

    public void unsetFlow();

    public boolean isSetFlow();

    public boolean isTempVar();

    public void setTempVar(boolean var1);

    public void unsetTempVar();

    public boolean isSetTempVar();

    public boolean isVisibility();

    public void setVisibility(boolean var1);

    public void unsetVisibility();

    public boolean isSetVisibility();
}

