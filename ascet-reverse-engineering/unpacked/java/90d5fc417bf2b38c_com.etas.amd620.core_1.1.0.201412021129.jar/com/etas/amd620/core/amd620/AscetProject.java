/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd620.core.amd620;

import com.etas.amd620.core.ComponentProject.ProjectType;
import com.etas.amd620.core.Formulas.FormulasType;
import com.etas.amd620.core.Implementationtypes.ImplementationTypesType;
import com.etas.amd620.core.amd620.AscetClass;

public interface AscetProject
extends AscetClass {
    public ProjectType getProjectType();

    public void setProjectType(ProjectType var1);

    public ImplementationTypesType getImplementationsType();

    public void setImplementationsType(ImplementationTypesType var1);

    public FormulasType getFormulasType();

    public void setFormulasType(FormulasType var1);
}

