/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.SequencedPortT;
import org.eclipse.emf.ecore.EObject;

public interface ResourceInterfaceType
extends EObject {
    public SequencedPortT getReservePort();

    public void setReservePort(SequencedPortT var1);

    public SequencedPortT getReleasePort();

    public void setReleasePort(SequencedPortT var1);
}

