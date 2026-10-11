/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.action;

import org.eclipse.jface.action.IContributionItem;

public interface IContributionManagerOverrides {
    public static final String P_ENABLED = "enabled";

    public Boolean getEnabled(IContributionItem var1);

    public Integer getAccelerator(IContributionItem var1);

    public String getAcceleratorText(IContributionItem var1);

    public String getText(IContributionItem var1);

    public Boolean getVisible(IContributionItem var1);
}

