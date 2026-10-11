/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.internal.p2.artifact.repository.simple.SimpleArtifactDescriptor
 *  org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils
 *  org.eclipse.equinox.internal.p2.core.helpers.FileUtils
 *  org.eclipse.equinox.internal.p2.core.helpers.FileUtils$IPathComputer
 *  org.eclipse.equinox.internal.p2.core.helpers.LogHelper
 *  org.eclipse.equinox.internal.p2.metadata.IRequiredCapability
 *  org.eclipse.equinox.internal.p2.metadata.InstallableUnit
 *  org.eclipse.equinox.p2.core.ProvisionException
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.IProvidedCapability
 *  org.eclipse.equinox.p2.metadata.IRequirement
 *  org.eclipse.equinox.p2.metadata.ITouchpointData
 *  org.eclipse.equinox.p2.metadata.IUpdateDescriptor
 *  org.eclipse.equinox.p2.metadata.IVersionedId
 *  org.eclipse.equinox.p2.metadata.MetadataFactory
 *  org.eclipse.equinox.p2.metadata.MetadataFactory$InstallableUnitDescription
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.metadata.VersionRange
 *  org.eclipse.equinox.p2.metadata.expression.IMatchExpression
 *  org.eclipse.equinox.p2.query.Collector
 *  org.eclipse.equinox.p2.query.IQuery
 *  org.eclipse.equinox.p2.query.IQueryResult
 *  org.eclipse.equinox.p2.query.QueryUtil
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRepository
 *  org.eclipse.equinox.p2.repository.artifact.IFileArtifactRepository
 *  org.eclipse.equinox.p2.repository.artifact.IProcessingStepDescriptor
 *  org.eclipse.equinox.p2.repository.artifact.spi.ArtifactDescriptor
 *  org.eclipse.equinox.p2.repository.artifact.spi.ProcessingStepDescriptor
 */
package org.eclipse.equinox.p2.publisher;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.artifact.repository.simple.SimpleArtifactDescriptor;
import org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils;
import org.eclipse.equinox.internal.p2.core.helpers.FileUtils;
import org.eclipse.equinox.internal.p2.core.helpers.LogHelper;
import org.eclipse.equinox.internal.p2.metadata.IRequiredCapability;
import org.eclipse.equinox.internal.p2.metadata.InstallableUnit;
import org.eclipse.equinox.internal.p2.publisher.Activator;
import org.eclipse.equinox.internal.p2.publisher.QuotedTokenizer;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.IProvidedCapability;
import org.eclipse.equinox.p2.metadata.IRequirement;
import org.eclipse.equinox.p2.metadata.ITouchpointData;
import org.eclipse.equinox.p2.metadata.IUpdateDescriptor;
import org.eclipse.equinox.p2.metadata.IVersionedId;
import org.eclipse.equinox.p2.metadata.MetadataFactory;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.metadata.VersionRange;
import org.eclipse.equinox.p2.metadata.expression.IMatchExpression;
import org.eclipse.equinox.p2.publisher.IPublisherAction;
import org.eclipse.equinox.p2.publisher.IPublisherInfo;
import org.eclipse.equinox.p2.publisher.IPublisherResult;
import org.eclipse.equinox.p2.publisher.actions.IAdditionalInstallableUnitAdvice;
import org.eclipse.equinox.p2.publisher.actions.ICapabilityAdvice;
import org.eclipse.equinox.p2.publisher.actions.IFilterAdvice;
import org.eclipse.equinox.p2.publisher.actions.IPropertyAdvice;
import org.eclipse.equinox.p2.publisher.actions.ITouchpointAdvice;
import org.eclipse.equinox.p2.publisher.actions.IUpdateDescriptorAdvice;
import org.eclipse.equinox.p2.query.Collector;
import org.eclipse.equinox.p2.query.IQuery;
import org.eclipse.equinox.p2.query.IQueryResult;
import org.eclipse.equinox.p2.query.QueryUtil;
import org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRepository;
import org.eclipse.equinox.p2.repository.artifact.IFileArtifactRepository;
import org.eclipse.equinox.p2.repository.artifact.IProcessingStepDescriptor;
import org.eclipse.equinox.p2.repository.artifact.spi.ArtifactDescriptor;
import org.eclipse.equinox.p2.repository.artifact.spi.ProcessingStepDescriptor;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class AbstractPublisherAction
implements IPublisherAction {
    public static final String CONFIG_ANY = "ANY";
    public static final String CONFIG_SEGMENT_SEPARATOR = ".";
    protected IPublisherInfo info;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;
    static /* synthetic */ Class class$4;
    static /* synthetic */ Class class$5;

    public static String[] getArrayFromString(String list, String separator) {
        if (list == null || list.trim().equals("")) {
            return new String[0];
        }
        ArrayList<String> result = new ArrayList<String>();
        QuotedTokenizer tokens = new QuotedTokenizer(list, separator);
        while (tokens.hasMoreTokens()) {
            String token = tokens.nextToken().trim();
            if (token.equals("")) continue;
            result.add(token);
        }
        return result.toArray(new String[result.size()]);
    }

    public static String[] parseConfigSpec(String configSpec) {
        String[] result = AbstractPublisherAction.getArrayFromString(configSpec, CONFIG_SEGMENT_SEPARATOR);
        int i = 0;
        while (i < result.length) {
            if (result[i].equals("*")) {
                result[i] = CONFIG_ANY;
            }
            ++i;
        }
        if (result.length < 3) {
            String[] temp = new String[3];
            System.arraycopy(result, 0, temp, 0, result.length);
            int i2 = result.length;
            while (i2 < temp.length) {
                temp[i2] = CONFIG_ANY;
                ++i2;
            }
            result = temp;
        }
        return result;
    }

    public static String createConfigSpec(String ws, String os, String arch) {
        return new StringBuffer(String.valueOf(ws)).append('.').append(os).append('.').append(arch).toString();
    }

    protected void addSelfCapability(MetadataFactory.InstallableUnitDescription root) {
        root.setCapabilities(new IProvidedCapability[]{this.createSelfCapability(root.getId(), root.getVersion())});
    }

    protected IMatchExpression<IInstallableUnit> createFilterSpec(String configSpec) {
        String[] config = AbstractPublisherAction.parseConfigSpec(configSpec);
        if (config[0] != null || config[1] != null || config[2] != null) {
            String filterArch;
            String filterWs = config[0] != null && config[0] != CONFIG_ANY ? new StringBuffer("(osgi.ws=").append(config[0]).append(")").toString() : "";
            String filterOs = config[1] != null && config[1] != CONFIG_ANY ? new StringBuffer("(osgi.os=").append(config[1]).append(")").toString() : "";
            String string = filterArch = config[2] != null && config[2] != CONFIG_ANY ? new StringBuffer("(osgi.arch=").append(config[2]).append(")").toString() : "";
            if (filterWs.length() == 0 && filterOs.length() == 0 && filterArch.length() == 0) {
                return null;
            }
            return InstallableUnit.parseFilter((String)new StringBuffer("(& ").append(filterWs).append(filterOs).append(filterArch).append(")").toString());
        }
        return null;
    }

    protected boolean filterMatches(IMatchExpression<IInstallableUnit> filter, String configSpec) {
        if (filter == null) {
            return true;
        }
        String[] config = AbstractPublisherAction.parseConfigSpec(configSpec);
        return filter.isMatch((Object)InstallableUnit.contextIU((String)config[0], (String)config[1], (String)config[2]));
    }

    protected String createIdString(String configSpec) {
        String[] config = AbstractPublisherAction.parseConfigSpec(configSpec);
        return new StringBuffer(String.valueOf(config[0])).append('.').append(config[1]).append('.').append(config[2]).toString();
    }

    protected String createCUIdString(String id, String type, String flavor, String configSpec) {
        return new StringBuffer(String.valueOf(flavor)).append(id).append(CONFIG_SEGMENT_SEPARATOR).append(type).append(CONFIG_SEGMENT_SEPARATOR).append(this.createIdString(configSpec)).toString();
    }

    protected Collection<IRequirement> createIURequirements(Collection<? extends IVersionedId> children) {
        ArrayList<IRequirement> result = new ArrayList<IRequirement>(children.size());
        for (IVersionedId iVersionedId : children) {
            VersionRange range;
            if (iVersionedId instanceof IInstallableUnit) {
                IInstallableUnit iu = (IInstallableUnit)iVersionedId;
                range = new VersionRange(iu.getVersion(), true, iu.getVersion(), true);
                result.add(MetadataFactory.createRequirement((String)"org.eclipse.equinox.p2.iu", (String)iu.getId(), (VersionRange)range, (IMatchExpression)(iu.getFilter() == null ? null : iu.getFilter()), (boolean)false, (boolean)false));
                continue;
            }
            Version version = iVersionedId.getVersion();
            range = version == null || Version.emptyVersion.equals(version) ? VersionRange.emptyRange : new VersionRange(version, true, version, true);
            IMatchExpression<IInstallableUnit> filter = this.getFilterAdvice(iVersionedId);
            result.add(MetadataFactory.createRequirement((String)"org.eclipse.equinox.p2.iu", (String)iVersionedId.getId(), (VersionRange)range, filter, (boolean)false, (boolean)false));
        }
        return result;
    }

    private IMatchExpression<IInstallableUnit> getFilterAdvice(IVersionedId name) {
        if (this.info == null) {
            return null;
        }
        String string = name.getId();
        Version version = name.getVersion();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.p2.publisher.actions.IFilterAdvice");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Collection filterAdvice = this.info.getAdvice(CONFIG_ANY, true, string, version, clazz);
        for (IFilterAdvice advice : filterAdvice) {
            IMatchExpression<IInstallableUnit> result = advice.getFilter(name.getId(), name.getVersion(), false);
            if (result == null) continue;
            return result;
        }
        return null;
    }

    protected MetadataFactory.InstallableUnitDescription createIUShell(String id, Version version) {
        MetadataFactory.InstallableUnitDescription root = new MetadataFactory.InstallableUnitDescription();
        root.setId(id);
        root.setVersion(version);
        return root;
    }

    protected IArtifactDescriptor createPack200ArtifactDescriptor(IArtifactKey key, File pathOnDisk, String installSize) {
        ArtifactDescriptor result = new ArtifactDescriptor(key);
        if (pathOnDisk != null) {
            result.setProperty("artifact.size", installSize);
            result.setProperty("download.size", Long.toString(pathOnDisk.length()));
        }
        IProcessingStepDescriptor[] steps = new IProcessingStepDescriptor[]{new ProcessingStepDescriptor("org.eclipse.equinox.p2.processing.Pack200Unpacker", null, true)};
        result.setProcessingSteps(steps);
        result.setProperty("format", "packed");
        return result;
    }

    protected MetadataFactory.InstallableUnitDescription createParentIU(Collection<? extends IVersionedId> children, String id, Version version) {
        MetadataFactory.InstallableUnitDescription root = this.createIUShell(id, version);
        root.addRequirements(this.createIURequirements(children));
        this.addSelfCapability(root);
        return root;
    }

    protected FileUtils.IPathComputer createParentPrefixComputer(int segmentsToKeep) {
        return FileUtils.createParentPrefixComputer((int)segmentsToKeep);
    }

    protected FileUtils.IPathComputer createRootPrefixComputer(File root) {
        return FileUtils.createRootPathComputer((File)root);
    }

    protected IProvidedCapability createSelfCapability(String installableUnitId, Version installableUnitVersion) {
        return MetadataFactory.createProvidedCapability((String)"org.eclipse.equinox.p2.iu", (String)installableUnitId, (Version)installableUnitVersion);
    }

    protected static MetadataFactory.InstallableUnitDescription[] processAdditionalInstallableUnitsAdvice(IInstallableUnit iu, IPublisherInfo publisherInfo) {
        Collection advice;
        String string = iu.getId();
        Version version = iu.getVersion();
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.equinox.p2.publisher.actions.IAdditionalInstallableUnitAdvice");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((advice = publisherInfo.getAdvice(null, false, string, version, clazz)).isEmpty()) {
            return null;
        }
        ArrayList<MetadataFactory.InstallableUnitDescription> ius = new ArrayList<MetadataFactory.InstallableUnitDescription>();
        for (IAdditionalInstallableUnitAdvice entry : advice) {
            MetadataFactory.InstallableUnitDescription[] others = entry.getAdditionalInstallableUnitDescriptions(iu);
            if (others == null) continue;
            ius.addAll(Arrays.asList(others));
        }
        return ius.toArray(new MetadataFactory.InstallableUnitDescription[ius.size()]);
    }

    protected static void processArtifactPropertiesAdvice(IInstallableUnit iu, IArtifactDescriptor descriptor, IPublisherInfo info) {
        if (!(descriptor instanceof SimpleArtifactDescriptor)) {
            return;
        }
        String string = iu.getId();
        Version version = iu.getVersion();
        Class<?> clazz = class$2;
        if (clazz == null) {
            try {
                clazz = class$2 = Class.forName("org.eclipse.equinox.p2.publisher.actions.IPropertyAdvice");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Collection advice = info.getAdvice(null, false, string, version, clazz);
        for (IPropertyAdvice entry : advice) {
            Map<String, String> props = entry.getArtifactProperties(iu, descriptor);
            if (props == null) continue;
            for (Map.Entry<String, String> pe : props.entrySet()) {
                ((SimpleArtifactDescriptor)descriptor).setRepositoryProperty(pe.getKey(), pe.getValue());
            }
        }
    }

    protected static void processInstallableUnitPropertiesAdvice(MetadataFactory.InstallableUnitDescription iu, IPublisherInfo info) {
        String string = iu.getId();
        Version version = iu.getVersion();
        Class<?> clazz = class$2;
        if (clazz == null) {
            try {
                clazz = class$2 = Class.forName("org.eclipse.equinox.p2.publisher.actions.IPropertyAdvice");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Collection advice = info.getAdvice(null, false, string, version, clazz);
        for (IPropertyAdvice entry : advice) {
            Map<String, String> props = entry.getInstallableUnitProperties(iu);
            if (props == null) continue;
            for (Map.Entry<String, String> pe : props.entrySet()) {
                iu.setProperty(pe.getKey(), pe.getValue());
            }
        }
    }

    protected static void processUpdateDescriptorAdvice(MetadataFactory.InstallableUnitDescription iu, IPublisherInfo info) {
        Collection advice;
        String string = iu.getId();
        Version version = iu.getVersion();
        Class<?> clazz = class$3;
        if (clazz == null) {
            try {
                clazz = class$3 = Class.forName("org.eclipse.equinox.p2.publisher.actions.IUpdateDescriptorAdvice");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((advice = info.getAdvice(null, false, string, version, clazz)).isEmpty()) {
            return;
        }
        for (IUpdateDescriptorAdvice entry : advice) {
            IUpdateDescriptor updateDescriptor = entry.getUpdateDescriptor(iu);
            if (updateDescriptor == null) continue;
            iu.setUpdateDescriptor(updateDescriptor);
        }
    }

    protected static void processCapabilityAdvice(MetadataFactory.InstallableUnitDescription iu, IPublisherInfo info) {
        Collection advice;
        String string = iu.getId();
        Version version = iu.getVersion();
        Class<?> clazz = class$4;
        if (clazz == null) {
            try {
                clazz = class$4 = Class.forName("org.eclipse.equinox.p2.publisher.actions.ICapabilityAdvice");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((advice = info.getAdvice(null, false, string, version, clazz)).isEmpty()) {
            return;
        }
        for (ICapabilityAdvice entry : advice) {
            IProvidedCapability[] providedAdvice;
            IRequirement[] metaRequiredAdvice;
            IRequirement[] requiredAdvice = entry.getRequiredCapabilities(iu);
            if (requiredAdvice != null) {
                List current = iu.getRequirements();
                HashSet<IRequirement> resultRequiredCapabilities = new HashSet<IRequirement>(current);
                int j = 0;
                while (j < current.size()) {
                    IRequirement curr = (IRequirement)current.get(j);
                    IRequiredCapability currentRequiredCapability = null;
                    if (curr instanceof IRequiredCapability) {
                        currentRequiredCapability = (IRequiredCapability)curr;
                        int k = 0;
                        while (k < requiredAdvice.length) {
                            IRequiredCapability requiredCapability = null;
                            if (requiredAdvice[k] instanceof IRequiredCapability && (requiredCapability = (IRequiredCapability)requiredAdvice[k]).getNamespace().equals(currentRequiredCapability.getNamespace()) && requiredCapability.getName().equals(currentRequiredCapability.getName())) {
                                resultRequiredCapabilities.remove(currentRequiredCapability);
                                break;
                            }
                            ++k;
                        }
                    }
                    ++j;
                }
                resultRequiredCapabilities.addAll(Arrays.asList(requiredAdvice));
                iu.setRequirements(resultRequiredCapabilities.toArray(new IRequirement[resultRequiredCapabilities.size()]));
            }
            if ((metaRequiredAdvice = entry.getMetaRequiredCapabilities(iu)) != null) {
                Collection current = iu.getMetaRequirements();
                HashSet<IRequirement> resultMetaRequiredCapabilities = new HashSet<IRequirement>(current);
                block5: for (IRequirement curr : current) {
                    IRequiredCapability currentMetaRequiredCapability = null;
                    if (!(curr instanceof IRequiredCapability)) continue;
                    currentMetaRequiredCapability = (IRequiredCapability)curr;
                    int k = 0;
                    while (k < metaRequiredAdvice.length) {
                        IRequiredCapability metaRequiredCapability = null;
                        if (metaRequiredAdvice[k] instanceof IRequiredCapability && (metaRequiredCapability = (IRequiredCapability)metaRequiredAdvice[k]).getNamespace().equals(currentMetaRequiredCapability.getNamespace()) && metaRequiredCapability.getName().equals(currentMetaRequiredCapability.getName())) {
                            resultMetaRequiredCapabilities.remove(currentMetaRequiredCapability);
                            continue block5;
                        }
                        ++k;
                    }
                }
                resultMetaRequiredCapabilities.addAll(Arrays.asList(metaRequiredAdvice));
                iu.setMetaRequirements(resultMetaRequiredCapabilities.toArray(new IRequirement[resultMetaRequiredCapabilities.size()]));
            }
            if ((providedAdvice = entry.getProvidedCapabilities(iu)) == null) continue;
            Collection current = iu.getProvidedCapabilities();
            HashSet<IProvidedCapability> resultProvidedCapabilities = new HashSet<IProvidedCapability>(current);
            block7: for (IProvidedCapability currentProvidedCapability : current) {
                int k = 0;
                while (k < providedAdvice.length) {
                    IProvidedCapability providedCapability = providedAdvice[k];
                    if (providedCapability.getNamespace().equals(currentProvidedCapability.getNamespace()) && providedCapability.getName().equals(currentProvidedCapability.getName())) {
                        resultProvidedCapabilities.remove(currentProvidedCapability);
                        continue block7;
                    }
                    ++k;
                }
            }
            resultProvidedCapabilities.addAll(Arrays.asList(providedAdvice));
            iu.setCapabilities(resultProvidedCapabilities.toArray(new IProvidedCapability[resultProvidedCapabilities.size()]));
        }
    }

    protected static void processTouchpointAdvice(MetadataFactory.InstallableUnitDescription iu, Map<String, ? extends Object> currentInstructions, IPublisherInfo info) {
        AbstractPublisherAction.processTouchpointAdvice(iu, currentInstructions, info, null);
    }

    protected static void processTouchpointAdvice(MetadataFactory.InstallableUnitDescription iu, Map<String, ? extends Object> currentInstructions, IPublisherInfo info, String configSpec) {
        String string = iu.getId();
        Version version = iu.getVersion();
        Class<?> clazz = class$5;
        if (clazz == null) {
            try {
                clazz = class$5 = Class.forName("org.eclipse.equinox.p2.publisher.actions.ITouchpointAdvice");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Collection advice = info.getAdvice(configSpec, false, string, version, clazz);
        if (currentInstructions == null) {
            if (advice == null || advice.isEmpty()) {
                return;
            }
            currentInstructions = CollectionUtils.emptyMap();
        }
        ITouchpointData result = MetadataFactory.createTouchpointData(currentInstructions);
        if (advice != null) {
            for (ITouchpointAdvice entry : advice) {
                result = entry.getTouchpointData(result);
            }
        }
        iu.addTouchpointData(result);
    }

    protected void publishArtifact(IArtifactDescriptor descriptor, File inclusion, IPublisherInfo publisherInfo) {
        File descriptorFile;
        if (inclusion == null) {
            return;
        }
        IArtifactRepository destination = publisherInfo.getArtifactRepository();
        if (destination == null || destination.contains(descriptor)) {
            return;
        }
        if ((publisherInfo.getArtifactOptions() & 2) == 0) {
            destination.addDescriptor(descriptor);
            return;
        }
        if (destination instanceof IFileArtifactRepository && inclusion.equals(descriptorFile = ((IFileArtifactRepository)destination).getArtifactFile(descriptor))) {
            destination.addDescriptor(descriptor);
            return;
        }
        try {
            OutputStream output = destination.getOutputStream(descriptor);
            if (output == null) {
                return;
            }
            output = new BufferedOutputStream(output);
            FileUtils.copyStream((InputStream)new BufferedInputStream(new FileInputStream(inclusion)), (boolean)true, (OutputStream)output, (boolean)true);
        }
        catch (ProvisionException e) {
            LogHelper.log((IStatus)e.getStatus());
        }
        catch (IOException e) {
            LogHelper.log((IStatus)new Status(4, Activator.ID, "Error publishing artifacts", (Throwable)e));
        }
    }

    protected void publishArtifact(IArtifactDescriptor descriptor, File[] inclusions, File[] exclusions, IPublisherInfo publisherInfo, FileUtils.IPathComputer prefixComputer) {
        if (inclusions == null || inclusions.length < 1) {
            return;
        }
        IArtifactRepository destination = publisherInfo.getArtifactRepository();
        if (destination == null || destination.contains(descriptor)) {
            return;
        }
        if ((publisherInfo.getArtifactOptions() & 2) == 0) {
            destination.addDescriptor(descriptor);
            return;
        }
        File tempFile = null;
        try {
            OutputStream output = destination.getOutputStream(descriptor);
            if (output == null) {
                return;
            }
            try {
                output = new BufferedOutputStream(output);
                tempFile = File.createTempFile("p2.generator", "");
                FileUtils.zip((File[])inclusions, (File[])exclusions, (File)tempFile, (FileUtils.IPathComputer)prefixComputer);
                if (output != null) {
                    FileUtils.copyStream((InputStream)new BufferedInputStream(new FileInputStream(tempFile)), (boolean)true, (OutputStream)output, (boolean)true);
                }
            }
            catch (ProvisionException e) {
                LogHelper.log((IStatus)e.getStatus());
            }
            catch (IOException e) {
                LogHelper.log((IStatus)new Status(4, Activator.ID, "Error publishing artifacts", (Throwable)e));
                e.printStackTrace();
            }
        }
        finally {
            if (tempFile != null) {
                tempFile.delete();
            }
        }
    }

    protected IInstallableUnit queryForIU(IPublisherResult publisherResult, String iuId, Version version) {
        IQuery query = QueryUtil.createIUQuery((String)iuId, (Version)version);
        if (version == null || Version.emptyVersion.equals(version)) {
            query = QueryUtil.createLatestQuery((IQuery)query);
        }
        Collector collector = Collector.emptyCollector();
        NullProgressMonitor progress = new NullProgressMonitor();
        if (publisherResult != null) {
            collector = publisherResult.query(query, (IProgressMonitor)progress);
        }
        if (collector.isEmpty() && this.info.getMetadataRepository() != null) {
            collector = this.info.getMetadataRepository().query(query, (IProgressMonitor)progress);
        }
        if (collector.isEmpty() && this.info.getContextMetadataRepository() != null) {
            collector = this.info.getContextMetadataRepository().query(query, (IProgressMonitor)progress);
        }
        if (!collector.isEmpty()) {
            return (IInstallableUnit)collector.iterator().next();
        }
        return null;
    }

    protected IQueryResult<IInstallableUnit> queryForIUs(IPublisherResult publisherResult, String iuId, VersionRange versionRange) {
        IQuery query = null;
        Collector queryResult = Collector.emptyCollector();
        query = QueryUtil.createIUQuery((String)iuId, (VersionRange)versionRange);
        NullProgressMonitor progress = new NullProgressMonitor();
        if (publisherResult != null) {
            queryResult = publisherResult.query(query, (IProgressMonitor)progress);
        }
        if (queryResult.isEmpty() && this.info.getMetadataRepository() != null) {
            queryResult = this.info.getMetadataRepository().query(query, (IProgressMonitor)progress);
        }
        if (queryResult.isEmpty() && this.info.getContextMetadataRepository() != null) {
            queryResult = this.info.getContextMetadataRepository().query(query, (IProgressMonitor)progress);
        }
        return queryResult;
    }

    @Override
    public abstract IStatus perform(IPublisherInfo var1, IPublisherResult var2, IProgressMonitor var3);

    public void setPublisherInfo(IPublisherInfo info) {
        this.info = info;
    }
}

