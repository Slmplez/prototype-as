/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentData;

import org.eclipse.emf.ecore.EObject;

public interface ParameterType
extends EObject {
    public String getFormalName();

    public void setFormalName(String var1);

    public String getFormalOID();

    public void setFormalOID(String var1);

    public String getValueName();

    public void setValueName(String var1);

    public String getValueOID();

    public void setValueOID(String var1);
}

