/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.debug.core;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.debug.core.ILaunchConfiguration;

public interface ILaunchConfigurationMigrationDelegate {
    public boolean isCandidate(ILaunchConfiguration var1) throws CoreException;

    public void migrate(ILaunchConfiguration var1) throws CoreException;
}

