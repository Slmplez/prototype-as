/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.GraphicObjectT;
import com.etas.amd620.core.ComponentSpecification.IconT;
import com.etas.amd620.core.ComponentSpecification.InterfacesType7;
import com.etas.amd620.core.ComponentSpecification.PointT;
import com.etas.amd620.core.ComponentSpecification.SizeT;
import com.etas.amd620.core.ComponentSpecification.SymbolT;

public interface LayoutT
extends GraphicObjectT {
    public PointT getPosition();

    public void setPosition(PointT var1);

    public PointT getLabelPosition();

    public void setLabelPosition(PointT var1);

    public InterfacesType7 getInterfaces();

    public void setInterfaces(InterfacesType7 var1);

    public SizeT getSize();

    public void setSize(SizeT var1);

    public IconT getIcon();

    public void setIcon(IconT var1);

    public SymbolT getSymbol();

    public void setSymbol(SymbolT var1);

    public boolean isFlexibleCreated();

    public void setFlexibleCreated(boolean var1);

    public void unsetFlexibleCreated();

    public boolean isSetFlexibleCreated();

    public boolean isHideClassName();

    public void setHideClassName(boolean var1);

    public void unsetHideClassName();

    public boolean isSetHideClassName();

    public boolean isHideIcon();

    public void setHideIcon(boolean var1);

    public void unsetHideIcon();

    public boolean isSetHideIcon();

    public boolean isHideName();

    public void setHideName(boolean var1);

    public void unsetHideName();

    public boolean isSetHideName();

    public boolean isHidePinNames();

    public void setHidePinNames(boolean var1);

    public void unsetHidePinNames();

    public boolean isSetHidePinNames();

    public boolean isHideUnconnectedPorts();

    public void setHideUnconnectedPorts(boolean var1);

    public void unsetHideUnconnectedPorts();

    public boolean isSetHideUnconnectedPorts();
}

