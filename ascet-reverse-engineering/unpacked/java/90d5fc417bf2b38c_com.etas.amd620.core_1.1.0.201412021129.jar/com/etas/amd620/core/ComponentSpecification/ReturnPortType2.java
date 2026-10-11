/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.InputPortType;
import com.etas.amd620.core.ComponentSpecification.PortT;
import com.etas.amd620.core.ComponentSpecification.SelectorPortType2;
import org.eclipse.emf.common.util.EList;

public interface ReturnPortType2
extends PortT {
    public EList<SelectorPortType2> getSelectorPort();

    public EList<InputPortType> getInputPort();
}

