/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.swmapping;

import autosar40.system.fibex.fibexcore.coretopology.EcuInstance;
import autosar40.system.instancerefs.ComponentInSystemInstanceRef;
import autosar40.system.swmapping.MappingConstraint;
import autosar40.system.swmapping.SwcToEcuMappingConstraintType;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SwcToEcuMappingConstraint
extends MappingConstraint {
    public ComponentInSystemInstanceRef getComponent();

    public void setComponent(ComponentInSystemInstanceRef var1);

    public EList<EcuInstance> getEcuInstances();

    public SwcToEcuMappingConstraintType getSwcToEcuMappingConstraintType();

    public void setSwcToEcuMappingConstraintType(SwcToEcuMappingConstraintType var1);

    public void unsetSwcToEcuMappingConstraintType();

    public boolean isSetSwcToEcuMappingConstraintType();
}

