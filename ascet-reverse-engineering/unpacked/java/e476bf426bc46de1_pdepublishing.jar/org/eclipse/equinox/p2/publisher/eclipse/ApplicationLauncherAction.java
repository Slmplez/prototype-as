/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.IVersionedId
 *  org.eclipse.equinox.p2.metadata.MetadataFactory
 *  org.eclipse.equinox.p2.metadata.MetadataFactory$InstallableUnitDescription
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.publisher.AbstractPublisherAction
 *  org.eclipse.equinox.p2.publisher.IPublisherAction
 *  org.eclipse.equinox.p2.publisher.IPublisherAdvice
 *  org.eclipse.equinox.p2.publisher.IPublisherInfo
 *  org.eclipse.equinox.p2.publisher.IPublisherResult
 *  org.eclipse.equinox.p2.publisher.PublisherResult
 *  org.eclipse.equinox.p2.publisher.actions.VersionAdvice
 *  org.eclipse.equinox.p2.query.QueryUtil
 */
package org.eclipse.equinox.p2.publisher.eclipse;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.publisher.eclipse.ExecutablesDescriptor;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.IVersionedId;
import org.eclipse.equinox.p2.metadata.MetadataFactory;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.publisher.AbstractPublisherAction;
import org.eclipse.equinox.p2.publisher.IPublisherAction;
import org.eclipse.equinox.p2.publisher.IPublisherAdvice;
import org.eclipse.equinox.p2.publisher.IPublisherInfo;
import org.eclipse.equinox.p2.publisher.IPublisherResult;
import org.eclipse.equinox.p2.publisher.PublisherResult;
import org.eclipse.equinox.p2.publisher.actions.VersionAdvice;
import org.eclipse.equinox.p2.publisher.eclipse.EquinoxExecutableAction;
import org.eclipse.equinox.p2.publisher.eclipse.EquinoxLauncherCUAction;
import org.eclipse.equinox.p2.query.QueryUtil;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ApplicationLauncherAction
extends AbstractPublisherAction {
    private final String flavor;
    private final String[] configSpecs;
    private final File location;
    private final String executableName;
    private final Version version;
    private final String id;
    static /* synthetic */ Class class$0;

    public static String computeIUId(String id, String flavor) {
        return new StringBuffer(String.valueOf(flavor)).append(id).append(".application").toString();
    }

    public ApplicationLauncherAction(String id, Version version, String flavor, String executableName, File location, String[] configSpecs) {
        this.flavor = flavor;
        this.configSpecs = configSpecs;
        this.id = id;
        this.version = version;
        this.executableName = executableName;
        this.location = location;
    }

    public IStatus perform(IPublisherInfo publisherInfo, IPublisherResult results, IProgressMonitor monitor) {
        Collection<IPublisherAction> actions = this.createActions(publisherInfo);
        this.createAdvice(publisherInfo, results);
        PublisherResult innerResult = new PublisherResult();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.p2.publisher.eclipse.ApplicationLauncherAction");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        MultiStatus finalStatus = new MultiStatus(clazz.getName(), 0, "publishing result", null);
        for (IPublisherAction action : actions) {
            if (monitor.isCanceled()) {
                return Status.CANCEL_STATUS;
            }
            finalStatus.merge(action.perform(publisherInfo, (IPublisherResult)innerResult, monitor));
        }
        if (!finalStatus.isOK()) {
            return finalStatus;
        }
        results.merge((IPublisherResult)innerResult, 2);
        this.publishApplicationLauncherIU(innerResult.getIUs(null, "root"), results);
        return Status.OK_STATUS;
    }

    private void createAdvice(IPublisherInfo publisherInfo, IPublisherResult results) {
        this.createLauncherAdvice(publisherInfo, results);
    }

    private void createLauncherAdvice(IPublisherInfo publisherInfo, IPublisherResult results) {
        Collection<IInstallableUnit> ius = this.getIUs(results.getIUs(null, null), "org.eclipse.equinox.launcher");
        VersionAdvice advice = new VersionAdvice();
        boolean found = false;
        for (IInstallableUnit iu : ius) {
            if (iu.getId().endsWith(".source") || QueryUtil.isFragment((IInstallableUnit)iu)) continue;
            advice.setVersion("org.eclipse.equinox.p2.iu", iu.getId(), iu.getVersion());
            found = true;
        }
        if (found) {
            publisherInfo.addAdvice((IPublisherAdvice)advice);
        }
    }

    private Collection<IInstallableUnit> getIUs(Collection<IInstallableUnit> ius, String prefix) {
        HashSet<IInstallableUnit> result = new HashSet<IInstallableUnit>();
        for (IInstallableUnit tmp : ius) {
            if (!tmp.getId().startsWith(prefix)) continue;
            result.add(tmp);
        }
        return result;
    }

    private void publishApplicationLauncherIU(Collection<? extends IVersionedId> children, IPublisherResult result) {
        MetadataFactory.InstallableUnitDescription descriptor = this.createParentIU(children, ApplicationLauncherAction.computeIUId(this.id, this.flavor), this.version);
        descriptor.setSingleton(true);
        IInstallableUnit rootIU = MetadataFactory.createInstallableUnit((MetadataFactory.InstallableUnitDescription)descriptor);
        if (rootIU == null) {
            return;
        }
        result.addIU(rootIU, "root");
    }

    private Collection<IPublisherAction> createActions(IPublisherInfo publisherInfo) {
        ArrayList<IPublisherAction> actions = new ArrayList<IPublisherAction>();
        actions.add((IPublisherAction)new EquinoxLauncherCUAction(this.flavor, this.configSpecs));
        actions.addAll(this.createExecutablesActions(this.configSpecs));
        return actions;
    }

    protected Collection<IPublisherAction> createExecutablesActions(String[] configs) {
        ArrayList<IPublisherAction> actions = new ArrayList<IPublisherAction>(configs.length);
        int i = 0;
        while (i < configs.length) {
            ExecutablesDescriptor executables = this.computeExecutables(configs[i]);
            EquinoxExecutableAction action = new EquinoxExecutableAction(executables, configs[i], this.id, this.version, this.flavor);
            actions.add((IPublisherAction)action);
            ++i;
        }
        return actions;
    }

    protected ExecutablesDescriptor computeExecutables(String configSpec) {
        ExecutablesDescriptor result = ExecutablesDescriptor.createExecutablesFromFeature(this.location, configSpec);
        if (result != null) {
            return result;
        }
        String os = AbstractPublisherAction.parseConfigSpec((String)configSpec)[1];
        return ExecutablesDescriptor.createDescriptor(os, this.executableName, this.location);
    }
}

