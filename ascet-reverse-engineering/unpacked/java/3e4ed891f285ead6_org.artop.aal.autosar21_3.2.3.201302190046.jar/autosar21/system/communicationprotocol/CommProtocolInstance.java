/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.system.communicationprotocol;

import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.system.SystemCommunication;
import autosar21.system.communicationprotocol.CommProtocolFrameRole;
import autosar21.system.communicationprotocol.CommProtocolSignalGroupRole;
import autosar21.system.communicationprotocol.CommProtocolSignalRole;
import autosar21.system.communicationprotocol.CommProtocolType;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface CommProtocolInstance
extends Identifiable {
    public SystemCommunication getSystemCommunication();

    public void setSystemCommunication(SystemCommunication var1);

    public EList<CommProtocolFrameRole> getProtocolFrames();

    public EList<CommProtocolSignalRole> getProtocolSignals();

    public EList<CommProtocolSignalGroupRole> getProtocolSignalGroups();

    public CommProtocolType getProtocolType();

    public void setProtocolType(CommProtocolType var1);
}

