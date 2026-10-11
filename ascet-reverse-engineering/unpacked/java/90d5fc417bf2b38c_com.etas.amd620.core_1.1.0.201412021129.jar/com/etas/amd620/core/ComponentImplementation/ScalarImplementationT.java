/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentImplementation;

import com.etas.amd620.core.ComponentImplementation.ImplementationCastImplementationType;
import com.etas.amd620.core.ComponentImplementation.LogicImplementationT;
import com.etas.amd620.core.ComponentImplementation.NumericImplementationT;
import com.etas.amd620.core.ComponentImplementation.PrimitiveImplementationT;
import com.etas.amd620.core.ComponentImplementation.ResourceImplementationType;
import com.etas.amd620.core.ComponentImplementation.TemplateImplementationT;
import org.eclipse.emf.ecore.EObject;

public interface ScalarImplementationT
extends EObject {
    public PrimitiveImplementationT getEnumerationImplementation();

    public void setEnumerationImplementation(PrimitiveImplementationT var1);

    public NumericImplementationT getNumericImplementation();

    public void setNumericImplementation(NumericImplementationT var1);

    public LogicImplementationT getLogicImplementation();

    public void setLogicImplementation(LogicImplementationT var1);

    public TemplateImplementationT getTemplateImplementation();

    public void setTemplateImplementation(TemplateImplementationT var1);

    public ResourceImplementationType getResourceImplementation();

    public void setResourceImplementation(ResourceImplementationType var1);

    public ImplementationCastImplementationType getImplementationCastImplementation();

    public void setImplementationCastImplementation(ImplementationCastImplementationType var1);
}

