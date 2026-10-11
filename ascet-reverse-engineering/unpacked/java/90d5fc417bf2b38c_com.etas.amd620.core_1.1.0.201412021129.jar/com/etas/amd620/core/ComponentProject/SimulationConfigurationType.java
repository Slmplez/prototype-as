/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentProject;

import com.etas.amd620.core.ComponentProject.ExperimentTargetType;
import org.eclipse.emf.ecore.EObject;

public interface SimulationConfigurationType
extends EObject {
    public ExperimentTargetType getExperimentTarget();

    public void setExperimentTarget(ExperimentTargetType var1);

    public void unsetExperimentTarget();

    public boolean isSetExperimentTarget();
}

