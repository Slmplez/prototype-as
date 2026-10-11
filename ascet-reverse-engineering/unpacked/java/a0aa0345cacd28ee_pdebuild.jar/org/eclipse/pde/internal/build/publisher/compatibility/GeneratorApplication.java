/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.p2.publisher.eclipse.IProductDescriptor
 *  org.eclipse.equinox.internal.p2.publisher.eclipse.ProductFile
 *  org.eclipse.equinox.internal.p2.updatesite.SiteXMLAction
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.publisher.AbstractPublisherApplication
 *  org.eclipse.equinox.p2.publisher.IPublisherAction
 *  org.eclipse.equinox.p2.publisher.IPublisherAdvice
 *  org.eclipse.equinox.p2.publisher.IPublisherInfo
 *  org.eclipse.equinox.p2.publisher.IPublisherResult
 *  org.eclipse.equinox.p2.publisher.Publisher
 *  org.eclipse.equinox.p2.publisher.PublisherInfo
 *  org.eclipse.equinox.p2.publisher.actions.IVersionAdvice
 *  org.eclipse.equinox.p2.publisher.actions.RootFilesAction
 *  org.eclipse.equinox.p2.publisher.actions.RootIUAction
 *  org.eclipse.equinox.p2.publisher.actions.RootIUResultFilterAdvice
 *  org.eclipse.equinox.p2.publisher.actions.VersionAdvice
 *  org.eclipse.equinox.p2.publisher.eclipse.BundlesAction
 *  org.eclipse.equinox.p2.publisher.eclipse.EquinoxLauncherCUAction
 *  org.eclipse.equinox.p2.publisher.eclipse.FeaturesAction
 *  org.eclipse.equinox.p2.publisher.eclipse.ProductAction
 */
package org.eclipse.pde.internal.build.publisher.compatibility;

import java.io.File;
import java.net.URI;
import java.util.ArrayList;
import org.eclipse.equinox.internal.p2.publisher.eclipse.IProductDescriptor;
import org.eclipse.equinox.internal.p2.publisher.eclipse.ProductFile;
import org.eclipse.equinox.internal.p2.updatesite.SiteXMLAction;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.publisher.AbstractPublisherApplication;
import org.eclipse.equinox.p2.publisher.IPublisherAction;
import org.eclipse.equinox.p2.publisher.IPublisherAdvice;
import org.eclipse.equinox.p2.publisher.IPublisherInfo;
import org.eclipse.equinox.p2.publisher.IPublisherResult;
import org.eclipse.equinox.p2.publisher.Publisher;
import org.eclipse.equinox.p2.publisher.PublisherInfo;
import org.eclipse.equinox.p2.publisher.actions.IVersionAdvice;
import org.eclipse.equinox.p2.publisher.actions.RootFilesAction;
import org.eclipse.equinox.p2.publisher.actions.RootIUAction;
import org.eclipse.equinox.p2.publisher.actions.RootIUResultFilterAdvice;
import org.eclipse.equinox.p2.publisher.actions.VersionAdvice;
import org.eclipse.equinox.p2.publisher.eclipse.BundlesAction;
import org.eclipse.equinox.p2.publisher.eclipse.EquinoxLauncherCUAction;
import org.eclipse.equinox.p2.publisher.eclipse.FeaturesAction;
import org.eclipse.equinox.p2.publisher.eclipse.ProductAction;
import org.eclipse.pde.internal.build.publisher.compatibility.AssembledConfigAdvice;
import org.eclipse.pde.internal.build.publisher.compatibility.RootFileParentAction;
import org.eclipse.pde.internal.build.publisher.compatibility.RootFileTouchpointAdvice;

public class GeneratorApplication
extends AbstractPublisherApplication {
    public static final int OPERATION_SOURCE = 1;
    public static final int OPERATION_INPLACE = 2;
    public static final int OPERATION_CONFIG = 3;
    public static final int OPERATION_UPDATE = 4;
    private int operation = 0;
    private IPublisherResult result = null;
    private URI site = null;
    private String siteVersion = null;
    private String flavor;
    private ProductFile product;
    private String rootVersion;
    private String versionAdvice;
    private String rootId;

    protected IPublisherAction[] createActions() {
        File sourceFile = this.source != null ? new File(this.source) : null;
        ArrayList<RootFileParentAction> actions = new ArrayList<RootFileParentAction>();
        switch (this.operation) {
            case 0: {
                if (this.product != null) {
                    actions.add(new RootFileParentAction(this.product, this.flavor));
                    actions.add((RootFileParentAction)new EquinoxLauncherCUAction(this.flavor, this.info.getConfigurations()));
                    actions.add((RootFileParentAction)new ProductAction(this.source, (IProductDescriptor)this.product, this.flavor, null));
                    break;
                }
                if (this.rootId == null) break;
                this.info.addAdvice((IPublisherAdvice)new RootIUResultFilterAdvice(null));
                actions.add(new RootFileParentAction(this.rootId, this.rootVersion, this.flavor));
                actions.add((RootFileParentAction)new RootIUAction(this.rootId, Version.parseVersion((String)this.rootVersion), null));
                break;
            }
            case 1: {
                actions.add((RootFileParentAction)new FeaturesAction(new File[]{new File(sourceFile, "features")}));
                actions.add((RootFileParentAction)new BundlesAction(new File[]{new File(sourceFile, "plugins")}));
                if (this.site == null) break;
                SiteXMLAction siteAction = new SiteXMLAction(this.site, "");
                if (this.siteVersion != null && this.siteVersion.length() > 0) {
                    siteAction.setCategoryVersion(this.siteVersion);
                }
                actions.add((RootFileParentAction)siteAction);
                break;
            }
            case 3: {
                String[] configs = this.info.getConfigurations();
                if (configs.length != 1) break;
                this.info.addAdvice((IPublisherAdvice)new AssembledConfigAdvice(configs[0], sourceFile, this.product != null ? this.product.getLauncherName() : null));
                this.info.addAdvice((IPublisherAdvice)new RootFileTouchpointAdvice(this.product, sourceFile, new File[]{sourceFile}, null, configs[0]));
                actions.add((RootFileParentAction)this.createRootFileAction(configs[0]));
            }
        }
        if (this.versionAdvice != null) {
            this.info.addAdvice((IPublisherAdvice)this.createVersionAdvice());
        }
        return actions.toArray(new IPublisherAction[actions.size()]);
    }

    protected IVersionAdvice createVersionAdvice() {
        File adviceFile = new File(this.versionAdvice);
        boolean features = adviceFile.getName().indexOf("feature") > 0;
        VersionAdvice advice = new VersionAdvice();
        advice.load("org.eclipse.equinox.p2.iu", this.versionAdvice, features ? ".feature.group" : "");
        return advice;
    }

    protected IPublisherAction createRootFileAction(String configSpec) {
        String id = this.product != null ? this.product.getId() : this.rootId;
        Version version = Version.parseVersion((String)this.getProductVersion());
        RootFilesAction action = new RootFilesAction((IPublisherInfo)this.info, id, version, this.flavor);
        action.setCreateParent(false);
        return action;
    }

    private String getProductVersion() {
        String version = "1.0.0";
        if (this.product != null && !this.product.getVersion().equals("0.0.0")) {
            version = this.product.getVersion();
        } else if (this.rootVersion != null && !this.rootVersion.equals("0.0.0")) {
            version = this.rootVersion;
        }
        return version;
    }

    protected Publisher createPublisher(PublisherInfo publisherInfo) {
        if (this.result != null) {
            return new Publisher((IPublisherInfo)publisherInfo, this.result);
        }
        return new Publisher((IPublisherInfo)publisherInfo);
    }

    public void setAppend(boolean value) {
        this.append = value;
    }

    public void setArtifactRepositoryName(String name) {
        this.artifactRepoName = name;
    }

    public void setCompress(boolean value) {
        this.compress = value;
    }

    public void setMetadataRepositoryName(String name) {
        this.metadataRepoName = name;
    }

    public void setOperation(int operation) {
        this.operation = operation;
    }

    public void setSource(String location) {
        this.source = location;
    }

    public void setSite(URI location) {
        this.site = location;
    }

    public void setIncrementalResult(IPublisherResult result) {
        this.result = result;
    }

    public void setFlavor(String flavor) {
        this.flavor = flavor;
    }

    public void setRootVersion(String rootVersion) {
        this.rootVersion = rootVersion;
    }

    public void setRoodId(String root) {
        this.rootId = root;
    }

    public void setProductFile(String file) {
        if (file != null && new File(file).exists()) {
            try {
                this.product = new ProductFile(file);
            }
            catch (Exception exception) {}
        }
    }

    public void setVersionAdvice(String advice) {
        this.versionAdvice = advice;
    }

    public void setSiteVersion(String version) {
        this.siteVersion = version;
    }
}

