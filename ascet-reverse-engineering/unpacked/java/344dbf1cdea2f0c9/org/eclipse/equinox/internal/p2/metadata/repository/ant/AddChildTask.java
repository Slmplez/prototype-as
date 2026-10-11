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

public class AddChildTask
extends AbstractMDRTask {
    URI location;
    URI child;

    public void execute() {
        this.validate();
        IMetadataRepositoryManager manager = (IMetadataRepositoryManager)AddChildTask.getAgent().getService(IMetadataRepositoryManager.SERVICE_NAME);
        if (manager == null) {
            throw new BuildException("Unable to aquire metadata repository manager service.");
        }
        CompositeMetadataRepository repo = null;
        try {
            repo = (CompositeMetadataRepository)manager.loadRepository(this.location, null);
        }
        catch (ClassCastException classCastException) {
            throw new BuildException("Repository at location: " + this.location + " is not a composite metadata repository.");
        }
        catch (ProvisionException e) {
            throw new BuildException("Error occurred while loading repository.", (Throwable)e);
        }
        repo.addChild(this.child);
        manager.removeRepository(this.location);
    }

    private void validate() {
        if (this.location == null) {
            throw new BuildException("Need to specify the composite repository location.");
        }
        if (this.child == null) {
            throw new BuildException("Need to specify the child repository location.");
        }
    }

    public void setLocation(String value) throws URISyntaxException {
        this.location = URIUtil.fromString((String)value);
    }

    public void setChild(String value) throws URISyntaxException {
        this.child = URIUtil.fromString((String)value);
    }
}

