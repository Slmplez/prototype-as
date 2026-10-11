/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.debug.core.ILaunchConfiguration
 */
package org.eclipse.jdt.launching;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.debug.core.ILaunchConfiguration;
import org.eclipse.jdt.launching.IRuntimeClasspathEntry;
import org.w3c.dom.Element;

public interface IRuntimeClasspathEntry2
extends IRuntimeClasspathEntry {
    public void initializeFrom(Element var1) throws CoreException;

    public String getTypeId();

    public boolean isComposite();

    public IRuntimeClasspathEntry[] getRuntimeClasspathEntries(ILaunchConfiguration var1) throws CoreException;

    public String getName();
}

