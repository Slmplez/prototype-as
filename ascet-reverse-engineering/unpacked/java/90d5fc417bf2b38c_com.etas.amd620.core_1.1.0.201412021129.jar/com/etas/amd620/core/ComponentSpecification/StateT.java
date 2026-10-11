/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.ActionsType1;
import com.etas.amd620.core.ComponentSpecification.ConnectorInterfaceType;
import com.etas.amd620.core.ComponentSpecification.GraphicObjectT;
import com.etas.amd620.core.ComponentSpecification.IconT;
import com.etas.amd620.core.ComponentSpecification.PointT;
import com.etas.amd620.core.ComponentSpecification.SizeT;

public interface StateT
extends GraphicObjectT {
    public SizeT getSize();

    public void setSize(SizeT var1);

    public PointT getPosition();

    public void setPosition(PointT var1);

    public ConnectorInterfaceType getInterfaces();

    public void setInterfaces(ConnectorInterfaceType var1);

    public IconT getIcon();

    public void setIcon(IconT var1);

    public ActionsType1 getActions();

    public void setActions(ActionsType1 var1);

    public boolean isHistory();

    public void setHistory(boolean var1);

    public void unsetHistory();

    public boolean isSetHistory();

    public String getName();

    public void setName(String var1);

    public boolean isStartState();

    public void setStartState(boolean var1);

    public void unsetStartState();

    public boolean isSetStartState();
}

