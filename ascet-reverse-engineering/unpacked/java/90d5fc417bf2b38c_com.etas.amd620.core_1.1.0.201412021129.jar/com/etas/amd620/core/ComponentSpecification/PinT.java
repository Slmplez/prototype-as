/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.DirectionType1;
import com.etas.amd620.core.ComponentSpecification.PointT;
import java.math.BigInteger;
import org.eclipse.emf.ecore.EObject;

public interface PinT
extends EObject {
    public PointT getPosition();

    public void setPosition(PointT var1);

    public DirectionType1 getDirection();

    public void setDirection(DirectionType1 var1);

    public void unsetDirection();

    public boolean isSetDirection();

    public BigInteger getGraphicOID();

    public void setGraphicOID(BigInteger var1);

    public String getName();

    public void setName(String var1);

    public boolean isNameVisibility();

    public void setNameVisibility(boolean var1);

    public void unsetNameVisibility();

    public boolean isSetNameVisibility();

    public boolean isVisibility();

    public void setVisibility(boolean var1);

    public void unsetVisibility();

    public boolean isSetVisibility();
}

