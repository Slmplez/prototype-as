/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentMain;

import com.etas.amd620.core.ComponentMain.GenericDataT;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;

public interface ConfigurationManagementT
extends EObject {
    public EList<GenericDataT> getGenericData();

    public Object getConfigurationID();

    public void setConfigurationID(Object var1);

    public Object getEdition();

    public void setEdition(Object var1);

    public String getVersionID();

    public void setVersionID(String var1);
}

