/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.jdt.core.ClasspathVariableInitializer
 *  org.eclipse.jdt.core.JavaCore
 */
package org.eclipse.pde.internal.core;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.ClasspathVariableInitializer;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.PDEPreferencesManager;

public class EclipseHomeInitializer
extends ClasspathVariableInitializer {
    public static final String ECLIPSE_HOME_VARIABLE = "ECLIPSE_HOME";

    public void initialize(String variable) {
        EclipseHomeInitializer.resetEclipseHomeVariable();
    }

    public static void resetEclipseHomeVariable() {
        try {
            PDEPreferencesManager pref = PDECore.getDefault().getPreferencesManager();
            String platformHome = pref.getString("platform_path");
            JavaCore.setClasspathVariable((String)ECLIPSE_HOME_VARIABLE, (IPath)new Path(platformHome), null);
        }
        catch (CoreException coreException) {}
    }
}

