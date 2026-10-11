/*
 * Decompiled with CFR 0.152.
 */
package autosar40.bswmodule.bswbehavior;

import autosar40.bswmodule.bswbehavior.BswInterruptCategory;
import autosar40.bswmodule.bswbehavior.BswModuleEntity;

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

