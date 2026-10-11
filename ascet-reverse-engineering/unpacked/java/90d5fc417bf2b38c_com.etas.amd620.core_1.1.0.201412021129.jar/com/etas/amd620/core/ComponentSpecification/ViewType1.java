/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.VisibilityType;
import org.eclipse.emf.ecore.EObject;

public interface ViewType1
extends EObject {
    public String getName();

    public void setName(String var1);

    public VisibilityType getVisibility();

    public void setVisibility(VisibilityType var1);

    public void unsetVisibility();

    public boolean isSetVisibility();
}

