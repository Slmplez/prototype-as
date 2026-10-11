/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.communication.instanceref;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.system.CommunicationMatrixInstance;
import autosar21.system.communication.PDUGatewayEntry;
import autosar21.system.communication.PDUPrototype;

public interface PDUGatewayEntrySourcePDU
extends ARObject {
    public PDUGatewayEntry getPDUGatewayEntry();

    public void setPDUGatewayEntry(PDUGatewayEntry var1);

    public CommunicationMatrixInstance getCommunicationMatrix();

    public void setCommunicationMatrix(CommunicationMatrixInstance var1);

    public PDUPrototype getSourcePDU();

    public void setSourcePDU(PDUPrototype var1);
}

