/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.ActionsType;
import com.etas.amd620.core.ComponentSpecification.ConnectionLineT;
import com.etas.amd620.core.ComponentSpecification.ConnectionPointT;
import com.etas.amd620.core.ComponentSpecification.GraphicObjectT;
import com.etas.amd620.core.ComponentSpecification.PointT;

public interface TransitionT
extends GraphicObjectT {
    public ConnectionPointT getStart();

    public void setStart(ConnectionPointT var1);

    public ConnectionPointT getEnd();

    public void setEnd(ConnectionPointT var1);

    public ConnectionLineT getConnectionLine();

    public void setConnectionLine(ConnectionLineT var1);

    public PointT getLabelPosition();

    public void setLabelPosition(PointT var1);

    public ActionsType getActions();

    public void setActions(ActionsType var1);
}

