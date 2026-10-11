/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentProject;

import com.etas.amd620.core.ComponentProject.TypeType;
import org.eclipse.emf.ecore.EObject;

public interface FileReferenceT
extends EObject {
    public String getValue();

    public void setValue(String var1);

    public byte[] getChecksum();

    public void setChecksum(byte[] var1);

    public TypeType getType();

    public void setType(TypeType var1);

    public void unsetType();

    public boolean isSetType();
}

