/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExecutableExtension
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 */
package org.eclipse.core.resources;

import java.util.Map;
import org.eclipse.core.internal.events.InternalBuilder;
import org.eclipse.core.resources.IBuildConfiguration;
import org.eclipse.core.resources.IBuildContext;
import org.eclipse.core.resources.ICommand;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExecutableExtension;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.jobs.ISchedulingRule;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class IncrementalProjectBuilder
extends InternalBuilder
implements IExecutableExtension {
    public static final int FULL_BUILD = 6;
    public static final int AUTO_BUILD = 9;
    public static final int INCREMENTAL_BUILD = 10;
    public static final int CLEAN_BUILD = 15;

    @Override
    protected abstract IProject[] build(int var1, Map<String, String> var2, IProgressMonitor var3) throws CoreException;

    @Override
    protected void clean(IProgressMonitor monitor) throws CoreException {
    }

    @Override
    public final void forgetLastBuiltState() {
        super.forgetLastBuiltState();
    }

    @Override
    public final void rememberLastBuiltState() {
        super.rememberLastBuiltState();
    }

    @Override
    public final ICommand getCommand() {
        return super.getCommand();
    }

    @Override
    public final IResourceDelta getDelta(IProject project) {
        return super.getDelta(project);
    }

    @Override
    public final IProject getProject() {
        return super.getProject();
    }

    @Override
    public final IBuildConfiguration getBuildConfig() {
        return super.getBuildConfig();
    }

    @Override
    public final boolean hasBeenBuilt(IProject project) {
        return super.hasBeenBuilt(project);
    }

    @Override
    public final boolean isInterrupted() {
        return super.isInterrupted();
    }

    @Override
    public final void needRebuild() {
        super.needRebuild();
    }

    public void setInitializationData(IConfigurationElement config, String propertyName, Object data) throws CoreException {
    }

    @Override
    protected void startupOnInitialize() {
    }

    public ISchedulingRule getRule() {
        return ResourcesPlugin.getWorkspace().getRoot();
    }

    public ISchedulingRule getRule(int kind, Map<String, String> args) {
        return this.getRule();
    }

    @Override
    public final IBuildContext getContext() {
        return super.getContext();
    }
}

