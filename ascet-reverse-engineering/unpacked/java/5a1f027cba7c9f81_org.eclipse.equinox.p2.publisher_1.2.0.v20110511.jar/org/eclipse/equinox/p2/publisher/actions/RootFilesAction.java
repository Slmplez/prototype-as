/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.internal.p2.core.helpers.FileUtils$IPathComputer
 *  org.eclipse.equinox.internal.p2.metadata.ArtifactKey
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.IProvidedCapability
 *  org.eclipse.equinox.p2.metadata.IRequirement
 *  org.eclipse.equinox.p2.metadata.IVersionedId
 *  org.eclipse.equinox.p2.metadata.MetadataFactory
 *  org.eclipse.equinox.p2.metadata.MetadataFactory$InstallableUnitDescription
 *  org.eclipse.equinox.p2.metadata.MetadataFactory$InstallableUnitFragmentDescription
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.metadata.VersionRange
 *  org.eclipse.equinox.p2.metadata.expression.IMatchExpression
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor
 */
package org.eclipse.equinox.p2.publisher.actions;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.core.helpers.FileUtils;
import org.eclipse.equinox.internal.p2.metadata.ArtifactKey;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.IProvidedCapability;
import org.eclipse.equinox.p2.metadata.IRequirement;
import org.eclipse.equinox.p2.metadata.IVersionedId;
import org.eclipse.equinox.p2.metadata.MetadataFactory;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.metadata.VersionRange;
import org.eclipse.equinox.p2.metadata.expression.IMatchExpression;
import org.eclipse.equinox.p2.publisher.AbstractPublisherAction;
import org.eclipse.equinox.p2.publisher.IPublisherInfo;
import org.eclipse.equinox.p2.publisher.IPublisherResult;
import org.eclipse.equinox.p2.publisher.PublisherResult;
import org.eclipse.equinox.p2.publisher.actions.IRootFilesAdvice;
import org.eclipse.equinox.p2.publisher.actions.RootFilesAdvice;
import org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor;
import org.eclipse.equinox.spi.p2.publisher.PublisherHelper;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class RootFilesAction
extends AbstractPublisherAction {
    private String idBase;
    private Version version;
    private String flavor;
    private boolean createParent = true;
    static /* synthetic */ Class class$0;

    public static String computeIUId(String id, String flavor) {
        return new StringBuffer(String.valueOf(flavor)).append(id).append(".rootfiles").toString();
    }

    public RootFilesAction(IPublisherInfo info, String idBase, Version version, String flavor) {
        this.idBase = idBase == null ? "org.eclipse" : idBase;
        this.version = version;
        this.flavor = flavor;
    }

    public void setCreateParent(boolean createParent) {
        this.createParent = createParent;
    }

    @Override
    public IStatus perform(IPublisherInfo publisherInfo, IPublisherResult results, IProgressMonitor monitor) {
        this.setPublisherInfo(publisherInfo);
        PublisherResult innerResult = new PublisherResult();
        String[] configSpecs = publisherInfo.getConfigurations();
        int i = 0;
        while (i < configSpecs.length) {
            if (monitor.isCanceled()) {
                return Status.CANCEL_STATUS;
            }
            this.generateRootFileIUs(configSpecs[i], innerResult);
            ++i;
        }
        results.merge(innerResult, 2);
        if (this.createParent) {
            this.publishTopLevelRootFilesIU(innerResult.getIUs(null, "root"), results);
        }
        if (monitor.isCanceled()) {
            return Status.CANCEL_STATUS;
        }
        return Status.OK_STATUS;
    }

    private void publishTopLevelRootFilesIU(Collection<? extends IVersionedId> children, IPublisherResult result) {
        MetadataFactory.InstallableUnitDescription descriptor = this.createParentIU(children, RootFilesAction.computeIUId(this.idBase, this.flavor), this.version);
        descriptor.setSingleton(true);
        IInstallableUnit rootIU = MetadataFactory.createInstallableUnit((MetadataFactory.InstallableUnitDescription)descriptor);
        if (rootIU == null) {
            return;
        }
        result.addIU(rootIU, "root");
    }

    private void generateRootFileIUs(String configSpec, IPublisherResult result) {
        MetadataFactory.InstallableUnitDescription iu = new MetadataFactory.InstallableUnitDescription();
        iu.setSingleton(true);
        String idPrefix = new StringBuffer(String.valueOf(this.idBase)).append(".rootfiles").toString();
        String iuId = new StringBuffer(String.valueOf(idPrefix)).append('.').append(this.createIdString(configSpec)).toString();
        iu.setId(iuId);
        iu.setVersion(this.version);
        IMatchExpression<IInstallableUnit> filter = this.createFilterSpec(configSpec);
        iu.setFilter(filter);
        ArtifactKey key = PublisherHelper.createBinaryArtifactKey(iuId, this.version);
        iu.setArtifacts(new IArtifactKey[]{key});
        iu.setTouchpointType(PublisherHelper.TOUCHPOINT_NATIVE);
        IProvidedCapability launcherCapability = MetadataFactory.createProvidedCapability((String)new StringBuffer(String.valueOf(this.flavor)).append(this.idBase).toString(), (String)idPrefix, (Version)this.version);
        iu.setCapabilities(new IProvidedCapability[]{PublisherHelper.createSelfCapability(iuId, this.version), launcherCapability});
        result.addIU(MetadataFactory.createInstallableUnit((MetadataFactory.InstallableUnitDescription)iu), "root");
        MetadataFactory.InstallableUnitFragmentDescription cu = new MetadataFactory.InstallableUnitFragmentDescription();
        String configUnitId = new StringBuffer(String.valueOf(this.flavor)).append(iuId).toString();
        cu.setId(configUnitId);
        cu.setVersion(this.version);
        cu.setFilter(filter);
        cu.setHost(new IRequirement[]{MetadataFactory.createRequirement((String)"org.eclipse.equinox.p2.iu", (String)iuId, (VersionRange)new VersionRange(this.version, true, this.version, true), null, (boolean)false, (boolean)false)});
        cu.setProperty("org.eclipse.equinox.p2.type.fragment", Boolean.TRUE.toString());
        cu.setCapabilities(new IProvidedCapability[]{PublisherHelper.createSelfCapability(configUnitId, this.version)});
        cu.setTouchpointType(PublisherHelper.TOUCHPOINT_NATIVE);
        HashMap<String, String> touchpointData = new HashMap<String, String>();
        String configurationData = "unzip(source:@artifact, target:${installFolder});";
        touchpointData.put("install", configurationData);
        String unConfigurationData = "cleanupzip(source:@artifact, target:${installFolder});";
        touchpointData.put("uninstall", unConfigurationData);
        RootFilesAction.processTouchpointAdvice((MetadataFactory.InstallableUnitDescription)cu, touchpointData, this.info, configSpec);
        IInstallableUnit unit = MetadataFactory.createInstallableUnit((MetadataFactory.InstallableUnitDescription)cu);
        result.addIU(unit, "root");
        if ((this.info.getArtifactOptions() & 3) > 0) {
            IArtifactDescriptor descriptor = PublisherHelper.createArtifactDescriptor(this.info, (IArtifactKey)key, null);
            IRootFilesAdvice advice = this.getAdvice(configSpec);
            this.publishArtifact(descriptor, advice.getIncludedFiles(), advice.getExcludedFiles(), this.info, this.createPrefixComputer(advice.getRoot()));
        }
    }

    private FileUtils.IPathComputer createPrefixComputer(File root) {
        if (root == null) {
            return this.createParentPrefixComputer(1);
        }
        return this.createRootPrefixComputer(root);
    }

    private IRootFilesAdvice getAdvice(String configSpec) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.p2.publisher.actions.IRootFilesAdvice");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Collection advice = this.info.getAdvice(configSpec, true, null, null, clazz);
        ArrayList<File> inclusions = new ArrayList<File>();
        ArrayList<File> exclusions = new ArrayList<File>();
        File root = null;
        for (IRootFilesAdvice entry : advice) {
            File[] list;
            if (root == null) {
                root = entry.getRoot();
            }
            if ((list = entry.getIncludedFiles()) != null) {
                inclusions.addAll(Arrays.asList(list));
            }
            if ((list = entry.getExcludedFiles()) == null) continue;
            exclusions.addAll(Arrays.asList(list));
        }
        File[] includeList = inclusions.toArray(new File[inclusions.size()]);
        File[] excludeList = exclusions.toArray(new File[exclusions.size()]);
        return new RootFilesAdvice(root, includeList, excludeList, configSpec);
    }
}

