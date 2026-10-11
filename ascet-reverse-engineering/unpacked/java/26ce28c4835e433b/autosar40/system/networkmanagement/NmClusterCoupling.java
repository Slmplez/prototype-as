/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.networkmanagement;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.system.networkmanagement.NmConfig;

public interface NmClusterCoupling
extends ARObject {
    public NmConfig getNmConfig();

    public void setNmConfig(NmConfig var1);
}

