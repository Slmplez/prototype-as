/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentImplementation;

import com.etas.amd620.core.ComponentImplementation.GenericDataT;
import com.etas.amd620.core.ComponentImplementation.ImplementationVariantT;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;

public interface ImplementationEntryT
extends EObject {
    public ImplementationVariantT getImplementationVariant();

    public void setImplementationVariant(ImplementationVariantT var1);

    public EList<GenericDataT> getCustomerData();

    public String getIgnore();

    public void setIgnore(String var1);

    public void unsetIgnore();

    public boolean isSetIgnore();
}

