/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jdt.core.IAccessRule
 *  org.eclipse.jdt.core.IJavaProject
 */
package org.eclipse.jdt.launching.environments;

import java.util.Map;
import java.util.Properties;
import org.eclipse.jdt.core.IAccessRule;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.launching.IVMInstall;
import org.eclipse.jdt.launching.LibraryLocation;

public interface IExecutionEnvironment {
    public String getId();

    public String getDescription();

    public IVMInstall[] getCompatibleVMs();

    public boolean isStrictlyCompatible(IVMInstall var1);

    public IVMInstall getDefaultVM();

    public void setDefaultVM(IVMInstall var1);

    public IAccessRule[][] getAccessRules(IVMInstall var1, LibraryLocation[] var2, IJavaProject var3);

    public Properties getProfileProperties();

    public IExecutionEnvironment[] getSubEnvironments();

    public Map getComplianceOptions();
}

