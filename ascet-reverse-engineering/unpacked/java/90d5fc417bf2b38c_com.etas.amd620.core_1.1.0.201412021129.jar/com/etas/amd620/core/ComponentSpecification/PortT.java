/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.DirectionType1;
import java.math.BigInteger;
import org.eclipse.emf.ecore.EObject;

public interface PortT
extends EObject {
    public BigInteger getGraphicOID();

    public void setGraphicOID(BigInteger var1);

    public DirectionType1 getLocation();

    public void setLocation(DirectionType1 var1);

    public void unsetLocation();

    public boolean isSetLocation();
}

