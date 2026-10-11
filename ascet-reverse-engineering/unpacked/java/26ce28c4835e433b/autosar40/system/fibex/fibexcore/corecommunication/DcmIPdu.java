/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.fibex.fibexcore.corecommunication;

import autosar40.system.fibex.fibexcore.corecommunication.DiagPduType;
import autosar40.system.fibex.fibexcore.corecommunication.IPdu;

public interface DcmIPdu
extends IPdu {
    public DiagPduType getDiagPduType();

    public void setDiagPduType(DiagPduType var1);

    public void unsetDiagPduType();

    public boolean isSetDiagPduType();
}

