/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.swmapping;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.system.SystemMapping;

public interface MappingConstraint
extends ARObject {
    public SystemMapping getSystemMapping();

    public void setSystemMapping(SystemMapping var1);
}

