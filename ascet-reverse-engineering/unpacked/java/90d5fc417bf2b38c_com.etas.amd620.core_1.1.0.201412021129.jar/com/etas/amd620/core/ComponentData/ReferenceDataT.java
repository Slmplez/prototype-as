/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentData;

import com.etas.amd620.core.ComponentData.LocalType;
import org.eclipse.emf.ecore.EObject;

public interface ReferenceDataT
extends EObject {
    public LocalType getLocal();

    public void setLocal(LocalType var1);

    public EObject getExternal();

    public void setExternal(EObject var1);
}

