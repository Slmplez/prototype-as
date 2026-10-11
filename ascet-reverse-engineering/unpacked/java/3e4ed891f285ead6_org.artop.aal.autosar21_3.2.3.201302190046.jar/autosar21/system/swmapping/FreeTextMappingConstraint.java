/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.swmapping;

import autosar21.system.swmapping.MappingConstraint;

public interface FreeTextMappingConstraint
extends MappingConstraint {
    public String getConstraintExpression();

    public void setConstraintExpression(String var1);

    public void unsetConstraintExpression();

    public boolean isSetConstraintExpression();
}

