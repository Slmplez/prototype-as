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

public interface MethodBaseT
extends EObject {
    public EList<GenericDataT> getCustomerData();

    public boolean isAvailableForOS();

    public void setAvailableForOS(boolean var1);

    public void unsetAvailableForOS();

    public boolean isSetAvailableForOS();

    public Object getDefault();

    public void setDefault(Object var1);

    public boolean isDefaultMethod();

    public void setDefaultMethod(boolean var1);

    public void unsetDefaultMethod();

    public boolean isSetDefaultMethod();

    public boolean isHidden();

    public void setHidden(boolean var1);

    public void unsetHidden();

    public boolean isSetHidden();

    public String getName();

    public void setName(String var1);

    public String getOID();

    public void setOID(String var1);

    public boolean isPublic();

    public void setPublic(boolean var1);

    public void unsetPublic();

    public boolean isSetPublic();

    public boolean isReinitializeMethod();

    public void setReinitializeMethod(boolean var1);

    public void unsetReinitializeMethod();

    public boolean isSetReinitializeMethod();

    public String getUUID();

    public void setUUID(String var1);
}

