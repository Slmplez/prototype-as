/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentData;

import java.math.BigInteger;
import org.eclipse.emf.ecore.EObject;

public interface DimensionalDataT
extends EObject {
    public BigInteger getCurrentSizeX();

    public void setCurrentSizeX(BigInteger var1);

    public BigInteger getCurrentSizeY();

    public void setCurrentSizeY(BigInteger var1);
}

