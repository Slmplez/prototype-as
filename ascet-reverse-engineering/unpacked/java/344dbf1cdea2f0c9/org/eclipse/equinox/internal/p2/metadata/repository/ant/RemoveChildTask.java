/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.BuildException
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.equinox.internal.p2.metadata.repository.CompositeMetadataRepository
 *  org.eclipse.equinox.p2.core.ProvisionException
 *  org.eclipse.equinox.p2.repository.metadata.IMetadataRepositoryManager
 */
package org.eclipse.equinox.internal.p2.metadata.repository.ant;

import java.net.URI;
import java.net.URISyntaxException;
import org.apache.tools.ant.BuildException;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.equinox.internal.p2.metadata.repository.CompositeMetadataRepository;
import org.eclipse.equinox.internal.p2.metadata.repository.ant.AbstractMDRTask;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.equinox.p2.repository.metadata.IMetadataRepositoryManager;

public class RemoveChildTask
extends AbstractMDRTask {
    URI location;
    URI child;
    boolean allChildren;

    public void execute() {
        CompositeMetadataRepository repo;
        IMetadataRepositoryManager manager = (IMetadataRepositoryManager)RemoveChildTask.getAgent().getService(IMetadataRepositoryManager.SERVICE_NAME);
        if (manager == null) {
            throw new BuildException("Unable to aquire metadata repository manager service.");
        }
        try {
            repo = (CompositeMetadataRepository)manager.loadRepository(this.location, null);
        }
        catch (ProvisionException e) {
            throw new BuildException("Error occurred while loading repository.", (Throwable)e);
        }
        if (this.allChildren) {
            repo.removeAllChildren();
        } else {
            repo.removeChild(this.child);
        }
    }

    public void setLocation(String value) throws URISyntaxException {
        this.location = URIUtil.fromString((String)value);
    }

    public void setChild(String value) throws URISyntaxException {
        this.child = URIUtil.fromString((String)value);
    }

    public void setAllChildren(String value) {
        this.allChildren = Boolean.valueOf(value);
    }
}

