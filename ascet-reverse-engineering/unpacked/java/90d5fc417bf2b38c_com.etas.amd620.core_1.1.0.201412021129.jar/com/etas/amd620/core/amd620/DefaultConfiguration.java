/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.amd620;

import com.etas.amd620.core.ComponentData.ComponentDataType;
import com.etas.amd620.core.ComponentImplementation.ComponentImplementationType;
import com.etas.amd620.core.ComponentMain.ComponentMainType;
import com.etas.amd620.core.ComponentProject.ProjectType;
import com.etas.amd620.core.ComponentSpecification.SpecificationsType;
import com.etas.amd620.core.Formulas.FormulasType;
import com.etas.amd620.core.Implementationtypes.ImplementationTypesType;
import org.eclipse.emf.ecore.EObject;

public interface DefaultConfiguration
extends EObject {
    public ComponentMainType getComponentMainType();

    public void setComponentMainType(ComponentMainType var1);

    public ComponentDataType getComponentDataType();

    public void setComponentDataType(ComponentDataType var1);

    public ComponentImplementationType getComponentImplementationType();

    public void setComponentImplementationType(ComponentImplementationType var1);

    public SpecificationsType getSpecificationsType();

    public void setSpecificationsType(SpecificationsType var1);

    public ProjectType getProjectType();

    public void setProjectType(ProjectType var1);

    public ImplementationTypesType getImplementationsType();

    public void setImplementationsType(ImplementationTypesType var1);

    public FormulasType getFormulasType();

    public void setFormulasType(FormulasType var1);
}

