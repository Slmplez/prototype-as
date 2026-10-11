/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.core.internal.events;

import java.util.Map;
import org.eclipse.core.internal.events.BuildCommand;
import org.eclipse.core.internal.events.BuildContext;
import org.eclipse.core.internal.events.BuildManager;
import org.eclipse.core.internal.resources.ICoreConstants;
import org.eclipse.core.internal.watson.ElementTree;
import org.eclipse.core.resources.IBuildConfiguration;
import org.eclipse.core.resources.IBuildContext;
import org.eclipse.core.resources.ICommand;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class InternalBuilder {
    static BuildManager buildManager;
    private ICommand command;
    private boolean forgetStateRequested = false;
    private boolean rememberStateRequested = false;
    private IProject[] interestingProjects = ICoreConstants.EMPTY_PROJECT_ARRAY;
    private String label;
    private String natureId;
    private ElementTree oldState;
    private String pluginId;
    private IBuildConfiguration buildConfiguration;
    private IBuildContext context = null;
    private boolean callOnEmptyDelta = false;

    protected abstract IProject[] build(int var1, Map<String, String> var2, IProgressMonitor var3) throws CoreException;

    final boolean callOnEmptyDelta() {
        return this.callOnEmptyDelta;
    }

    protected abstract void clean(IProgressMonitor var1) throws CoreException;

    final void clearLastBuiltStateRequests() {
        this.forgetStateRequested = false;
        this.rememberStateRequested = false;
    }

    protected void forgetLastBuiltState() {
        this.oldState = null;
        this.forgetStateRequested = true;
        this.rememberStateRequested = false;
    }

    protected void rememberLastBuiltState() {
        this.rememberStateRequested = !this.forgetStateRequested;
    }

    protected ICommand getCommand() {
        return (ICommand)((BuildCommand)this.command).clone();
    }

    protected IResourceDelta getDelta(IProject aProject) {
        return buildManager.getDelta(aProject);
    }

    protected IBuildContext getContext() {
        return this.context;
    }

    final IProject[] getInterestingProjects() {
        return this.interestingProjects;
    }

    final String getLabel() {
        return this.label;
    }

    final ElementTree getLastBuiltTree() {
        return this.oldState;
    }

    final String getNatureId() {
        return this.natureId;
    }

    final String getPluginId() {
        return this.pluginId;
    }

    protected IProject getProject() {
        return this.buildConfiguration.getProject();
    }

    protected IBuildConfiguration getBuildConfig() {
        return this.buildConfiguration;
    }

    protected boolean hasBeenBuilt(IProject aProject) {
        return buildManager.hasBeenBuilt(aProject);
    }

    public boolean isInterrupted() {
        return InternalBuilder.buildManager.autoBuildJob.isInterrupted();
    }

    protected void needRebuild() {
        buildManager.requestRebuild();
    }

    final void setCallOnEmptyDelta(boolean value) {
        this.callOnEmptyDelta = value;
    }

    final void setCommand(ICommand value) {
        this.command = value;
    }

    final void setInterestingProjects(IProject[] value) {
        this.interestingProjects = value;
    }

    final void setLabel(String value) {
        this.label = value;
    }

    final void setLastBuiltTree(ElementTree value) {
        this.oldState = value;
    }

    final void setNatureId(String id) {
        this.natureId = id;
    }

    final void setPluginId(String value) {
        this.pluginId = value;
    }

    final void setBuildConfig(IBuildConfiguration value) {
        Assert.isNotNull((Object)value);
        this.buildConfiguration = value;
        if (this.context == null) {
            this.context = new BuildContext(this.buildConfiguration);
        }
    }

    final void setContext(IBuildContext context) {
        this.context = context;
    }

    protected abstract void startupOnInitialize();

    final boolean wasForgetStateRequested() {
        return this.forgetStateRequested;
    }

    final boolean wasRememberStateRequested() {
        return this.rememberStateRequested;
    }
}

