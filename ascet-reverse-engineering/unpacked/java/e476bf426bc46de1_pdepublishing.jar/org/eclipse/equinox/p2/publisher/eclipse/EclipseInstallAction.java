/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubMonitor
 *  org.eclipse.equinox.p2.metadata.IVersionedId
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.publisher.AbstractPublisherAction
 *  org.eclipse.equinox.p2.publisher.IPublisherAction
 *  org.eclipse.equinox.p2.publisher.IPublisherAdvice
 *  org.eclipse.equinox.p2.publisher.IPublisherInfo
 *  org.eclipse.equinox.p2.publisher.IPublisherResult
 *  org.eclipse.equinox.p2.publisher.actions.JREAction
 *  org.eclipse.equinox.p2.publisher.actions.MergeResultsAction
 *  org.eclipse.equinox.p2.publisher.actions.RootFilesAction
 *  org.eclipse.equinox.p2.publisher.actions.RootFilesAdvice
 *  org.eclipse.equinox.p2.publisher.actions.RootIUAction
 *  org.eclipse.equinox.p2.publisher.actions.RootIUAdvice
 *  org.eclipse.equinox.p2.publisher.actions.RootIUResultFilterAdvice
 */
package org.eclipse.equinox.p2.publisher.eclipse;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.equinox.internal.p2.publisher.eclipse.ExecutablesDescriptor;
import org.eclipse.equinox.p2.metadata.IVersionedId;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.publisher.AbstractPublisherAction;
import org.eclipse.equinox.p2.publisher.IPublisherAction;
import org.eclipse.equinox.p2.publisher.IPublisherAdvice;
import org.eclipse.equinox.p2.publisher.IPublisherInfo;
import org.eclipse.equinox.p2.publisher.IPublisherResult;
import org.eclipse.equinox.p2.publisher.actions.JREAction;
import org.eclipse.equinox.p2.publisher.actions.MergeResultsAction;
import org.eclipse.equinox.p2.publisher.actions.RootFilesAction;
import org.eclipse.equinox.p2.publisher.actions.RootFilesAdvice;
import org.eclipse.equinox.p2.publisher.actions.RootIUAction;
import org.eclipse.equinox.p2.publisher.actions.RootIUAdvice;
import org.eclipse.equinox.p2.publisher.actions.RootIUResultFilterAdvice;
import org.eclipse.equinox.p2.publisher.eclipse.AccumulateConfigDataAction;
import org.eclipse.equinox.p2.publisher.eclipse.ApplicationLauncherAction;
import org.eclipse.equinox.p2.publisher.eclipse.BundlesAction;
import org.eclipse.equinox.p2.publisher.eclipse.ConfigCUsAction;
import org.eclipse.equinox.p2.publisher.eclipse.DefaultCUsAction;
import org.eclipse.equinox.p2.publisher.eclipse.EquinoxExecutableAction;
import org.eclipse.equinox.p2.publisher.eclipse.FeaturesAction;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EclipseInstallAction
extends AbstractPublisherAction {
    protected String source;
    protected String id;
    protected Version version;
    protected String name;
    protected String executableName;
    protected String flavor;
    protected IVersionedId[] topLevel;
    protected String[] nonRootFiles;
    protected boolean start = false;
    static /* synthetic */ Class class$0;

    protected EclipseInstallAction() {
    }

    public EclipseInstallAction(String source, String id, Version version, String name, String executableName, String flavor, IVersionedId[] topLevel, String[] nonRootFiles, boolean start) {
        this.source = source;
        this.id = id;
        this.version = version;
        this.name = name == null ? id : name;
        this.executableName = executableName == null ? "eclipse" : executableName;
        this.flavor = flavor;
        this.topLevel = topLevel;
        this.nonRootFiles = nonRootFiles;
        this.start = start;
    }

    public IStatus perform(IPublisherInfo publisherInfo, IPublisherResult results, IProgressMonitor monitor) {
        monitor = SubMonitor.convert((IProgressMonitor)monitor);
        this.info = publisherInfo;
        IPublisherAction[] actions = this.createActions();
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

    protected IPublisherAction[] createActions() {
        this.createAdvice();
        ArrayList<Object> actions = new ArrayList<Object>();
        MergeResultsAction action = new MergeResultsAction(new IPublisherAction[]{this.createFeaturesAction(), this.createBundlesAction()}, 1);
        actions.add(action);
        actions.add(this.createApplicationExecutableAction(this.info.getConfigurations()));
        actions.add(this.createRootFilesAction());
        actions.addAll(this.createAccumulateConfigDataActions(this.info.getConfigurations()));
        actions.add(this.createJREAction());
        actions.add(this.createConfigCUsAction());
        actions.add(this.createDefaultCUsAction());
        actions.add(this.createRootIUAction());
        return actions.toArray(new IPublisherAction[actions.size()]);
    }

    private void createAdvice() {
        this.createRootFilesAdvice();
        this.createRootAdvice();
    }

    protected void createRootAdvice() {
        if (this.topLevel != null) {
            this.info.addAdvice((IPublisherAdvice)new RootIUAdvice(this.getTopLevel()));
        }
        this.info.addAdvice((IPublisherAdvice)new RootIUResultFilterAdvice(null));
    }

    protected IPublisherAction createDefaultCUsAction() {
        return new DefaultCUsAction(this.info, this.flavor, 4, this.start);
    }

    protected IPublisherAction createRootIUAction() {
        return new RootIUAction(this.id, this.version, this.name);
    }

    protected Collection<IVersionedId> getTopLevel() {
        return Arrays.asList(this.topLevel);
    }

    protected IPublisherAction createJREAction() {
        return new JREAction(null);
    }

    protected IPublisherAction createApplicationExecutableAction(String[] configSpecs) {
        return new ApplicationLauncherAction(this.id, this.version, this.flavor, this.executableName, this.getExecutablesLocation(), configSpecs);
    }

    protected Collection<IPublisherAction> createAccumulateConfigDataActions(String[] configs) {
        File configuration = new File(this.source, "configuration/config.ini");
        if (!configuration.exists()) {
            configuration = null;
        }
        ArrayList<IPublisherAction> result = new ArrayList<IPublisherAction>(configs.length);
        int i = 0;
        while (i < configs.length) {
            String configSpec = configs[i];
            String os = AbstractPublisherAction.parseConfigSpec((String)configSpec)[1];
            File executable = ExecutablesDescriptor.findExecutable(os, this.computeExecutableLocation(configSpec), "eclipse");
            if (!executable.exists()) {
                executable = null;
            }
            AccumulateConfigDataAction action = new AccumulateConfigDataAction(this.info, configSpec, configuration, executable);
            result.add((IPublisherAction)action);
            ++i;
        }
        return result;
    }

    protected IPublisherAction createConfigCUsAction() {
        return new ConfigCUsAction(this.info, this.flavor, this.id, this.version);
    }

    protected IPublisherAction createFeaturesAction() {
        return new FeaturesAction(new File[]{new File(this.source, "features")});
    }

    protected Collection<IPublisherAction> createExecutablesActions(String[] configSpecs) {
        ArrayList<IPublisherAction> result = new ArrayList<IPublisherAction>(configSpecs.length);
        int i = 0;
        while (i < configSpecs.length) {
            ExecutablesDescriptor executables = this.computeExecutables(configSpecs[i]);
            EquinoxExecutableAction action = new EquinoxExecutableAction(executables, configSpecs[i], this.id, this.version, this.flavor);
            result.add((IPublisherAction)action);
            ++i;
        }
        return result;
    }

    protected IPublisherAction createRootFilesAction() {
        return new RootFilesAction(this.info, this.id, this.version, this.flavor);
    }

    protected void createRootFilesAdvice() {
        File[] baseExclusions = this.computeRootFileExclusions();
        if (baseExclusions != null) {
            this.info.addAdvice((IPublisherAdvice)new RootFilesAdvice(null, null, baseExclusions, null));
        }
        String[] configs = this.info.getConfigurations();
        int i = 0;
        while (i < configs.length) {
            this.info.addAdvice(this.computeRootFileAdvice(configs[i]));
            ++i;
        }
    }

    protected IPublisherAdvice computeRootFileAdvice(String configSpec) {
        File root = this.computeRootFileRoot(configSpec);
        File[] inclusions = this.computeRootFileInclusions(configSpec);
        File[] exclusions = this.computeRootFileExclusions(configSpec);
        return new RootFilesAdvice(root, inclusions, exclusions, configSpec);
    }

    protected File[] computeRootFileExclusions(String configSpec) {
        ExecutablesDescriptor executables = this.computeExecutables(configSpec);
        File[] files = executables.getFiles();
        File[] result = new File[files.length + 1];
        System.arraycopy(files, 0, result, 0, files.length);
        result[files.length] = executables.getIniLocation();
        return result;
    }

    protected File[] computeRootFileExclusions() {
        if (this.nonRootFiles == null || this.nonRootFiles.length == 0) {
            return null;
        }
        ArrayList<File> result = new ArrayList<File>();
        int i = 0;
        while (i < this.nonRootFiles.length) {
            String filename = this.nonRootFiles[i];
            File file = new File(filename);
            if (file.isAbsolute()) {
                result.add(file);
            } else {
                result.add(new File(this.source, filename));
            }
            ++i;
        }
        return result.toArray(new File[result.size()]);
    }

    protected ExecutablesDescriptor computeExecutables(String configSpec) {
        String os = AbstractPublisherAction.parseConfigSpec((String)configSpec)[1];
        return ExecutablesDescriptor.createDescriptor(os, "eclipse", this.computeExecutableLocation(configSpec));
    }

    protected File computeRootFileRoot(String configSpec) {
        return new File(this.source);
    }

    protected File[] computeRootFileInclusions(String configSpec) {
        return new File[]{new File(this.source)};
    }

    protected File computeExecutableLocation(String configSpec) {
        return new File(this.source);
    }

    protected File getExecutablesLocation() {
        return new File(this.source);
    }

    protected IPublisherAction createBundlesAction() {
        return new BundlesAction(new File[]{new File(this.source, "plugins")});
    }
}

