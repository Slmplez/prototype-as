/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.ecuresource;

import autosar3x.ecuresource.HWConnection;
import autosar3x.ecuresource.HWPort;

public interface DelegationHWConnection
extends HWConnection {
    public HWPort getInnerPort();

    public void setInnerPort(HWPort var1);

    public HWPort getOuterPort();

    public void setOuterPort(HWPort var1);
}

