/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentSpecification;

import java.math.BigInteger;
import org.eclipse.emf.ecore.EObject;

public interface GraphicSpecificationT
extends EObject {
    public BigInteger getHighestUsedGraphicalIdentifier();

    public void setHighestUsedGraphicalIdentifier(BigInteger var1);
}

