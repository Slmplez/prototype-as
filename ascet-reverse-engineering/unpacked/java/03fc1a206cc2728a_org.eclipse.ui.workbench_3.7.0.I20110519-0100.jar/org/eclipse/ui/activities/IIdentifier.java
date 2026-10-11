/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.activities;

import java.util.Set;
import org.eclipse.ui.activities.IIdentifierListener;

public interface IIdentifier
extends Comparable {
    public void addIdentifierListener(IIdentifierListener var1);

    public Set getActivityIds();

    public String getId();

    public boolean isEnabled();

    public void removeIdentifierListener(IIdentifierListener var1);
}

