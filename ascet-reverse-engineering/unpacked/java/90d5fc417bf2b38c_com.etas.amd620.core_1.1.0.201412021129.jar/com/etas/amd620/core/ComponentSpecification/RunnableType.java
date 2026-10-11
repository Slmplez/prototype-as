/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentSpecification;

import java.math.BigInteger;
import org.eclipse.emf.ecore.EObject;

public interface RunnableType
extends EObject {
    public BigInteger getIndex();

    public void setIndex(BigInteger var1);

    public String getRunnableName();

    public void setRunnableName(String var1);

    public String getRunnableOID();

    public void setRunnableOID(String var1);
}

