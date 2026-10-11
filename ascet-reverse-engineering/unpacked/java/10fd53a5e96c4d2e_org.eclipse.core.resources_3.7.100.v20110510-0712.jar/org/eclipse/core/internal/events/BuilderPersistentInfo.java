/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.events;

import org.eclipse.core.internal.resources.ICoreConstants;
import org.eclipse.core.internal.watson.ElementTree;
import org.eclipse.core.resources.IProject;

public class BuilderPersistentInfo {
    protected String builderName;
    private int buildSpecIndex = -1;
    protected IProject[] interestingProjects = ICoreConstants.EMPTY_PROJECT_ARRAY;
    protected ElementTree lastBuildTree;
    protected String projectName;
    protected String configName;

    public BuilderPersistentInfo(String projectName, String builderName, int buildSpecIndex) {
        this(projectName, null, builderName, buildSpecIndex);
    }

    public BuilderPersistentInfo(String projectName, String configName, String builderName, int buildSpecIndex) {
        this.projectName = projectName;
        this.configName = configName;
        this.builderName = builderName;
        this.buildSpecIndex = buildSpecIndex;
    }

    public String getBuilderName() {
        return this.builderName;
    }

    public int getBuildSpecIndex() {
        return this.buildSpecIndex;
    }

    public String getConfigName() {
        return this.configName;
    }

    public IProject[] getInterestingProjects() {
        return this.interestingProjects;
    }

    public ElementTree getLastBuiltTree() {
        return this.lastBuildTree;
    }

    public String getProjectName() {
        return this.projectName;
    }

    public void setConfigName(String configName) {
        this.configName = configName;
    }

    public void setInterestingProjects(IProject[] projects) {
        this.interestingProjects = projects;
    }

    public void setLastBuildTree(ElementTree tree) {
        this.lastBuildTree = tree;
    }
}

