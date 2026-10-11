/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.system.swmapping;

import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.system.SystemMapping;
import autosar3x.system.fibex.fibexcore.coretopology.EcuInstance;
import autosar3x.system.swmapping.instanceref.SwCompToEcuMappingComponent;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SwcToEcuMapping
extends Identifiable {
    public SystemMapping getSystemMapping();

    public void setSystemMapping(SystemMapping var1);

    public EList<SwCompToEcuMappingComponent> getComponents();

    public EcuInstance getEcuInstance();

    public void setEcuInstance(EcuInstance var1);
}

