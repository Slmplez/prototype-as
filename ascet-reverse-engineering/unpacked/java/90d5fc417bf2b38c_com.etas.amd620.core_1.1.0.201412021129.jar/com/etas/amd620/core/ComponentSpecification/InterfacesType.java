/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.ReturnPortType;
import com.etas.amd620.core.ComponentSpecification.SelectorPortType1;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;

public interface InterfacesType
extends EObject {
    public SelectorPortType1 getSelectorPort();

    public void setSelectorPort(SelectorPortType1 var1);

    public EList<ReturnPortType> getReturnPort();
}

