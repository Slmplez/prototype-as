/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.fibex.fibexcore.coretopology;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.system.fibex.fibexcore.coretopology.PhysicalChannel;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface CommunicationClusterContent
extends ARObject {
    public EList<PhysicalChannel> getPhysicalChannels();

    public String getProtocolName();

    public void setProtocolName(String var1);

    public void unsetProtocolName();

    public boolean isSetProtocolName();

    public String getProtocolVersion();

    public void setProtocolVersion(String var1);

    public void unsetProtocolVersion();

    public boolean isSetProtocolVersion();

    public Integer getSpeed();

    public void setSpeed(Integer var1);

    public void unsetSpeed();

    public boolean isSetSpeed();

    public IntegerDatatype getSpeedData();

    public void setSpeedData(IntegerDatatype var1);
}

