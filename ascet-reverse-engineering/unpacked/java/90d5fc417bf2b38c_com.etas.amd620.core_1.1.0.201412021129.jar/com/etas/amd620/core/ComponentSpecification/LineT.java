/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.DirectionType;
import com.etas.amd620.core.ComponentSpecification.PointT;
import org.eclipse.emf.ecore.EObject;

public interface LineT
extends EObject {
    public PointT getPointA();

    public void setPointA(PointT var1);

    public DirectionType getDirection();

    public void setDirection(DirectionType var1);

    public void unsetDirection();

    public boolean isSetDirection();
}

