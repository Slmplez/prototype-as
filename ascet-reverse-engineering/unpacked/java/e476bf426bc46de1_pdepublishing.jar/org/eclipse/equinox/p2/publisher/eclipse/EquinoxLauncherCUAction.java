/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.internal.frameworkadmin.utils.Utils
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.metadata.expression.IMatchExpression
 *  org.eclipse.equinox.p2.publisher.AbstractPublisherAction
 *  org.eclipse.equinox.p2.publisher.IPublisherInfo
 *  org.eclipse.equinox.p2.publisher.IPublisherResult
 *  org.eclipse.equinox.p2.publisher.actions.IVersionAdvice
 */
package org.eclipse.equinox.p2.publisher.eclipse;

import java.util.Collection;
import java.util.Iterator;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.frameworkadmin.utils.Utils;
import org.eclipse.equinox.internal.p2.publisher.eclipse.GeneratorBundleInfo;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.metadata.expression.IMatchExpression;
import org.eclipse.equinox.p2.publisher.AbstractPublisherAction;
import org.eclipse.equinox.p2.publisher.IPublisherInfo;
import org.eclipse.equinox.p2.publisher.IPublisherResult;
import org.eclipse.equinox.p2.publisher.actions.IVersionAdvice;
import org.eclipse.equinox.p2.publisher.eclipse.BundlesAction;

public class EquinoxLauncherCUAction
extends AbstractPublisherAction {
    public static final String ORG_ECLIPSE_EQUINOX_LAUNCHER = "org.eclipse.equinox.launcher";
    private String flavor;
    private String[] configSpecs;
    static /* synthetic */ Class class$0;

    public EquinoxLauncherCUAction(String flavor, String[] configSpecs) {
        this.flavor = flavor;
        this.configSpecs = configSpecs;
    }

    public IStatus perform(IPublisherInfo publisherInfo, IPublisherResult results, IProgressMonitor monitor) {
        this.setPublisherInfo(publisherInfo);
        this.publishCU(ORG_ECLIPSE_EQUINOX_LAUNCHER, null, results);
        this.publishLauncherFragmentCUs(results);
        return Status.OK_STATUS;
    }

    private void publishLauncherFragmentCUs(IPublisherResult results) {
        String id = null;
        int i = 0;
        while (i < this.configSpecs.length) {
            String configSpec = this.configSpecs[i];
            String[] specs = Utils.getTokens((String)configSpec, (String)".");
            if (specs.length > 0 && !"ANY".equalsIgnoreCase(specs[0])) {
                id = specs.length > 2 && "macosx".equals(specs[1]) && !"x86_64".equals(specs[2]) ? "org.eclipse.equinox.launcher." + specs[0] + '.' + specs[1] : "org.eclipse.equinox.launcher." + configSpec;
                this.publishCU(id, configSpec, results);
            }
            ++i;
        }
    }

    private void publishCU(String id, String configSpec, IPublisherResult results) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.p2.publisher.actions.IVersionAdvice");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Collection advice = this.info.getAdvice(configSpec, true, id, null, (Class)clazz);
        Iterator iterator = advice.iterator();
        while (iterator.hasNext()) {
            IVersionAdvice versionSpec = (IVersionAdvice)iterator.next();
            Version version = versionSpec.getVersion("org.eclipse.equinox.p2.iu", id);
            if (version == null) continue;
            GeneratorBundleInfo bundle = new GeneratorBundleInfo();
            bundle.setSymbolicName(id);
            bundle.setVersion(version.toString());
            if (id.equals(ORG_ECLIPSE_EQUINOX_LAUNCHER)) {
                bundle.setSpecialConfigCommands("addProgramArg(programArg:-startup);addProgramArg(programArg:@artifact);");
                bundle.setSpecialUnconfigCommands("removeProgramArg(programArg:-startup);removeProgramArg(programArg:@artifact);");
            } else {
                bundle.setSpecialConfigCommands("addProgramArg(programArg:--launcher.library);addProgramArg(programArg:@artifact);");
                bundle.setSpecialUnconfigCommands("removeProgramArg(programArg:--launcher.library);removeProgramArg(programArg:@artifact);");
            }
            IMatchExpression filter = configSpec == null ? null : this.createFilterSpec(configSpec);
            IInstallableUnit cu = BundlesAction.createBundleConfigurationUnit(id, version, false, bundle, this.flavor, (IMatchExpression<IInstallableUnit>)filter);
            if (cu == null) continue;
            results.addIU(cu, "root");
        }
    }
}

