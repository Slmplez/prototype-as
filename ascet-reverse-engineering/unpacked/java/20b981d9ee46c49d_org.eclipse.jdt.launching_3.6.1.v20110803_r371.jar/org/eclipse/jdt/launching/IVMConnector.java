/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.debug.core.ILaunch
 */
package org.eclipse.jdt.launching;

import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.debug.core.ILaunch;

public interface IVMConnector {
    public void connect(Map var1, IProgressMonitor var2, ILaunch var3) throws CoreException;

    public String getName();

    public String getIdentifier();

    public Map getDefaultArguments() throws CoreException;

    public List getArgumentOrder();
}

