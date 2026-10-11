/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.osgi.service.resolver.BundleDescription
 */
package org.eclipse.pde.internal.build.builder;

import java.util.List;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.pde.internal.build.builder.ModelBuildScriptGenerator;

public interface IClasspathComputer {
    public List getClasspath(BundleDescription var1, ModelBuildScriptGenerator.CompiledEntry var2) throws CoreException;
}

