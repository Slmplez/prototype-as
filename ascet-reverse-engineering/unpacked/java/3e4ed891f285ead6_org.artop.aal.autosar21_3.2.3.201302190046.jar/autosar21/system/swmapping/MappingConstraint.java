/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.swmapping;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.system.SystemMapping;

public interface MappingConstraint
extends ARObject {
    public SystemMapping getSystemMapping();

    public void setSystemMapping(SystemMapping var1);
}

