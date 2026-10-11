/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.EventT;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;

public interface EventsType
extends EObject {
    public EList<EventT> getEvent();
}

