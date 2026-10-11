/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentImplementation;

import com.etas.amd620.core.ComponentImplementation.CacheLockingType;
import org.eclipse.emf.ecore.EObject;

public interface MethodImplementationT
extends EObject {
    public CacheLockingType getCacheLocking();

    public void setCacheLocking(CacheLockingType var1);

    public void unsetCacheLocking();

    public boolean isSetCacheLocking();

    public boolean isInline();

    public void setInline(boolean var1);

    public void unsetInline();

    public boolean isSetInline();

    public String getMemoryLocation();

    public void setMemoryLocation(String var1);

    public String getMethodName();

    public void setMethodName(String var1);

    public String getMethodOID();

    public void setMethodOID(String var1);

    public String getSymbol();

    public void setSymbol(String var1);

    public boolean isUseFPU();

    public void setUseFPU(boolean var1);

    public void unsetUseFPU();

    public boolean isSetUseFPU();
}

