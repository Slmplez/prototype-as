/*
 * Decompiled with CFR 0.152.
 */
package autosar21.ecuresource;

import autosar21.ecuresource.HWConnection;
import autosar21.ecuresource.HWPort;

public interface DelegationHWConnection
extends HWConnection {
    public HWPort getInnerPort();

    public void setInnerPort(HWPort var1);

    public HWPort getOuterPort();

    public void setOuterPort(HWPort var1);
}

