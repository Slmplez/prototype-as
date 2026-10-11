/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.system.swmapping;

import autosar3x.system.fibex.fibexcore.coretopology.EcuInstance;
import autosar3x.system.swmapping.MappingConstraint;
import autosar3x.system.swmapping.SwcToEcuMappingConstraintType;
import autosar3x.system.swmapping.instanceref.SwcToEcuMappingConstraintComponent;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SwcToEcuMappingConstraint
extends MappingConstraint {
    public EList<SwcToEcuMappingConstraintComponent> getComponents();

    public EList<EcuInstance> getEcuInstances();

    public SwcToEcuMappingConstraintType getSwcToEcuMappingConstraintType();

    public void setSwcToEcuMappingConstraintType(SwcToEcuMappingConstraintType var1);

    public void unsetSwcToEcuMappingConstraintType();

    public boolean isSetSwcToEcuMappingConstraintType();
}

