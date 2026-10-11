/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.CCodeType;
import com.etas.amd620.core.ComponentSpecification.CtOutputsType;
import org.eclipse.emf.ecore.EObject;

public interface CCodeSpecificationT
extends EObject {
    public CCodeType getCCode();

    public void setCCode(CCodeType var1);

    public CtOutputsType getCtOutputs();

    public void setCtOutputs(CtOutputsType var1);

    public void unsetCtOutputs();

    public boolean isSetCtOutputs();
}

