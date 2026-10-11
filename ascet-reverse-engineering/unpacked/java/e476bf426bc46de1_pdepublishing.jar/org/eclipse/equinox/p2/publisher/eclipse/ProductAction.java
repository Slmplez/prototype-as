/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubMonitor
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.IVersionedId
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.metadata.VersionedId
 *  org.eclipse.equinox.p2.publisher.AbstractPublisherAction
 *  org.eclipse.equinox.p2.publisher.AdviceFileAdvice
 *  org.eclipse.equinox.p2.publisher.IPublisherAction
 *  org.eclipse.equinox.p2.publisher.IPublisherAdvice
 *  org.eclipse.equinox.p2.publisher.IPublisherInfo
 *  org.eclipse.equinox.p2.publisher.IPublisherResult
 *  org.eclipse.equinox.p2.publisher.actions.IVersionAdvice
 *  org.eclipse.equinox.p2.publisher.actions.JREAction
 *  org.eclipse.equinox.p2.publisher.actions.RootIUAction
 *  org.eclipse.equinox.p2.publisher.actions.RootIUAdvice
 *  org.eclipse.equinox.p2.publisher.actions.RootIUResultFilterAdvice
 */
package org.eclipse.equinox.p2.publisher.eclipse;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.equinox.internal.p2.publisher.eclipse.IProductDescriptor;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.IVersionedId;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.metadata.VersionedId;
import org.eclipse.equinox.p2.publisher.AbstractPublisherAction;
import org.eclipse.equinox.p2.publisher.AdviceFileAdvice;
import org.eclipse.equinox.p2.publisher.IPublisherAction;
import org.eclipse.equinox.p2.publisher.IPublisherAdvice;
import org.eclipse.equinox.p2.publisher.IPublisherInfo;
import org.eclipse.equinox.p2.publisher.IPublisherResult;
import org.eclipse.equinox.p2.publisher.actions.IVersionAdvice;
import org.eclipse.equinox.p2.publisher.actions.JREAction;
import org.eclipse.equinox.p2.publisher.actions.RootIUAction;
import org.eclipse.equinox.p2.publisher.actions.RootIUAdvice;
import org.eclipse.equinox.p2.publisher.actions.RootIUResultFilterAdvice;
import org.eclipse.equinox.p2.publisher.eclipse.ApplicationLauncherAction;
import org.eclipse.equinox.p2.publisher.eclipse.ConfigCUsAction;
import org.eclipse.equinox.p2.publisher.eclipse.DefaultCUsAction;
import org.eclipse.equinox.p2.publisher.eclipse.ProductFileAdvice;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ProductAction
extends AbstractPublisherAction {
    protected String source;
    protected String id;
    protected Version version;
    protected String name;
    protected String executableName;
    protected String flavor;
    protected boolean start = false;
    protected File executablesFeatureLocation;
    protected IProductDescriptor product;
    protected IPublisherResult publisherResults;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public ProductAction(String source, IProductDescriptor product, String flavor, File executablesFeatureLocation) {
        this.source = source;
        this.flavor = flavor;
        this.executablesFeatureLocation = executablesFeatureLocation;
        this.product = product;
    }

    protected IPublisherAction[] createActions(IPublisherResult results) {
        this.createAdvice();
        ArrayList<IPublisherAction> actions = new ArrayList<IPublisherAction>();
        if (this.getExecutablesLocation() != null && this.product.includeLaunchers()) {
            actions.add(this.createApplicationExecutableAction(this.info.getConfigurations()));
        }
        actions.add(this.createConfigCUsAction());
        actions.add(this.createJREAction());
        actions.add(this.createDefaultCUsAction());
        actions.add(this.createRootIUAction());
        return actions.toArray(new IPublisherAction[actions.size()]);
    }

    protected IPublisherAction createApplicationExecutableAction(String[] configSpecs) {
        return new ApplicationLauncherAction(this.id, this.version, this.flavor, this.executableName, this.getExecutablesLocation(), configSpecs);
    }

    protected IPublisherAction createDefaultCUsAction() {
        return new DefaultCUsAction(this.info, this.flavor, 4, false);
    }

    protected IPublisherAction createRootIUAction() {
        return new RootIUAction(this.id, this.version, this.name);
    }

    protected IPublisherAction createConfigCUsAction() {
        return new ConfigCUsAction(this.info, this.flavor, this.id, this.version);
    }

    protected IPublisherAction createJREAction() {
        return new JREAction(null);
    }

    public IStatus perform(IPublisherInfo publisherInfo, IPublisherResult results, IProgressMonitor monitor) {
        monitor = SubMonitor.convert((IProgressMonitor)monitor);
        this.info = publisherInfo;
        this.publisherResults = results;
        IPublisherAction[] actions = this.createActions(results);
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.p2.publisher.eclipse.EclipseInstallAction");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        MultiStatus finalStatus = new MultiStatus(clazz.getName(), 0, "publishing result", null);
        int i = 0;
        while (i < actions.length) {
            if (monitor.isCanceled()) {
                return Status.CANCEL_STATUS;
            }
            finalStatus.merge(actions[i].perform(publisherInfo, results, monitor));
            ++i;
        }
        if (!finalStatus.isOK()) {
            return finalStatus;
        }
        return Status.OK_STATUS;
    }

    private void createAdvice() {
        this.executableName = this.product.getLauncherName();
        this.createProductAdvice();
        this.createAdviceFileAdvice();
        this.createRootAdvice();
        this.info.addAdvice((IPublisherAdvice)new RootIUResultFilterAdvice(null));
    }

    private void createAdviceFileAdvice() {
        File productFileLocation = this.product.getLocation();
        if (productFileLocation == null) {
            return;
        }
        AdviceFileAdvice advice = new AdviceFileAdvice(this.product.getId(), Version.parseVersion((String)this.product.getVersion()), (IPath)new Path(productFileLocation.getParent()), (IPath)new Path("p2.inf"));
        if (advice.containsAdvice()) {
            this.info.addAdvice((IPublisherAdvice)advice);
        }
    }

    private void createRootAdvice() {
        Collection<IVersionedId> list = this.product.useFeatures() ? this.versionElements(this.listElements(this.product.getFeatures(), ".feature.group"), "org.eclipse.equinox.p2.iu") : this.versionElements(this.listElements(this.product.getBundles(true), null), "org.eclipse.equinox.p2.iu");
        this.info.addAdvice((IPublisherAdvice)new RootIUAdvice(list));
    }

    private void createProductAdvice() {
        this.id = this.product.getId();
        this.version = Version.parseVersion((String)this.product.getVersion());
        this.name = this.product.getProductName();
        if (this.name == null || this.name.length() == 0) {
            this.name = this.product.getId();
        }
        String[] configSpecs = this.info.getConfigurations();
        int i = 0;
        while (i < configSpecs.length) {
            this.info.addAdvice((IPublisherAdvice)new ProductFileAdvice(this.product, configSpecs[i]));
            ++i;
        }
    }

    private Collection<IVersionedId> versionElements(Collection<IVersionedId> elements, String namespace) {
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.equinox.p2.publisher.actions.IVersionAdvice");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Collection versionAdvice = this.info.getAdvice(null, true, null, null, (Class)clazz);
        ArrayList<IVersionedId> result = new ArrayList<IVersionedId>();
        for (IVersionedId element : elements) {
            IInstallableUnit unit;
            Iterator advice;
            Version elementVersion = element.getVersion();
            if ((elementVersion == null || Version.emptyVersion.equals(elementVersion)) && (advice = versionAdvice.iterator()).hasNext()) {
                elementVersion = ((IVersionAdvice)advice.next()).getVersion(namespace, element.getId());
            }
            if ((unit = this.queryForIU(this.publisherResults, element.getId(), elementVersion)) != null) {
                result.add((IVersionedId)unit);
                continue;
            }
            if (elementVersion == null) continue;
            result.add((IVersionedId)new VersionedId(element.getId(), elementVersion));
        }
        return result;
    }

    private Collection<IVersionedId> listElements(List<IVersionedId> elements, String suffix) {
        if (suffix == null || suffix.length() == 0) {
            return elements;
        }
        ArrayList<IVersionedId> result = new ArrayList<IVersionedId>(elements.size());
        for (IVersionedId elementName : elements) {
            result.add((IVersionedId)new VersionedId(new StringBuffer(String.valueOf(elementName.getId())).append(suffix).toString(), elementName.getVersion()));
        }
        return result;
    }

    protected File getExecutablesLocation() {
        if (this.executablesFeatureLocation != null) {
            return this.executablesFeatureLocation;
        }
        if (this.source != null) {
            return new File(this.source);
        }
        return null;
    }
}

