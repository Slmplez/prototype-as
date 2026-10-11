/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system;

import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.system.SystemCommunication;
import autosar21.system.communication.CommunicationMatrixType;

public interface CommunicationMatrixInstance
extends Identifiable {
    public SystemCommunication getSystemCommunication();

    public void setSystemCommunication(SystemCommunication var1);

    public CommunicationMatrixType getCommunicationMatrixType();

    public void setCommunicationMatrixType(CommunicationMatrixType var1);
}

