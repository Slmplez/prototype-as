/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.signalpaths;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.system.SystemMapping;

public interface SignalPathConstraint
extends ARObject {
    public SystemMapping getSystemMapping();

    public void setSystemMapping(SystemMapping var1);
}

