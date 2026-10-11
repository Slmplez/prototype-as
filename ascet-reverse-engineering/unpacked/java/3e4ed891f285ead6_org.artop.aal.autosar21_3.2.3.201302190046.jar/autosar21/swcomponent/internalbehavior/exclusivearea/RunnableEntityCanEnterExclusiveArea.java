/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.internalbehavior.exclusivearea;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.internalbehavior.RunnableEntity;
import autosar21.swcomponent.internalbehavior.exclusivearea.ExclusiveArea;

public interface RunnableEntityCanEnterExclusiveArea
extends ARObject {
    public RunnableEntity getRunnableEntity();

    public void setRunnableEntity(RunnableEntity var1);

    public ExclusiveArea getExclusiveArea();

    public void setExclusiveArea(ExclusiveArea var1);
}

