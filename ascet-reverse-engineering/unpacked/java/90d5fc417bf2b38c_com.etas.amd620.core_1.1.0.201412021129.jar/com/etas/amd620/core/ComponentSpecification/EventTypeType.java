/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.ModeSwitchEventType;
import com.etas.amd620.core.ComponentSpecification.OperationInvokedEventType;
import com.etas.amd620.core.ComponentSpecification.TimingEventType;
import org.eclipse.emf.ecore.EObject;

public interface EventTypeType
extends EObject {
    public TimingEventType getTimingEvent();

    public void setTimingEvent(TimingEventType var1);

    public ModeSwitchEventType getModeSwitchEvent();

    public void setModeSwitchEvent(ModeSwitchEventType var1);

    public OperationInvokedEventType getOperationInvokedEvent();

    public void setOperationInvokedEvent(OperationInvokedEventType var1);
}

