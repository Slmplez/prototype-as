/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.DisablingModesType;
import com.etas.amd620.core.ComponentSpecification.EventTypeType;
import com.etas.amd620.core.ComponentSpecification.RunnablesType;
import org.eclipse.emf.ecore.EObject;

public interface EventT
extends EObject {
    public RunnablesType getRunnables();

    public void setRunnables(RunnablesType var1);

    public DisablingModesType getDisablingModes();

    public void setDisablingModes(DisablingModesType var1);

    public EventTypeType getEventType();

    public void setEventType(EventTypeType var1);

    public String getName();

    public void setName(String var1);

    public String getUUID();

    public void setUUID(String var1);
}

