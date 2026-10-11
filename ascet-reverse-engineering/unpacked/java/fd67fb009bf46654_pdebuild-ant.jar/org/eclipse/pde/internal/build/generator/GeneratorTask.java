/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.BuildException
 *  org.apache.tools.ant.Task
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.equinox.internal.p2.jarprocessor.Utils
 *  org.eclipse.equinox.p2.publisher.PublisherInfo
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.pde.internal.build.publisher.compatibility.GeneratorApplication
 *  org.eclipse.pde.internal.build.publisher.compatibility.IncrementalGenerator
 */
package org.eclipse.pde.internal.build.generator;

import java.net.URISyntaxException;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Task;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.equinox.internal.p2.jarprocessor.Utils;
import org.eclipse.equinox.p2.publisher.PublisherInfo;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.build.publisher.compatibility.GeneratorApplication;
import org.eclipse.pde.internal.build.publisher.compatibility.IncrementalGenerator;
import org.eclipse.pde.internal.build.tasks.TaskMessages;

public class GeneratorTask
extends Task {
    private static final String ANT_PREFIX = "${";
    protected PublisherInfo info = null;
    private GeneratorApplication generator = null;
    private String mode;

    public void execute() throws BuildException {
        try {
            IncrementalGenerator incremental = new IncrementalGenerator();
            incremental.setMode(this.mode);
            incremental.run(this.generator, this.info);
            if (!"incremental".equals(this.mode)) {
                this.info = null;
                this.generator = null;
            }
        }
        catch (Exception e) {
            throw new BuildException(TaskMessages.error_callingGenerator, (Throwable)e);
        }
    }

    protected PublisherInfo getInfo() {
        if (this.info == null) {
            this.info = new PublisherInfo();
        }
        return this.info;
    }

    protected GeneratorApplication getGenerator() {
        if (this.generator == null) {
            this.generator = new GeneratorApplication();
        }
        return this.generator;
    }

    public void setAppend(String value) {
        this.getGenerator().setAppend(Boolean.valueOf(value).booleanValue());
    }

    public void setArtifactRepository(String location) {
        if (location != null && !location.startsWith(ANT_PREFIX)) {
            try {
                this.getGenerator().setArtifactLocation(URIUtil.fromString((String)location));
            }
            catch (URISyntaxException uRISyntaxException) {
                throw new IllegalArgumentException(NLS.bind((String)TaskMessages.error_artifactRepoNotURI, (Object)location));
            }
        }
    }

    public void setArtifactRepositoryName(String name) {
        this.getGenerator().setArtifactRepositoryName(name);
    }

    public void setBase(String value) {
        if (this.generator == null) {
            this.generator = new GeneratorApplication();
        }
    }

    public void setBundles(String value) {
        if (this.generator == null) {
            this.generator = new GeneratorApplication();
        }
    }

    public void setCompress(String value) {
        this.getGenerator().setCompress(Boolean.valueOf(value).booleanValue());
    }

    public void setConfig(String value) {
        this.getGenerator().setOperation(3);
        this.getGenerator().setSource(value);
    }

    public void setInplace(String value) {
        this.getGenerator().setOperation(2);
        this.getGenerator().setSource(value);
    }

    public void setSource(String location) {
        this.getGenerator().setOperation(1);
        this.getGenerator().setSource(location);
    }

    public void setUpdateSite(String value) {
        this.getGenerator().setOperation(4);
        this.getGenerator().setSource(value);
    }

    public void setExe(String value) {
        if (this.info == null) {
            this.info = new PublisherInfo();
        }
    }

    public void setFeatures(String value) {
        if (this.generator == null) {
            this.generator = new GeneratorApplication();
        }
    }

    public void setFlavor(String flavor) {
        if (flavor != null && !flavor.startsWith(ANT_PREFIX)) {
            this.getGenerator().setFlavor(flavor);
        }
    }

    public void setLauncherConfig(String launcherConfig) {
        String[] array;
        if (launcherConfig != null && !launcherConfig.startsWith(ANT_PREFIX) && (array = Utils.toStringArray((String)launcherConfig, (String)"_")).length >= 3) {
            StringBuffer config = new StringBuffer(array[1]);
            config.append('.');
            config.append(array[0]);
            config.append('.');
            config.append(array[2]);
            if (array.length > 3) {
                config.append('_');
                config.append(array[3]);
            }
            this.getInfo().setConfigurations(new String[]{config.toString()});
        }
    }

    public void setMetadataRepository(String location) {
        if (location != null && !location.startsWith(ANT_PREFIX)) {
            try {
                this.getGenerator().setMetadataLocation(URIUtil.fromString((String)location));
            }
            catch (URISyntaxException uRISyntaxException) {
                throw new IllegalArgumentException(NLS.bind((String)TaskMessages.error_metadataRepoNotURI, (Object)location));
            }
        }
    }

    public void setMetadataRepositoryName(String name) {
        if (name != null && !name.startsWith(ANT_PREFIX)) {
            this.getGenerator().setMetadataRepositoryName(name);
        }
    }

    public void setNoDefaultIUs(String value) {
        if (this.info == null) {
            this.info = new PublisherInfo();
        }
    }

    public void setP2OS(String value) {
        if (this.info == null) {
            this.info = new PublisherInfo();
        }
    }

    public void setProductFile(String file) {
        if (file != null && !file.startsWith(ANT_PREFIX)) {
            this.getGenerator().setProductFile(file);
        }
    }

    public void setPublishArtifactRepository(boolean value) {
        int options = this.getInfo().getArtifactOptions();
        if (value) {
            this.info.setArtifactOptions(options | 1);
        } else {
            this.info.setArtifactOptions(options & 0xFFFFFFFE);
        }
    }

    public void setPublishArtifacts(boolean value) {
        int options = this.getInfo().getArtifactOptions();
        if (value) {
            this.info.setArtifactOptions(options | 2);
        } else {
            this.info.setArtifactOptions(options & 0xFFFFFFFD);
        }
    }

    public void setRoot(String root) {
        if (root == null || root.startsWith(ANT_PREFIX)) {
            return;
        }
        this.getGenerator().setRoodId(root);
    }

    public void setRootVersion(String rootVersion) {
        if (rootVersion == null || rootVersion.startsWith(ANT_PREFIX)) {
            return;
        }
        this.getGenerator().setRootVersion(rootVersion);
    }

    public void setMode(String mode) {
        this.mode = mode;
    }

    public void setVersionAdvice(String advice) {
        if (advice != null && !advice.startsWith(ANT_PREFIX)) {
            this.getGenerator().setVersionAdvice(advice);
        }
    }

    public void setSite(String site) {
        if (site == null || site.startsWith(ANT_PREFIX)) {
            return;
        }
        try {
            this.getGenerator().setSite(URIUtil.fromString((String)site));
        }
        catch (URISyntaxException uRISyntaxException) {
            throw new IllegalArgumentException(NLS.bind((String)TaskMessages.error_locationNotURI, (Object)site));
        }
    }

    public void setSiteVersion(String version) {
        if (version == null || version.startsWith(ANT_PREFIX)) {
            return;
        }
        this.getGenerator().setSiteVersion(version);
    }
}

