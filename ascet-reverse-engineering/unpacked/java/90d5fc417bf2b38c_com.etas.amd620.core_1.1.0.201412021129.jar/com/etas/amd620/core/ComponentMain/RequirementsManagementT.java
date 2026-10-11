/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentMain;

import com.etas.amd620.core.ComponentMain.GenericDataT;
import org.eclipse.emf.ecore.EObject;

public interface RequirementsManagementT
extends EObject {
    public GenericDataT getGenericData();

    public void setGenericData(GenericDataT var1);

    public String getRequirementsID();

    public void setRequirementsID(String var1);
}

