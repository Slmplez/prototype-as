/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentImplementation;

import com.etas.amd620.core.ComponentImplementation.CacheLockingType;
import org.eclipse.emf.ecore.EObject;

public interface PrimitiveImplementationT
extends EObject {
    public String getAdditionalInformation();

    public void setAdditionalInformation(String var1);

    public CacheLockingType getCacheLocking();

    public void setCacheLocking(CacheLockingType var1);

    public void unsetCacheLocking();

    public boolean isSetCacheLocking();

    public String getMemoryLocationInstance();

    public void setMemoryLocationInstance(String var1);

    public String getMemoryLocationSearchResult();

    public void setMemoryLocationSearchResult(String var1);

    public String getName();

    public void setName(String var1);

    public String getPolicy();

    public void setPolicy(String var1);

    public boolean isRescaled();

    public void setRescaled(boolean var1);

    public void unsetRescaled();

    public boolean isSetRescaled();
}

