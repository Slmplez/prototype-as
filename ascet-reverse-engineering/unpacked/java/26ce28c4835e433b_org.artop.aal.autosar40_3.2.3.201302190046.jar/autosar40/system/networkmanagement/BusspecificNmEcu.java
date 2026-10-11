/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.networkmanagement;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.system.networkmanagement.NmEcu;

public interface BusspecificNmEcu
extends ARObject {
    public NmEcu getNmEcu();

    public void setNmEcu(NmEcu var1);
}

