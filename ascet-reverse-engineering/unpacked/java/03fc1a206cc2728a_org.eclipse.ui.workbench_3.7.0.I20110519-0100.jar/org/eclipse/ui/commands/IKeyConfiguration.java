/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.commands;

import org.eclipse.ui.commands.IKeyConfigurationListener;
import org.eclipse.ui.commands.NotDefinedException;

public interface IKeyConfiguration
extends Comparable {
    public void addKeyConfigurationListener(IKeyConfigurationListener var1);

    public String getDescription() throws NotDefinedException;

    public String getId();

    public String getName() throws NotDefinedException;

    public String getParentId() throws NotDefinedException;

    public boolean isActive();

    public boolean isDefined();

    public void removeKeyConfigurationListener(IKeyConfigurationListener var1);
}

