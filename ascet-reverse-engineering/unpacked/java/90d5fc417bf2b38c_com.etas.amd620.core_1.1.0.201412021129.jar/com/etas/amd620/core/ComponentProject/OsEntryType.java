/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentProject;

import com.etas.amd620.core.ComponentProject.OsDescriptionType;
import com.etas.amd620.core.ComponentProject.TargetKeyType;
import org.eclipse.emf.ecore.EObject;

public interface OsEntryType
extends EObject {
    public TargetKeyType getTargetKey();

    public void setTargetKey(TargetKeyType var1);

    public OsDescriptionType getOsDescription();

    public void setOsDescription(OsDescriptionType var1);
}

