/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentImplementation;

import org.eclipse.emf.ecore.EObject;

public interface ComplexImplementationT
extends EObject {
    public byte[] getChecksum();

    public void setChecksum(byte[] var1);

    public String getImplementationName();

    public void setImplementationName(String var1);

    public String getImplementationOID();

    public void setImplementationOID(String var1);

    public String getMemoryLocationInstance();

    public void setMemoryLocationInstance(String var1);

    public String getPolicy();

    public void setPolicy(String var1);

    public String getRescalingFormula();

    public void setRescalingFormula(String var1);
}

