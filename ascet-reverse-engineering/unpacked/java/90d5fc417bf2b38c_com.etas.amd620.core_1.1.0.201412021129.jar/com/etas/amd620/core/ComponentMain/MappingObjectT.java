/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentMain;

import com.etas.amd620.core.ComponentMain.MappingItemT;
import org.eclipse.emf.ecore.EObject;

public interface MappingObjectT
extends EObject {
    public MappingItemT getSourceObject();

    public void setSourceObject(MappingItemT var1);

    public MappingItemT getTargetObject();

    public void setTargetObject(MappingItemT var1);
}

