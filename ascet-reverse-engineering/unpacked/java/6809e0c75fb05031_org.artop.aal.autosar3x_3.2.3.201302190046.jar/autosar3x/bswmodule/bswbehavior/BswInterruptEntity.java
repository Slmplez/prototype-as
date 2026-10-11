/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.bswmodule.bswbehavior;

import autosar3x.bswmodule.bswbehavior.BswInterruptCategory;
import autosar3x.bswmodule.bswbehavior.BswModuleEntity;

public interface BswInterruptEntity
extends BswModuleEntity {
    public BswInterruptCategory getInterruptCategory();

    public void setInterruptCategory(BswInterruptCategory var1);

    public void unsetInterruptCategory();

    public boolean isSetInterruptCategory();

    public String getInterruptSource();

    public void setInterruptSource(String var1);

    public void unsetInterruptSource();

    public boolean isSetInterruptSource();
}

