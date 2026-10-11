/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.ILicense
 *  org.eclipse.equinox.p2.metadata.IProvidedCapability
 *  org.eclipse.equinox.p2.metadata.IRequirement
 *  org.eclipse.equinox.p2.metadata.IVersionedId
 *  org.eclipse.equinox.p2.metadata.MetadataFactory
 *  org.eclipse.equinox.p2.metadata.MetadataFactory$InstallableUnitDescription
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.metadata.VersionRange
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.p2.publisher.actions;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.Collection;
import java.util.HashSet;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.equinox.internal.p2.publisher.Activator;
import org.eclipse.equinox.internal.p2.publisher.Messages;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.ILicense;
import org.eclipse.equinox.p2.metadata.IProvidedCapability;
import org.eclipse.equinox.p2.metadata.IRequirement;
import org.eclipse.equinox.p2.metadata.IVersionedId;
import org.eclipse.equinox.p2.metadata.MetadataFactory;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.metadata.VersionRange;
import org.eclipse.equinox.p2.publisher.AbstractPublisherAction;
import org.eclipse.equinox.p2.publisher.IPublisherInfo;
import org.eclipse.equinox.p2.publisher.IPublisherResult;
import org.eclipse.equinox.p2.publisher.actions.ILicenseAdvice;
import org.eclipse.equinox.p2.publisher.actions.IRootIUAdvice;
import org.eclipse.equinox.p2.publisher.actions.IVersionAdvice;
import org.eclipse.equinox.spi.p2.publisher.PublisherHelper;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class RootIUAction
extends AbstractPublisherAction {
    private Version version;
    private String id;
    private String name;
    private Collection<IVersionAdvice> versionAdvice;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    public RootIUAction(String id, Version version, String name) {
        this.id = id;
        this.version = version;
        this.name = name;
    }

    @Override
    public IStatus perform(IPublisherInfo publisherInfo, IPublisherResult results, IProgressMonitor monitor) {
        this.info = publisherInfo;
        return this.generateRootIU(results);
    }

    protected IStatus generateRootIU(IPublisherResult result) {
        Collection<? extends IVersionedId> children = this.getChildren(result);
        MetadataFactory.InstallableUnitDescription descriptor = this.createTopLevelIUDescription(children, null, false);
        RootIUAction.processUpdateDescriptorAdvice(descriptor, this.info);
        RootIUAction.processCapabilityAdvice(descriptor, this.info);
        RootIUAction.processTouchpointAdvice(descriptor, null, this.info);
        RootIUAction.processInstallableUnitPropertiesAdvice(descriptor, this.info);
        RootIUAction.processLicense(descriptor, this.info);
        IInstallableUnit rootIU = MetadataFactory.createInstallableUnit((MetadataFactory.InstallableUnitDescription)descriptor);
        if (rootIU == null) {
            return new Status(4, Activator.ID, NLS.bind((String)Messages.error_rootIU_generation, (Object[])new Object[]{this.name, this.id, this.version}));
        }
        result.addIU(rootIU, "non_root");
        MetadataFactory.InstallableUnitDescription[] others = RootIUAction.processAdditionalInstallableUnitsAdvice(rootIU, this.info);
        int iuIndex = 0;
        while (others != null && iuIndex < others.length) {
            result.addIU(MetadataFactory.createInstallableUnit((MetadataFactory.InstallableUnitDescription)others[iuIndex]), "root");
            ++iuIndex;
        }
        return Status.OK_STATUS;
    }

    protected static void processLicense(MetadataFactory.InstallableUnitDescription iu, IPublisherInfo info) {
        Collection advice;
        String string = iu.getId();
        Version version = iu.getVersion();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.p2.publisher.actions.ILicenseAdvice");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((advice = info.getAdvice(null, true, string, version, clazz)).size() > 0) {
            String licenseUrl;
            ILicenseAdvice entry = (ILicenseAdvice)advice.iterator().next();
            String licenseText = entry.getLicenseText() == null ? "" : entry.getLicenseText();
            String string2 = licenseUrl = entry.getLicenseURL() == null ? "" : entry.getLicenseURL();
            if (licenseText.length() > 0 || licenseUrl.length() > 0) {
                iu.setLicenses(new ILicense[]{MetadataFactory.createLicense((URI)RootIUAction.toURIOrNull(licenseUrl), (String)licenseText)});
            }
        }
    }

    private static URI toURIOrNull(String url) {
        if (url == null) {
            return null;
        }
        try {
            return URIUtil.fromString((String)url);
        }
        catch (URISyntaxException uRISyntaxException) {
            return null;
        }
    }

    private Collection<? extends IVersionedId> getChildren(IPublisherResult result) {
        Collection rootAdvice;
        HashSet<Object> children = new HashSet<Object>();
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.equinox.p2.publisher.actions.IRootIUAdvice");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((rootAdvice = this.info.getAdvice(null, true, null, null, clazz)) == null) {
            return children;
        }
        for (IRootIUAdvice advice : rootAdvice) {
            Collection<? extends Object> list = advice.getChildren(result);
            if (list == null) continue;
            for (Object object : list) {
                if (object instanceof String) {
                    String childId = (String)object;
                    IInstallableUnit iu = this.queryForIU(result, childId, this.getVersionAdvice(childId));
                    if (iu == null) continue;
                    children.add(iu);
                    continue;
                }
                if (!(object instanceof IVersionedId)) continue;
                children.add((IVersionedId)object);
            }
        }
        return children;
    }

    private MetadataFactory.InstallableUnitDescription createTopLevelIUDescription(Collection<? extends IVersionedId> children, Collection<IRequirement> requires, boolean configureLauncherData) {
        MetadataFactory.InstallableUnitDescription root = new MetadataFactory.InstallableUnitDescription();
        root.setSingleton(true);
        root.setId(this.id);
        root.setVersion(this.version);
        root.setProperty("org.eclipse.equinox.p2.name", this.name);
        Collection<IRequirement> requiredCapabilities = this.createIURequirements(children);
        if (requires != null) {
            requiredCapabilities.addAll(requires);
        }
        root.setRequirements(requiredCapabilities.toArray(new IRequirement[requiredCapabilities.size()]));
        root.setArtifacts(new IArtifactKey[0]);
        root.setProperty("lineUp", "true");
        root.setUpdateDescriptor(MetadataFactory.createUpdateDescriptor((String)this.id, (VersionRange)VersionRange.emptyRange, (int)0, null));
        root.setProperty("org.eclipse.equinox.p2.type.group", Boolean.TRUE.toString());
        root.setCapabilities(new IProvidedCapability[]{this.createSelfCapability(this.id, this.version)});
        root.setTouchpointType(PublisherHelper.TOUCHPOINT_OSGI);
        return root;
    }

    private Version getVersionAdvice(String iuID) {
        if (this.versionAdvice == null) {
            Class<?> clazz = class$2;
            if (clazz == null) {
                try {
                    clazz = class$2 = Class.forName("org.eclipse.equinox.p2.publisher.actions.IVersionAdvice");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.versionAdvice = this.info.getAdvice(null, true, null, null, clazz);
            if (this.versionAdvice == null) {
                return null;
            }
        }
        for (IVersionAdvice advice : this.versionAdvice) {
            Version result = advice.getVersion("org.eclipse.equinox.p2.iu", iuID);
            if (result == null) {
                result = advice.getVersion("bundle", iuID);
            }
            if (result == null) {
                result = advice.getVersion("feature", iuID);
            }
            if (result == null) continue;
            return result;
        }
        return null;
    }
}

