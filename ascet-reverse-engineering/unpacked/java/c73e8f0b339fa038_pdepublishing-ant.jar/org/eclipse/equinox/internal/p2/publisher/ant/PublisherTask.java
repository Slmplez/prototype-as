/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.BuildException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.equinox.p2.core.ProvisionException
 *  org.eclipse.equinox.p2.metadata.IVersionedId
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.publisher.IPublisherAction
 *  org.eclipse.equinox.p2.publisher.IPublisherInfo
 *  org.eclipse.equinox.p2.publisher.Publisher
 *  org.eclipse.equinox.p2.publisher.PublisherInfo
 *  org.eclipse.equinox.p2.publisher.eclipse.EclipseInstallAction
 */
package org.eclipse.equinox.internal.p2.publisher.ant;

import java.io.File;
import org.apache.tools.ant.BuildException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.equinox.internal.p2.publisher.ant.AbstractPublishTask;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.equinox.p2.metadata.IVersionedId;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.publisher.IPublisherAction;
import org.eclipse.equinox.p2.publisher.IPublisherInfo;
import org.eclipse.equinox.p2.publisher.Publisher;
import org.eclipse.equinox.p2.publisher.PublisherInfo;
import org.eclipse.equinox.p2.publisher.eclipse.EclipseInstallAction;

public class PublisherTask
extends AbstractPublishTask {
    protected boolean inplace = false;
    protected String[] configurations;
    protected String mode;
    private String flavor;
    private String operation;
    private String operationValue;
    private String root;
    private String rootVersion;
    private String versionAdvice;
    private String rootName;
    private String executableName;
    private IVersionedId[] topLevel;
    private boolean start;
    private String[] nonRootFiles;

    public void execute() throws BuildException {
        try {
            this.initialize(this.getInfo());
        }
        catch (ProvisionException e) {
            throw new BuildException("Unable to configure repositories", (Throwable)e);
        }
        this.createVersionAdvice();
        IPublisherAction[] actions = this.createActions();
        new Publisher((IPublisherInfo)this.getInfo()).publish(actions, (IProgressMonitor)new NullProgressMonitor());
    }

    private IPublisherAction[] createActions() {
        if (this.operation == null) {
            return new IPublisherAction[0];
        }
        if (this.operation.equals("-update")) {
            return new IPublisherAction[0];
        }
        if (this.operation.equals("-source")) {
            return new IPublisherAction[]{new EclipseInstallAction(this.operationValue, this.root, Version.parseVersion((String)this.rootVersion), this.rootName, this.executableName, this.flavor, this.topLevel, this.nonRootFiles, this.start)};
        }
        return new IPublisherAction[0];
    }

    private void createVersionAdvice() {
        if (this.versionAdvice == null) {
            return;
        }
    }

    protected void initialize(PublisherInfo info) throws ProvisionException {
        if (this.inplace) {
            File sourceLocation = new File(this.source);
            if (this.metadataLocation == null) {
                this.metadataLocation = sourceLocation.toURI();
            }
            if (this.artifactLocation == null) {
                this.artifactLocation = sourceLocation.toURI();
            }
            info.setArtifactOptions(info.getArtifactOptions() | 1 | 2);
        } else {
            info.setArtifactOptions(info.getArtifactOptions() | 1 | 2 | 4);
        }
        this.initializeRepositories(info);
    }

    public void setBase(String value) {
        this.source = value;
    }

    public void setBundles(String value) {
    }

    public void setConfig(String value) {
        this.operation = "-config";
        this.operationValue = value;
    }

    public void setInplace(String value) {
        this.operation = "-inplace";
        this.operationValue = value;
    }

    public void setSource(String location) {
        this.source = location;
        this.operation = "-source";
        this.operationValue = location;
    }

    public void setUpdateSite(String value) {
        this.operation = "-update";
        this.operationValue = value;
    }

    public void setExe(String value) {
        this.executableName = value;
    }

    public void setFeatures(String value) {
    }

    public void setFlavor(String value) {
        this.flavor = value;
    }

    public void setLauncherConfig(String value) {
    }

    public void setNoDefaultIUs(String value) {
    }

    public void setP2OS(String value) {
    }

    public void setProductFile(String file) {
    }

    public void setPublishArtifactRepository(String value) {
        this.getInfo().setArtifactOptions(this.getInfo().getArtifactOptions() | 1);
    }

    public void setPublishArtifacts(String value) {
        this.getInfo().setArtifactOptions(this.getInfo().getArtifactOptions() | 2);
    }

    public void setRoot(String value) {
        this.root = value;
    }

    public void setRootVersion(String value) {
        this.rootVersion = value;
    }

    public void setMode(String value) {
        this.mode = value;
    }

    public void setVersionAdvice(String value) {
        this.versionAdvice = value;
    }
}

