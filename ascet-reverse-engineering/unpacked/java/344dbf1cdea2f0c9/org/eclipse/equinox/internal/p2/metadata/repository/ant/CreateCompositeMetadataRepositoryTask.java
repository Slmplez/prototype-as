/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.BuildException
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.equinox.internal.p2.metadata.repository.CompositeMetadataRepository
 *  org.eclipse.equinox.p2.core.ProvisionException
 *  org.eclipse.equinox.p2.repository.metadata.IMetadataRepository
 *  org.eclipse.equinox.p2.repository.metadata.IMetadataRepositoryManager
 */
package org.eclipse.equinox.internal.p2.metadata.repository.ant;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;
import org.apache.tools.ant.BuildException;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.equinox.internal.p2.metadata.repository.CompositeMetadataRepository;
import org.eclipse.equinox.internal.p2.metadata.repository.ant.AbstractMDRTask;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.equinox.p2.repository.metadata.IMetadataRepository;
import org.eclipse.equinox.p2.repository.metadata.IMetadataRepositoryManager;

public class CreateCompositeMetadataRepositoryTask
extends AbstractMDRTask {
    URI location;
    String name = "Composite Metadata Repository";
    boolean atomic = false;
    boolean compressed = true;
    boolean failOnExists = false;
    Map<String, String> properties = new HashMap<String, String>();

    public void execute() {
        IMetadataRepositoryManager manager;
        block9: {
            manager = (IMetadataRepositoryManager)CreateCompositeMetadataRepositoryTask.getAgent().getService(IMetadataRepositoryManager.SERVICE_NAME);
            if (manager == null) {
                throw new BuildException("Unable to aquire metadata repository manager service.");
            }
            manager.removeRepository(this.location);
            try {
                IMetadataRepository repository = manager.loadRepository(this.location, null);
                if (repository instanceof CompositeMetadataRepository) {
                    if (this.failOnExists) {
                        throw new BuildException("Composite repository already exists at location: " + this.location);
                    }
                    return;
                }
            }
            catch (ProvisionException e) {
                if (e.getStatus().getCode() == 1000) break block9;
                throw new BuildException("Exception while trying to read repository at: " + this.location, (Throwable)e);
            }
        }
        if (this.compressed) {
            this.properties.put("p2.compressed", Boolean.toString(true));
        }
        if (this.atomic) {
            this.properties.put("p2.atomic.composite.loading", Boolean.toString(true));
        }
        try {
            manager.createRepository(this.location, this.name, "org.eclipse.equinox.p2.metadata.repository.compositeRepository", this.properties);
        }
        catch (ProvisionException e) {
            throw new BuildException("Error occurred while creating composite metadata repository.", (Throwable)e);
        }
    }

    public void setName(String value) {
        this.name = value;
    }

    public void setLocation(String value) throws URISyntaxException {
        this.location = URIUtil.fromString((String)value);
    }

    public void setCompressed(boolean value) {
        this.compressed = value;
    }

    public void setAtomic(boolean value) {
        this.atomic = value;
    }

    public void setFailOnExists(boolean value) {
        this.failOnExists = value;
    }
}

