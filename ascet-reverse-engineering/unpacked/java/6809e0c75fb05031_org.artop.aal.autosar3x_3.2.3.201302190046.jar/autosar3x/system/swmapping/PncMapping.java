/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.system.swmapping;

import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.system.SystemMapping;
import autosar3x.system.fibex.fibexcore.corecommunication.FrameTriggering;
import autosar3x.system.fibex.fibexcore.corecommunication.IPduGroup;
import autosar3x.system.swmapping.instanceref.PncMappingVfc;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface PncMapping
extends Identifiable {
    public SystemMapping getSystemMapping();

    public void setSystemMapping(SystemMapping var1);

    public EList<IPduGroup> getPncGroups();

    public Integer getPncIdentifier();

    public void setPncIdentifier(Integer var1);

    public void unsetPncIdentifier();

    public boolean isSetPncIdentifier();

    public EList<PncMappingVfc> getVfcs();

    public EList<FrameTriggering> getWakeupFrames();
}

