/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jdt.core.IAccessRule
 *  org.eclipse.jdt.core.IJavaProject
 */
package org.eclipse.jdt.launching.environments;

import org.eclipse.jdt.core.IAccessRule;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.launching.IVMInstall;
import org.eclipse.jdt.launching.LibraryLocation;
import org.eclipse.jdt.launching.environments.IExecutionEnvironment;

public interface IAccessRuleParticipant {
    public IAccessRule[][] getAccessRules(IExecutionEnvironment var1, IVMInstall var2, LibraryLocation[] var3, IJavaProject var4);
}

