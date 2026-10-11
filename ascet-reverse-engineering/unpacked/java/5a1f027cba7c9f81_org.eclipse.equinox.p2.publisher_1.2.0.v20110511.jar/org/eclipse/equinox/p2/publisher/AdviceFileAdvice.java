/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils
 *  org.eclipse.equinox.internal.p2.core.helpers.LogHelper
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.IProvidedCapability
 *  org.eclipse.equinox.p2.metadata.IRequirement
 *  org.eclipse.equinox.p2.metadata.ITouchpointData
 *  org.eclipse.equinox.p2.metadata.ITouchpointInstruction
 *  org.eclipse.equinox.p2.metadata.IUpdateDescriptor
 *  org.eclipse.equinox.p2.metadata.MetadataFactory
 *  org.eclipse.equinox.p2.metadata.MetadataFactory$InstallableUnitDescription
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor
 */
package org.eclipse.equinox.p2.publisher;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import java.util.zip.ZipFile;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils;
import org.eclipse.equinox.internal.p2.core.helpers.LogHelper;
import org.eclipse.equinox.internal.p2.publisher.Activator;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.IProvidedCapability;
import org.eclipse.equinox.p2.metadata.IRequirement;
import org.eclipse.equinox.p2.metadata.ITouchpointData;
import org.eclipse.equinox.p2.metadata.ITouchpointInstruction;
import org.eclipse.equinox.p2.metadata.IUpdateDescriptor;
import org.eclipse.equinox.p2.metadata.MetadataFactory;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.publisher.AbstractAdvice;
import org.eclipse.equinox.p2.publisher.AdviceFileParser;
import org.eclipse.equinox.p2.publisher.actions.IAdditionalInstallableUnitAdvice;
import org.eclipse.equinox.p2.publisher.actions.ICapabilityAdvice;
import org.eclipse.equinox.p2.publisher.actions.IPropertyAdvice;
import org.eclipse.equinox.p2.publisher.actions.ITouchpointAdvice;
import org.eclipse.equinox.p2.publisher.actions.IUpdateDescriptorAdvice;
import org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class AdviceFileAdvice
extends AbstractAdvice
implements ITouchpointAdvice,
ICapabilityAdvice,
IUpdateDescriptorAdvice,
IPropertyAdvice,
IAdditionalInstallableUnitAdvice {
    public static final IPath BUNDLE_ADVICE_FILE = new Path("META-INF/p2.inf");
    private final String id;
    private final Version version;
    private Map<String, ITouchpointInstruction> touchpointInstructions;
    private IProvidedCapability[] providedCapabilities;
    private IRequirement[] requiredCapabilities;
    private IRequirement[] metaRequiredCapabilities;
    private Map<String, String> iuProperties;
    private MetadataFactory.InstallableUnitDescription[] additionalIUs;
    private IUpdateDescriptor updateDescriptor;
    private boolean containsAdvice = false;

    public AdviceFileAdvice(String id, Version version, IPath basePath, IPath adviceFilePath) {
        Assert.isNotNull((Object)id);
        Assert.isNotNull((Object)version);
        Assert.isNotNull((Object)basePath);
        Assert.isNotNull((Object)adviceFilePath);
        this.id = id;
        this.version = version;
        Map<String, String> advice = AdviceFileAdvice.loadAdviceMap(basePath, adviceFilePath);
        if (advice.isEmpty()) {
            return;
        }
        AdviceFileParser parser = new AdviceFileParser(id, version, advice);
        try {
            parser.parse();
        }
        catch (Exception e) {
            String message = new StringBuffer("An error occured while parsing advice file: basePath=").append(basePath).append(", adviceFilePath=").append(adviceFilePath).append(".").toString();
            Status status = new Status(4, Activator.ID, message, (Throwable)e);
            LogHelper.log((IStatus)status);
            return;
        }
        this.touchpointInstructions = parser.getTouchpointInstructions();
        this.providedCapabilities = parser.getProvidedCapabilities();
        this.requiredCapabilities = parser.getRequiredCapabilities();
        this.metaRequiredCapabilities = parser.getMetaRequiredCapabilities();
        this.iuProperties = parser.getProperties();
        this.additionalIUs = parser.getAdditionalInstallableUnitDescriptions();
        this.updateDescriptor = parser.getUpdateDescriptor();
        this.containsAdvice = true;
    }

    public boolean containsAdvice() {
        return this.containsAdvice;
    }

    /*
     * Unable to fully structure code
     */
    private static Map<String, String> loadAdviceMap(IPath basePath, IPath adviceFilePath) {
        block37: {
            block35: {
                block36: {
                    block33: {
                        block34: {
                            location = basePath.toFile();
                            if (location == null || !location.exists()) {
                                return CollectionUtils.emptyMap();
                            }
                            jar = null;
                            stream = null;
                            if (!location.isDirectory()) ** GOTO lbl27
                            adviceFile = new File(location, adviceFilePath.toString());
                            if (adviceFile.isFile()) break block33;
                            var9_7 = CollectionUtils.emptyMap();
                            if (stream == null) break block34;
                            try {
                                stream.close();
                            }
                            catch (IOException v0) {}
                        }
                        if (jar != null) {
                            try {
                                jar.close();
                            }
                            catch (IOException v1) {}
                        }
                        return var9_7;
                    }
                    stream = new BufferedInputStream(new FileInputStream(adviceFile));
                    ** GOTO lbl47
lbl27:
                    // 1 sources

                    if (!location.isFile()) ** GOTO lbl47
                    jar = new ZipFile(location);
                    entry = jar.getEntry(adviceFilePath.toString());
                    if (entry != null) break block35;
                    var9_8 = CollectionUtils.emptyMap();
                    if (stream == null) break block36;
                    try {
                        stream.close();
                    }
                    catch (IOException v2) {}
                }
                if (jar != null) {
                    try {
                        jar.close();
                    }
                    catch (IOException v3) {}
                }
                return var9_8;
            }
            stream = new BufferedInputStream(jar.getInputStream(entry));
lbl47:
            // 3 sources

            var9_9 = CollectionUtils.loadProperties((InputStream)stream);
            if (stream == null) break block37;
            try {
                stream.close();
            }
            catch (IOException v4) {}
        }
        if (jar != null) {
            try {
                jar.close();
            }
            catch (IOException v5) {}
        }
        return var9_9;
        catch (IOException e) {
            block38: {
                try {
                    message = new StringBuffer("An error occured while reading advice file: basePath=").append(basePath).append(", adviceFilePath=").append(adviceFilePath).append(".").toString();
                    status = new Status(4, Activator.ID, message, (Throwable)e);
                    LogHelper.log((IStatus)status);
                    var9_10 = CollectionUtils.emptyMap();
                    if (stream == null) break block38;
                }
                catch (Throwable var8_13) {
                    if (stream != null) {
                        try {
                            stream.close();
                        }
                        catch (IOException v6) {}
                    }
                    if (jar != null) {
                        try {
                            jar.close();
                        }
                        catch (IOException v7) {}
                    }
                    throw var8_13;
                }
                try {
                    stream.close();
                }
                catch (IOException v8) {}
            }
            if (jar != null) {
                try {
                    jar.close();
                }
                catch (IOException v9) {}
            }
            return var9_10;
        }
    }

    @Override
    public boolean isApplicable(String configSpec, boolean includeDefault, String candidateId, Version candidateVersion) {
        return this.id.equals(candidateId) && this.version.equals(candidateVersion);
    }

    @Override
    public ITouchpointData getTouchpointData(ITouchpointData existing) {
        return MetadataFactory.mergeTouchpointData((ITouchpointData)existing, this.touchpointInstructions);
    }

    @Override
    public IProvidedCapability[] getProvidedCapabilities(MetadataFactory.InstallableUnitDescription iu) {
        return this.providedCapabilities;
    }

    @Override
    public IRequirement[] getRequiredCapabilities(MetadataFactory.InstallableUnitDescription iu) {
        return this.requiredCapabilities;
    }

    @Override
    public IRequirement[] getMetaRequiredCapabilities(MetadataFactory.InstallableUnitDescription iu) {
        return this.metaRequiredCapabilities;
    }

    @Override
    public MetadataFactory.InstallableUnitDescription[] getAdditionalInstallableUnitDescriptions(IInstallableUnit iu) {
        return this.additionalIUs;
    }

    @Override
    public IUpdateDescriptor getUpdateDescriptor(MetadataFactory.InstallableUnitDescription iu) {
        return this.updateDescriptor;
    }

    @Override
    public Map<String, String> getArtifactProperties(IInstallableUnit iu, IArtifactDescriptor descriptor) {
        return null;
    }

    @Override
    public Map<String, String> getInstallableUnitProperties(MetadataFactory.InstallableUnitDescription iu) {
        return this.iuProperties;
    }
}

