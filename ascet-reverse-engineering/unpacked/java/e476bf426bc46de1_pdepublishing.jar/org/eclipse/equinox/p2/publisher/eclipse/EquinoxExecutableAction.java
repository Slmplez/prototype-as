/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.internal.p2.core.helpers.FileUtils
 *  org.eclipse.equinox.internal.p2.metadata.ArtifactKey
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.IProvidedCapability
 *  org.eclipse.equinox.p2.metadata.IRequirement
 *  org.eclipse.equinox.p2.metadata.MetadataFactory
 *  org.eclipse.equinox.p2.metadata.MetadataFactory$InstallableUnitDescription
 *  org.eclipse.equinox.p2.metadata.MetadataFactory$InstallableUnitFragmentDescription
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.metadata.VersionRange
 *  org.eclipse.equinox.p2.metadata.expression.IMatchExpression
 *  org.eclipse.equinox.p2.publisher.AbstractPublisherAction
 *  org.eclipse.equinox.p2.publisher.IPublisherInfo
 *  org.eclipse.equinox.p2.publisher.IPublisherResult
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor
 *  org.eclipse.equinox.spi.p2.publisher.PublisherHelper
 */
package org.eclipse.equinox.p2.publisher.eclipse;

import java.io.File;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.core.helpers.FileUtils;
import org.eclipse.equinox.internal.p2.metadata.ArtifactKey;
import org.eclipse.equinox.internal.p2.publisher.eclipse.BrandingIron;
import org.eclipse.equinox.internal.p2.publisher.eclipse.ExecutablesDescriptor;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.IProvidedCapability;
import org.eclipse.equinox.p2.metadata.IRequirement;
import org.eclipse.equinox.p2.metadata.MetadataFactory;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.metadata.VersionRange;
import org.eclipse.equinox.p2.metadata.expression.IMatchExpression;
import org.eclipse.equinox.p2.publisher.AbstractPublisherAction;
import org.eclipse.equinox.p2.publisher.IPublisherInfo;
import org.eclipse.equinox.p2.publisher.IPublisherResult;
import org.eclipse.equinox.p2.publisher.eclipse.ConfigCUsAction;
import org.eclipse.equinox.p2.publisher.eclipse.IBrandingAdvice;
import org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor;
import org.eclipse.equinox.spi.p2.publisher.PublisherHelper;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EquinoxExecutableAction
extends AbstractPublisherAction {
    private static String TYPE = "executable";
    protected String configSpec;
    protected String idBase;
    protected Version version;
    protected ExecutablesDescriptor executables;
    protected String flavor;
    static /* synthetic */ Class class$0;

    protected EquinoxExecutableAction() {
    }

    public EquinoxExecutableAction(ExecutablesDescriptor executables, String configSpec, String idBase, Version version, String flavor) {
        this.executables = executables;
        this.configSpec = configSpec;
        this.idBase = idBase == null ? "org.eclipse" : idBase;
        this.version = version;
        this.flavor = flavor;
    }

    public IStatus perform(IPublisherInfo publisherinfo, IPublisherResult result, IProgressMonitor monitor) {
        this.setPublisherInfo(publisherinfo);
        ExecutablesDescriptor brandedExecutables = this.brandExecutables(this.executables);
        try {
            if (this.publishExecutableIU(brandedExecutables, result)) {
                this.publishExecutableCU(brandedExecutables, result);
            }
            this.publishExecutableSetter(brandedExecutables, result);
        }
        finally {
            if (brandedExecutables.isTemporary()) {
                FileUtils.deleteAll((File)brandedExecutables.getLocation());
            }
        }
        return Status.OK_STATUS;
    }

    private void publishExecutableSetter(ExecutablesDescriptor brandedExecutables, IPublisherResult result) {
        MetadataFactory.InstallableUnitDescription iud = new MetadataFactory.InstallableUnitDescription();
        String executableName = brandedExecutables.getExecutableName();
        String id = new StringBuffer(String.valueOf(this.getExecutableId())).append('.').append(executableName).toString();
        iud.setId(id);
        iud.setVersion(this.version);
        iud.setTouchpointType(PublisherHelper.TOUCHPOINT_OSGI);
        iud.setCapabilities(new IProvidedCapability[]{this.createSelfCapability(id, this.version)});
        iud.setFilter(this.createFilterSpec(this.configSpec));
        HashMap<String, String> touchpointData = new HashMap<String, String>();
        touchpointData.put("configure", new StringBuffer("setLauncherName(name:").append(executableName).append(")").toString());
        touchpointData.put("unconfigure", "setLauncherName()");
        iud.addTouchpointData(MetadataFactory.createTouchpointData(touchpointData));
        result.addIU(MetadataFactory.createInstallableUnit((MetadataFactory.InstallableUnitDescription)iud), "root");
    }

    protected boolean publishExecutableIU(ExecutablesDescriptor execDescriptor, IPublisherResult result) {
        String[] config = EquinoxExecutableAction.parseConfigSpec((String)this.configSpec);
        if (execDescriptor.getFiles().length == 0 && (config.length == 0 || "ANY".equalsIgnoreCase(config[0]))) {
            return false;
        }
        boolean publishCU = true;
        MetadataFactory.InstallableUnitDescription iu = new MetadataFactory.InstallableUnitDescription();
        String id = this.getExecutableId();
        iu.setId(id);
        iu.setVersion(this.version);
        IMatchExpression filter = this.createFilterSpec(this.configSpec);
        iu.setFilter(filter);
        iu.setSingleton(true);
        iu.setTouchpointType(PublisherHelper.TOUCHPOINT_NATIVE);
        String namespace = ConfigCUsAction.getAbstractCUCapabilityNamespace(this.idBase, TYPE, this.flavor, this.configSpec);
        String capabilityId = ConfigCUsAction.getAbstractCUCapabilityId(this.idBase, TYPE, this.flavor, this.configSpec);
        IProvidedCapability executableCapability = MetadataFactory.createProvidedCapability((String)namespace, (String)capabilityId, (Version)this.version);
        IProvidedCapability selfCapability = this.createSelfCapability(id, this.version);
        iu.setCapabilities(new IProvidedCapability[]{selfCapability, executableCapability});
        if (execDescriptor.getFiles().length == 0) {
            publishCU = false;
        } else {
            ArtifactKey key = PublisherHelper.createBinaryArtifactKey((String)id, (Version)this.version);
            iu.setArtifacts(new IArtifactKey[]{key});
            IArtifactDescriptor descriptor = PublisherHelper.createArtifactDescriptor((IPublisherInfo)this.info, (IArtifactKey)key, null);
            this.publishArtifact(descriptor, execDescriptor.getFiles(), null, this.info, this.createRootPrefixComputer(execDescriptor.getLocation()));
            if (execDescriptor.isTemporary()) {
                FileUtils.deleteAll((File)execDescriptor.getLocation());
            }
        }
        if (config.length > 0 && !"ANY".equalsIgnoreCase(config[0])) {
            String ws = config[0];
            String os = config[1];
            String arch = config[2];
            String launcherFragment = new StringBuffer("org.eclipse.equinox.launcher.").append(ws).append('.').append(os).toString();
            if (!"macosx".equals(os) || "x86_64".equals(arch)) {
                launcherFragment = new StringBuffer(String.valueOf(launcherFragment)).append('.').append(arch).toString();
            }
            iu.setRequirements(new IRequirement[]{MetadataFactory.createRequirement((String)"org.eclipse.equinox.p2.iu", (String)launcherFragment, (VersionRange)VersionRange.emptyRange, (IMatchExpression)filter, (boolean)false, (boolean)false)});
        }
        result.addIU(MetadataFactory.createInstallableUnit((MetadataFactory.InstallableUnitDescription)iu), "root");
        return publishCU;
    }

    private String getExecutableId() {
        return this.createCUIdString(this.idBase, TYPE, "", this.configSpec);
    }

    private void publishExecutableCU(ExecutablesDescriptor execDescriptor, IPublisherResult result) {
        MetadataFactory.InstallableUnitFragmentDescription cu = new MetadataFactory.InstallableUnitFragmentDescription();
        String id = this.createCUIdString(this.idBase, TYPE, this.flavor, this.configSpec);
        cu.setId(id);
        cu.setVersion(this.version);
        cu.setFilter(this.createFilterSpec(this.configSpec));
        String executableId = this.getExecutableId();
        cu.setHost(new IRequirement[]{MetadataFactory.createRequirement((String)"org.eclipse.equinox.p2.iu", (String)executableId, (VersionRange)new VersionRange(this.version, true, this.version, true), null, (boolean)false, (boolean)false)});
        cu.setProperty("org.eclipse.equinox.p2.type.fragment", Boolean.TRUE.toString());
        cu.setCapabilities(new IProvidedCapability[]{PublisherHelper.createSelfCapability((String)id, (Version)this.version)});
        cu.setTouchpointType(PublisherHelper.TOUCHPOINT_NATIVE);
        String[] config = EquinoxExecutableAction.parseConfigSpec((String)this.configSpec);
        String os = config[1];
        Map<String, String> touchpointData = this.computeInstallActions(execDescriptor, os);
        cu.addTouchpointData(MetadataFactory.createTouchpointData(touchpointData));
        IInstallableUnit unit = MetadataFactory.createInstallableUnit((MetadataFactory.InstallableUnitDescription)cu);
        result.addIU(unit, "root");
    }

    private Map<String, String> computeInstallActions(ExecutablesDescriptor execDescriptor, String os) {
        HashMap<String, String> touchpointData = new HashMap<String, String>();
        String configurationData = "unzip(source:@artifact, target:${installFolder});";
        if ("macosx".equals(os)) {
            String execName = execDescriptor.getExecutableName();
            configurationData = new StringBuffer(String.valueOf(configurationData)).append(" chmod(targetDir:${installFolder}/").append(execName).append(".app/Contents/MacOS/, targetFile:").append(execName).append(", permissions:755);").toString();
        } else if (!"win32".equals(os)) {
            File[] fileList = execDescriptor.getFiles();
            int i = 0;
            while (i < fileList.length) {
                configurationData = new StringBuffer(String.valueOf(configurationData)).append(" chmod(targetDir:${installFolder}, targetFile:").append(fileList[i].getName()).append(", permissions:755);").toString();
                ++i;
            }
        }
        touchpointData.put("install", configurationData);
        String unConfigurationData = "cleanupzip(source:@artifact, target:${installFolder});";
        touchpointData.put("uninstall", unConfigurationData);
        return touchpointData;
    }

    protected ExecutablesDescriptor brandExecutables(ExecutablesDescriptor descriptor) {
        ExecutablesDescriptor result = new ExecutablesDescriptor(descriptor);
        result.makeTemporaryCopy();
        IBrandingAdvice advice = this.getBrandingAdvice();
        if (advice == null) {
            this.partialBrandExecutables(result);
        } else {
            this.fullBrandExecutables(result, advice);
        }
        return result;
    }

    private IBrandingAdvice getBrandingAdvice() {
        Collection advice;
        Iterator i;
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.p2.publisher.eclipse.IBrandingAdvice");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((i = (advice = this.info.getAdvice(this.configSpec, true, null, null, (Class)clazz)).iterator()).hasNext()) {
            return (IBrandingAdvice)i.next();
        }
        return null;
    }

    protected void fullBrandExecutables(ExecutablesDescriptor descriptor, IBrandingAdvice advice) {
        BrandingIron iron = new BrandingIron();
        iron.setId(this.idBase);
        iron.setVersion(this.version);
        iron.setIcons(advice.getIcons());
        String name = advice.getExecutableName();
        if (name == null) {
            name = "eclipse";
        }
        iron.setName(name);
        iron.setOS(advice.getOS());
        try {
            iron.brand(descriptor);
        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected void partialBrandExecutables(ExecutablesDescriptor descriptor) {
        File[] list = descriptor.getFiles();
        int i = 0;
        while (i < list.length) {
            this.mungeExecutableFileName(list[i], descriptor);
            ++i;
        }
        descriptor.setExecutableName("eclipse", true);
    }

    private void mungeExecutableFileName(File file, ExecutablesDescriptor descriptor) {
        if (file.getName().equals("launcher")) {
            File newFile = new File(file.getParentFile(), "eclipse");
            file.renameTo(newFile);
            descriptor.replace(file, newFile);
        } else if (file.getName().equals("launcher.exe")) {
            File newFile = new File(file.getParentFile(), "eclipse.exe");
            file.renameTo(newFile);
            descriptor.replace(file, newFile);
        }
    }
}

