/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 */
package org.eclipse.ui.internal.registry;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.ui.internal.registry.IActionSet;

public interface IActionSetDescriptor {
    public IActionSet createActionSet() throws CoreException;

    public String getDescription();

    public String getId();

    public String getLabel();

    public boolean isInitiallyVisible();

    public void setInitiallyVisible(boolean var1);

    public IConfigurationElement getConfigurationElement();
}

