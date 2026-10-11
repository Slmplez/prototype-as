/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.pncmapping;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.SystemMapping;
import autosar40.system.fibex.fibexcore.corecommunication.FrameTriggering;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalIPduGroup;
import autosar40.system.instancerefs.PortGroupInSystemInstanceRef;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface PncMapping
extends ARObject {
    public SystemMapping getSystemMapping();

    public void setSystemMapping(SystemMapping var1);

    public EList<ISignalIPduGroup> getPncGroups();

    public Long getPncIdentifier();

    public void setPncIdentifier(Long var1);

    public void unsetPncIdentifier();

    public boolean isSetPncIdentifier();

    public EList<PortGroupInSystemInstanceRef> getVfcs();

    public EList<FrameTriggering> getWakeupFrames();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);

    public PositiveIntegerDatatype getPncIdentifierData();

    public void setPncIdentifierData(PositiveIntegerDatatype var1);
}

