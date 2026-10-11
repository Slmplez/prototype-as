/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.InterfaceElementType;
import com.etas.amd620.core.ComponentSpecification.ModeElementType;
import org.eclipse.emf.ecore.EObject;

public interface ModeT
extends EObject {
    public InterfaceElementType getInterfaceElement();

    public void setInterfaceElement(InterfaceElementType var1);

    public ModeElementType getModeElement();

    public void setModeElement(ModeElementType var1);

    public String getModeValue();

    public void setModeValue(String var1);
}

