/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.ModeSwitchTypeType;
import com.etas.amd620.core.ComponentSpecification.ModeT;
import org.eclipse.emf.ecore.EObject;

public interface ModeSwitchEventType
extends EObject {
    public ModeT getAssignedMode();

    public void setAssignedMode(ModeT var1);

    public ModeSwitchTypeType getModeSwitchType();

    public void setModeSwitchType(ModeSwitchTypeType var1);

    public void unsetModeSwitchType();

    public boolean isSetModeSwitchType();
}

