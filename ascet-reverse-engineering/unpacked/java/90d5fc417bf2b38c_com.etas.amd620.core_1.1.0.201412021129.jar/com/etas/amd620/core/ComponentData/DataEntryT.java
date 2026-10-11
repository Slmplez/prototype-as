/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentData;

import com.etas.amd620.core.ComponentData.DataVariantT;
import com.etas.amd620.core.ComponentData.GenericDataT;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;

public interface DataEntryT
extends EObject {
    public DataVariantT getDataVariant();

    public void setDataVariant(DataVariantT var1);

    public EList<GenericDataT> getCustomerData();

    public String getElementName();

    public void setElementName(String var1);

    public String getElementOID();

    public void setElementOID(String var1);

    public String getIgnore();

    public void setIgnore(String var1);

    public void unsetIgnore();

    public boolean isSetIgnore();
}

