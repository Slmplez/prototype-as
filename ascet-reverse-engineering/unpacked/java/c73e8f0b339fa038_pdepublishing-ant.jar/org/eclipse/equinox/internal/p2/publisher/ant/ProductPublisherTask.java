/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.BuildException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.equinox.internal.p2.publisher.eclipse.IProductDescriptor
 *  org.eclipse.equinox.internal.p2.publisher.eclipse.ProductFile
 *  org.eclipse.equinox.p2.core.ProvisionException
 *  org.eclipse.equinox.p2.publisher.IPublisherAction
 *  org.eclipse.equinox.p2.publisher.IPublisherAdvice
 *  org.eclipse.equinox.p2.publisher.IPublisherInfo
 *  org.eclipse.equinox.p2.publisher.Publisher
 *  org.eclipse.equinox.p2.publisher.PublisherInfo
 *  org.eclipse.equinox.p2.publisher.actions.VersionAdvice
 *  org.eclipse.equinox.p2.publisher.eclipse.ProductAction
 */
package org.eclipse.equinox.internal.p2.publisher.ant;

import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.tools.ant.BuildException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.equinox.internal.p2.publisher.ant.AbstractPublishTask;
import org.eclipse.equinox.internal.p2.publisher.eclipse.IProductDescriptor;
import org.eclipse.equinox.internal.p2.publisher.eclipse.ProductFile;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.equinox.p2.publisher.IPublisherAction;
import org.eclipse.equinox.p2.publisher.IPublisherAdvice;
import org.eclipse.equinox.p2.publisher.IPublisherInfo;
import org.eclipse.equinox.p2.publisher.Publisher;
import org.eclipse.equinox.p2.publisher.PublisherInfo;
import org.eclipse.equinox.p2.publisher.actions.VersionAdvice;
import org.eclipse.equinox.p2.publisher.eclipse.ProductAction;

public class ProductPublisherTask
extends AbstractPublishTask {
    private String flavor;
    private String productFile;
    private String executables;
    private List<ConfigElement> configurations = new ArrayList<ConfigElement>(3);
    private List<AdviceElement> advice = new ArrayList<AdviceElement>(3);

    public void execute() throws BuildException {
        ProductFile productDescriptor;
        block5: {
            try {
                this.initializeRepositories(this.getInfo());
            }
            catch (ProvisionException e) {
                throw new BuildException("Unable to configure repositories", (Throwable)e);
            }
            productDescriptor = null;
            try {
                productDescriptor = new ProductFile(this.productFile);
            }
            catch (Exception exception) {
                if (this.productFile != null) break block5;
                throw new IllegalArgumentException("unable to load product file");
            }
        }
        if (this.flavor == null || this.flavor.startsWith("${")) {
            this.flavor = "tooling";
        }
        ProductAction action = new ProductAction(this.source, (IProductDescriptor)productDescriptor, this.flavor, this.executables != null ? new File(this.executables) : null);
        new Publisher((IPublisherInfo)this.getInfo()).publish(new IPublisherAction[]{action}, (IProgressMonitor)new NullProgressMonitor());
    }

    protected PublisherInfo getInfo() {
        String[] configStrings = new String[this.configurations.size()];
        int i = 0;
        while (i < this.configurations.size()) {
            configStrings[i] = this.configurations.get(i).toString();
            ++i;
        }
        PublisherInfo info = super.getInfo();
        info.setConfigurations(configStrings);
        this.processAdvice(info);
        return info;
    }

    protected void processAdvice(PublisherInfo info) {
        Iterator<AdviceElement> iterator = this.advice.iterator();
        while (iterator.hasNext()) {
            AdviceElement element = iterator.next();
            if (element.kind == null || element.file == null || !element.kind.equals("featureVersions") && !element.kind.equals("pluginVersions")) continue;
            VersionAdvice versionAdvice = new VersionAdvice();
            versionAdvice.load("org.eclipse.equinox.p2.iu", element.file, element.kind.startsWith("features") ? ".feature.group" : null);
            info.addAdvice((IPublisherAdvice)versionAdvice);
        }
    }

    public void setFlavor(String flavor) {
        this.flavor = flavor;
    }

    public void setProductFile(String productFile) {
        this.productFile = productFile;
    }

    public void setExecutables(String executables) {
        this.executables = executables;
    }

    public void setSource(String source) {
        this.source = source;
    }

    public void addConfiguredConfig(ConfigElement config) {
        this.configurations.add(config);
    }

    public void addConfiguredAdvice(AdviceElement element) {
        this.advice.add(element);
    }

    public static class AdviceElement {
        public String kind;
        public String file;

        public void setKind(String kind) {
            this.kind = kind;
        }

        public void setFile(String file) {
            this.file = file;
        }
    }

    public static class ConfigElement {
        public String os;
        public String ws;
        public String arch;

        public void setOs(String os) {
            this.os = os;
        }

        public void setWs(String ws) {
            this.ws = ws;
        }

        public void setArch(String arch) {
            this.arch = arch;
        }

        public String toString() {
            return String.valueOf(this.ws) + '.' + this.os + '.' + this.arch;
        }
    }
}

