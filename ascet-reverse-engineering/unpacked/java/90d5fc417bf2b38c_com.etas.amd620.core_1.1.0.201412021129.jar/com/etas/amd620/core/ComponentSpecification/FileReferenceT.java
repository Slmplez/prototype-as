/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.TypeType4;
import org.eclipse.emf.ecore.EObject;

public interface FileReferenceT
extends EObject {
    public String getValue();

    public void setValue(String var1);

    public byte[] getChecksum();

    public void setChecksum(byte[] var1);

    public TypeType4 getType();

    public void setType(TypeType4 var1);

    public void unsetType();

    public boolean isSetType();
}

