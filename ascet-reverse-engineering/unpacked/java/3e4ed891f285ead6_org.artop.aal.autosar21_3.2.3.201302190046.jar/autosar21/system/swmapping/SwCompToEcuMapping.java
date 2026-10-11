/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.system.swmapping;

import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.system.SystemMapping;
import autosar21.system.swmapping.instanceref.SwCompToEcuMappingComponent;
import autosar21.system.swmapping.instanceref.SwCompToEcuMappingEcuInstance;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SwCompToEcuMapping
extends Identifiable {
    public SystemMapping getSystemMapping();

    public void setSystemMapping(SystemMapping var1);

    public EList<SwCompToEcuMappingComponent> getComponents();

    public SwCompToEcuMappingEcuInstance getEcuInstance();

    public void setEcuInstance(SwCompToEcuMappingEcuInstance var1);
}

