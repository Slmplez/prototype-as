/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.PortT;
import com.etas.amd620.core.ComponentSpecification.SequencedPortT;
import org.eclipse.emf.ecore.EObject;

public interface InterfacesType4
extends EObject {
    public PortT getReturnPort();

    public void setReturnPort(PortT var1);

    public SequencedPortT getSelectorPort();

    public void setSelectorPort(SequencedPortT var1);
}

