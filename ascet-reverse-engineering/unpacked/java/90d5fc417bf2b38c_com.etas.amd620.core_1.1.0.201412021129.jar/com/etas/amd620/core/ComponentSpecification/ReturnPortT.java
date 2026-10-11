/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.PointT;
import com.etas.amd620.core.ComponentSpecification.PortT;
import com.etas.amd620.core.ComponentSpecification.SelectorPortT;
import org.eclipse.emf.common.util.EList;

public interface ReturnPortT
extends PortT {
    public PointT getPosition();

    public void setPosition(PointT var1);

    public EList<SelectorPortT> getSelectorPort();

    public boolean isDefaultPort();

    public void setDefaultPort(boolean var1);

    public void unsetDefaultPort();

    public boolean isSetDefaultPort();

    public String getMethodName();

    public void setMethodName(String var1);

    public String getMethodOID();

    public void setMethodOID(String var1);

    public boolean isNameVisibility();

    public void setNameVisibility(boolean var1);

    public void unsetNameVisibility();

    public boolean isSetNameVisibility();

    public String getReturnElementOID();

    public void setReturnElementOID(String var1);

    public boolean isTempVar();

    public void setTempVar(boolean var1);

    public void unsetTempVar();

    public boolean isSetTempVar();

    public boolean isVisibility();

    public void setVisibility(boolean var1);

    public void unsetVisibility();

    public boolean isSetVisibility();
}

