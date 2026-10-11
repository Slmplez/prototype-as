/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.p2.publisher.eclipse.FeatureEntry
 *  org.eclipse.equinox.p2.publisher.eclipse.IPlatformEntry
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.Version
 */
package org.eclipse.pde.internal.build.builder;

import java.io.File;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.p2.publisher.eclipse.FeatureEntry;
import org.eclipse.equinox.p2.publisher.eclipse.IPlatformEntry;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.build.AbstractScriptGenerator;
import org.eclipse.pde.internal.build.AssemblyInformation;
import org.eclipse.pde.internal.build.Config;
import org.eclipse.pde.internal.build.Messages;
import org.eclipse.pde.internal.build.SourceFeatureInformation;
import org.eclipse.pde.internal.build.Utils;
import org.eclipse.pde.internal.build.builder.AbstractBuildScriptGenerator;
import org.eclipse.pde.internal.build.builder.ClasspathComputer3_0;
import org.eclipse.pde.internal.build.builder.FeatureBuildScriptGenerator;
import org.eclipse.pde.internal.build.builder.ModelBuildScriptGenerator;
import org.eclipse.pde.internal.build.builder.SourceGenerator;
import org.eclipse.pde.internal.build.site.BuildTimeFeature;
import org.osgi.framework.Version;

public class BuildDirector
extends AbstractBuildScriptGenerator {
    private static final int QUALIFIER_SUFFIX_VERSION = 2;
    protected boolean analyseIncludedFeatures = false;
    protected boolean analysePlugins = true;
    protected boolean binaryFeature = true;
    private boolean scriptGeneration = true;
    protected String featureIdentifier;
    protected String searchedVersion;
    protected SourceFeatureInformation sourceToGather = new SourceFeatureInformation();
    private boolean generateVersionSuffix = false;
    protected boolean signJars = false;
    protected String product = null;
    protected boolean generateJnlp = false;
    protected boolean workspaceBinaries = false;
    private boolean sourceReferences = false;
    public static boolean p2Gathering = false;
    private final Map extractedLocations = new HashMap();

    public BuildDirector() {
    }

    public BuildDirector(String featureId, String versionId, AssemblyInformation informationGathering) throws CoreException {
        if (featureId == null) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 1, Messages.error_missingFeatureId, null));
        }
        this.featureIdentifier = featureId;
        this.searchedVersion = versionId;
        this.assemblyData = informationGathering;
    }

    public BuildDirector(AssemblyInformation assemblageInformation) {
        this.assemblyData = assemblageInformation;
    }

    public String getExtractedRoot(ClasspathComputer3_0.ClasspathElement element) {
        if (element.getSubPath() == null) {
            return element.getPath();
        }
        String absolute = element.getAbsolutePath();
        if (this.extractedLocations.containsKey(absolute)) {
            return (String)this.extractedLocations.get(absolute);
        }
        String name = new File(absolute).getName();
        if (name.endsWith(".jar")) {
            name = name.substring(0, name.length() - 4);
        }
        String destination = name;
        while (this.extractedLocations.containsValue(destination)) {
            destination = String.valueOf(name) + '_' + Integer.toHexString(destination.hashCode());
        }
        this.extractedLocations.put(absolute, destination);
        return destination;
    }

    protected Set computeElements(BuildTimeFeature feature) throws CoreException {
        LinkedHashSet<BundleDescription> computedElements = new LinkedHashSet<BundleDescription>(5);
        Properties featureProperties = this.getBuildProperties(feature);
        FeatureEntry[] pluginList = feature.getPluginEntries();
        int i = 0;
        while (i < pluginList.length) {
            FeatureEntry entry = pluginList[i];
            if (this.selectConfigs((IPlatformEntry)entry).size() != 0) {
                String versionRequested = entry.getVersion();
                BundleDescription model = this.getSite(false).getRegistry().getResolvedBundle(entry.getId(), versionRequested);
                if ((model == null || Utils.isBinary(model)) && featureProperties.containsKey("generate.plugin@" + entry.getId())) {
                    boolean individual = this.useIndividualSource(featureProperties);
                    String[] extraEntries = Utils.getArrayFromString(featureProperties.getProperty("generate.plugin@" + entry.getId()));
                    if (individual) {
                        BundleDescription originalBundle = this.getSite(false).getRegistry().getResolvedBundle(extraEntries[0]);
                        if (originalBundle != null) {
                            if (!Utils.isBinary(originalBundle)) {
                                this.generateEmbeddedSource(entry, extraEntries, individual);
                            } else if (model == null) {
                                String message = NLS.bind((String)Messages.exception_unableToGenerateSourceFromBinary, (Object)entry.getId(), (Object)(String.valueOf(originalBundle.getSymbolicName()) + "_" + originalBundle.getVersion()));
                                Status status = new Status(4, "org.eclipse.pde.build", 5, message, null);
                                throw new CoreException((IStatus)status);
                            }
                        }
                    } else {
                        this.generateEmbeddedSource(entry, extraEntries, individual);
                    }
                    model = this.getSite(false).getRegistry().getResolvedBundle(entry.getId(), versionRequested);
                }
                if (model == null) {
                    this.getSite(false).missingPlugin(entry.getId(), versionRequested, feature, true);
                }
                this.associateModelAndEntry(model, entry);
                computedElements.add(model);
                this.collectElementToAssemble(pluginList[i]);
            }
            ++i;
        }
        return computedElements;
    }

    private boolean useIndividualSource(Properties featureProperties) {
        boolean individual = Boolean.valueOf(featureProperties.getProperty("individualSourceBundles"));
        return individual || AbstractScriptGenerator.getPropertyAsBoolean("individualSourceBundles");
    }

    private void associateModelAndEntry(BundleDescription model, FeatureEntry entry) {
        HashSet<FeatureEntry> entries;
        Properties bundleProperties = (Properties)model.getUserObject();
        if (bundleProperties == null) {
            bundleProperties = new Properties();
            model.setUserObject((Object)bundleProperties);
        }
        if ((entries = (HashSet<FeatureEntry>)bundleProperties.get("pluginEntry")) == null) {
            entries = new HashSet<FeatureEntry>();
            bundleProperties.put("pluginEntry", entries);
        }
        entries.add(entry);
    }

    private void generateEmbeddedSource(FeatureEntry pluginEntry, String[] extraEntries, boolean individual) throws CoreException {
        BundleDescription originalBundle;
        if (individual && (originalBundle = this.getSite(false).getRegistry().getResolvedBundle(extraEntries[0])) != null) {
            SourceGenerator sourceGenerator = new SourceGenerator();
            sourceGenerator.setExtraEntries(extraEntries);
            sourceGenerator.setDirector(this);
            sourceGenerator.setIndividual(individual);
            sourceGenerator.generateSourcePlugin(pluginEntry, originalBundle);
            return;
        }
        BuildTimeFeature baseFeature = this.getSite(false).findFeature(extraEntries[0], (String)null, true);
        if (baseFeature != null) {
            this.generateSourceFeature(baseFeature, pluginEntry.getId(), extraEntries, false);
        }
    }

    public void setAnalyseChildren(boolean generate) {
        this.analysePlugins = generate;
    }

    public void generate() throws CoreException {
        if (workingDirectory == null) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 2, Messages.error_missingInstallLocation, null));
        }
        BuildTimeFeature feature = this.getSite(false).findFeature(this.featureIdentifier, this.searchedVersion, true);
        this.generate(feature);
    }

    public void generate(BuildTimeFeature feature) throws CoreException {
        this.generate(feature, true);
    }

    protected void generate(BuildTimeFeature feature, boolean generateProductFiles) throws CoreException {
        if (this.analyseIncludedFeatures) {
            this.generateIncludedFeatureBuildFile(feature);
        }
        if (this.analysePlugins) {
            this.generateChildrenScripts(feature);
        }
        this.collectElementToAssemble(feature);
        if (this.scriptGeneration) {
            FeatureBuildScriptGenerator featureScriptGenerator = new FeatureBuildScriptGenerator(feature);
            featureScriptGenerator.setDirector(this);
            featureScriptGenerator.setBuildSiteFactory(this.siteFactory);
            featureScriptGenerator.setGenerateProductFiles(generateProductFiles);
            featureScriptGenerator.generate();
        }
    }

    protected void generateSourceFeature(BuildTimeFeature baseFeature, String sourceFeatureName, String[] extraEntries, boolean individual) throws CoreException {
        SourceGenerator sourceGenerator = new SourceGenerator();
        sourceGenerator.setExtraEntries(extraEntries);
        sourceGenerator.setDirector(this);
        sourceGenerator.setIndividual(individual);
        sourceGenerator.generateSourceFeature(baseFeature, sourceFeatureName);
    }

    protected void generateIncludedFeatureBuildFile(BuildTimeFeature feature) throws CoreException {
        FeatureEntry[] referencedFeatures = feature.getIncludedFeatureReferences();
        int i = 0;
        while (i < referencedFeatures.length) {
            String featureId = referencedFeatures[i].getId();
            String featureVersion = referencedFeatures[i].getVersion();
            BuildTimeFeature nestedFeature = null;
            Properties featureProperties = this.getBuildProperties(feature);
            boolean doSourceFeatureGeneration = featureProperties.containsKey("generate.feature@" + featureId);
            if (doSourceFeatureGeneration) {
                String[] extraEntries = Utils.getArrayFromString(featureProperties.getProperty("generate.feature@" + featureId));
                nestedFeature = this.getSite(false).findFeature(extraEntries[0], featureVersion, true);
                this.generateSourceFeature(nestedFeature, featureId, extraEntries, this.useIndividualSource(featureProperties));
            }
            try {
                nestedFeature = this.getSite(false).findFeature(featureId, featureVersion, true);
                this.generate(nestedFeature, false);
            }
            catch (CoreException exception) {
                this.absorbExceptionIfOptionalFeature(referencedFeatures[i], exception);
            }
            ++i;
        }
    }

    private void absorbExceptionIfOptionalFeature(FeatureEntry entry, CoreException toAbsorb) throws CoreException {
        if (toAbsorb.getStatus().getCode() != 1 || toAbsorb.getStatus().getCode() == 1 && !entry.isOptional()) {
            throw toAbsorb;
        }
    }

    private void generateChildrenScripts(BuildTimeFeature feature) throws CoreException {
        Set plugins = this.computeElements(feature);
        String suffix = this.generateFeatureVersionSuffix(feature);
        if (suffix != null) {
            Version versionId = new Version(feature.getVersion());
            String qualifier = versionId.getQualifier();
            qualifier = qualifier.substring(0, feature.getContextQualifierLength());
            qualifier = String.valueOf(qualifier) + '-' + suffix;
            versionId = new Version(versionId.getMajor(), versionId.getMinor(), versionId.getMicro(), qualifier);
            String newVersion = versionId.toString();
            feature.setVersion(newVersion);
        }
        this.generateModels(Utils.extractPlugins(this.getSite(false).getRegistry().getSortedBundles(), plugins));
    }

    private static String lengthPrefixBase64(long number) {
        int length = 7;
        int i = 0;
        while (i < 7) {
            if (number < 1L << i * 6 + 3) {
                length = i;
                break;
            }
            ++i;
        }
        StringBuffer result = new StringBuffer(length + 1);
        result.append(Utils.base64Character((length << 3) + (int)(number >> 6 * length & 7L)));
        while (--length >= 0) {
            result.append(Utils.base64Character((int)(number >> 6 * length & 0x3FL)));
        }
        return result.toString();
    }

    private static void appendEncodedCharacter(StringBuffer buffer, int c) {
        while (c > 62) {
            buffer.append('z');
            c -= 63;
        }
        buffer.append(Utils.base64Character(c));
    }

    private static int getIntProperty(String property, int defaultValue) {
        int result = defaultValue;
        if (property != null) {
            try {
                result = Integer.parseInt(property);
                if (result < 1) {
                    result = defaultValue;
                }
            }
            catch (NumberFormatException numberFormatException) {}
        }
        return result;
    }

    protected String generateFeatureVersionSuffix(BuildTimeFeature buildFeature) throws CoreException {
        int maxGeneratedLength;
        if (!this.generateVersionSuffix || buildFeature.getContextQualifierLength() == -1) {
            return null;
        }
        Properties properties = this.getBuildProperties(buildFeature);
        int significantDigits = BuildDirector.getIntProperty((String)properties.get("significantVersionDigits"), -1);
        if (significantDigits == -1) {
            significantDigits = BuildDirector.getIntProperty(AbstractScriptGenerator.getImmutableAntProperty("significantVersionDigits"), Integer.MAX_VALUE);
        }
        if ((maxGeneratedLength = BuildDirector.getIntProperty((String)properties.get("generatedVersionLength"), -1)) == -1) {
            maxGeneratedLength = BuildDirector.getIntProperty(AbstractScriptGenerator.getImmutableAntProperty("generatedVersionLength"), 28);
        }
        long majorSum = 0L;
        long minorSum = 0L;
        long serviceSum = 0L;
        majorSum += 2L;
        FeatureEntry[] referencedFeatures = buildFeature.getIncludedFeatureReferences();
        FeatureEntry[] pluginList = buildFeature.getRawPluginEntries();
        int numElements = pluginList.length + referencedFeatures.length;
        if (numElements == 0) {
            return null;
        }
        String[] qualifiers = new String[numElements];
        int idx = -1;
        int i = 0;
        while (i < referencedFeatures.length) {
            BuildTimeFeature refFeature = this.getSite(false).findFeature(referencedFeatures[i].getId(), (String)null, false);
            if (refFeature == null) {
                qualifiers[++idx] = "";
            } else {
                Version version = new Version(refFeature.getVersion());
                majorSum += (long)version.getMajor();
                minorSum += (long)version.getMinor();
                serviceSum += (long)version.getMicro();
                int contextLength = refFeature.getContextQualifierLength();
                String qualifier = version.getQualifier();
                qualifiers[++idx] = qualifier.length() > ++contextLength ? qualifier.substring(contextLength) : qualifier;
            }
            ++i;
        }
        i = 0;
        while (i < pluginList.length) {
            FeatureEntry entry = pluginList[i];
            String versionRequested = entry.getVersion();
            BundleDescription model = this.getSite(false).getRegistry().getBundle(entry.getId(), versionRequested, false);
            Version version = null;
            if (model != null) {
                version = model.getVersion();
            } else {
                if (versionRequested.endsWith("qualifier")) {
                    int resultingLength = versionRequested.length() - "qualifier".length();
                    if (versionRequested.charAt(resultingLength - 1) == '.') {
                        --resultingLength;
                    }
                    versionRequested = versionRequested.substring(0, resultingLength);
                }
                version = new Version(versionRequested);
            }
            majorSum += (long)version.getMajor();
            minorSum += (long)version.getMinor();
            serviceSum += (long)version.getMicro();
            qualifiers[++idx] = version.getQualifier();
            ++i;
        }
        int longestQualifier = 0;
        int i2 = 0;
        while (i2 < numElements) {
            if (qualifiers[i2].length() > significantDigits) {
                qualifiers[i2] = qualifiers[i2].substring(0, significantDigits);
            }
            if (qualifiers[i2].length() > longestQualifier) {
                longestQualifier = qualifiers[i2].length();
            }
            ++i2;
        }
        StringBuffer result = new StringBuffer();
        result.append(BuildDirector.lengthPrefixBase64(majorSum));
        result.append(BuildDirector.lengthPrefixBase64(minorSum));
        result.append(BuildDirector.lengthPrefixBase64(serviceSum));
        if (longestQualifier > 0) {
            int[] qualifierSums = new int[longestQualifier];
            int i3 = 0;
            while (i3 < numElements) {
                int j = 0;
                while (j < qualifiers[i3].length()) {
                    int n = j;
                    qualifierSums[n] = qualifierSums[n] + Utils.qualifierCharValue(qualifiers[i3].charAt(j));
                    ++j;
                }
                ++i3;
            }
            int carry = 0;
            int k = longestQualifier - 1;
            while (k >= 1) {
                int n = k;
                qualifierSums[n] = qualifierSums[n] + carry;
                carry = qualifierSums[k] / 65;
                qualifierSums[k] = qualifierSums[k] % 65;
                --k;
            }
            qualifierSums[0] = qualifierSums[0] + carry;
            result.append(BuildDirector.lengthPrefixBase64(qualifierSums[0]));
            int m = 1;
            while (m < longestQualifier) {
                BuildDirector.appendEncodedCharacter(result, qualifierSums[m]);
                ++m;
            }
        }
        while (result.length() > 0 && result.charAt(result.length() - 1) == '-') {
            result.deleteCharAt(result.length() - 1);
        }
        if (maxGeneratedLength > result.length()) {
            return result.toString();
        }
        return result.substring(0, maxGeneratedLength);
    }

    private void generateModels(List models) throws CoreException {
        if (!this.scriptGeneration) {
            return;
        }
        if (!this.binaryFeature || models.isEmpty()) {
            return;
        }
        HashSet<BundleDescription> generatedScripts = new HashSet<BundleDescription>(models.size());
        Iterator iterator = models.iterator();
        while (iterator.hasNext()) {
            BundleDescription model = (BundleDescription)iterator.next();
            if (generatedScripts.contains(model)) continue;
            generatedScripts.add(model);
            Set matchingEntries = (Set)((Properties)model.getUserObject()).get("pluginEntry");
            if (matchingEntries == null || matchingEntries.isEmpty()) {
                return;
            }
            Iterator entryIter = matchingEntries.iterator();
            FeatureEntry correspondingEntry = (FeatureEntry)entryIter.next();
            List list = this.selectConfigs((IPlatformEntry)correspondingEntry);
            if (list.size() == 0) continue;
            ModelBuildScriptGenerator generator = new ModelBuildScriptGenerator();
            generator.setBuildSiteFactory(this.siteFactory);
            generator.setCompiledElements(this.getCompiledElements());
            generator.setIgnoreMissingPropertiesFile(this.isIgnoreMissingPropertiesFile());
            generator.setModel(model);
            generator.setFeatureGenerator(this);
            generator.setPluginPath(this.getPluginPath());
            generator.setBuildingOSGi(BuildDirector.isBuildingOSGi());
            generator.setDevEntries(this.devEntries);
            generator.includePlatformIndependent(this.isPlatformIndependentIncluded());
            generator.setSignJars(this.signJars);
            generator.setAssociatedEntry(correspondingEntry);
            generator.setGenerateSourceReferences(this.sourceReferences);
            generator.generate();
        }
    }

    public void setFeature(String featureID) throws CoreException {
        if (featureID == null) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 1, Messages.error_missingFeatureId, null));
        }
        this.featureIdentifier = featureID;
    }

    protected Properties getBuildProperties() {
        throw new UnsupportedOperationException();
    }

    protected Properties getBuildProperties(BuildTimeFeature feature) throws CoreException {
        return BuildDirector.readProperties(feature.getRootLocation(), "build.properties", this.isIgnoreMissingPropertiesFile() ? 0 : 2);
    }

    public void setGenerateIncludedFeatures(boolean recursiveGeneration) {
        this.analyseIncludedFeatures = recursiveGeneration;
    }

    protected void collectElementToAssemble(BuildTimeFeature featureToCollect) throws CoreException {
        if (this.assemblyData == null || featureToCollect == null) {
            return;
        }
        String binIncludes = this.getBuildProperties(featureToCollect).getProperty("bin.includes");
        if (featureToCollect.isBinary() || binIncludes != null && binIncludes.length() > 0) {
            this.basicCollectElementToAssemble(featureToCollect);
            return;
        }
        if (!p2Gathering) {
            return;
        }
        if (featureToCollect.getId().equals("org.eclipse.pde.build.container.feature") || featureToCollect.getId().equals("org.eclipse.pde.container.feature")) {
            return;
        }
        this.basicCollectElementToAssemble(featureToCollect);
    }

    private void basicCollectElementToAssemble(BuildTimeFeature featureToCollect) {
        if (this.assemblyData == null) {
            return;
        }
        List correctConfigs = this.selectConfigs((IPlatformEntry)featureToCollect);
        Iterator iter = correctConfigs.iterator();
        while (iter.hasNext()) {
            Config config = (Config)iter.next();
            this.assemblyData.addFeature(config, featureToCollect);
        }
    }

    public void setSourceToGather(SourceFeatureInformation sourceToGather) {
        this.sourceToGather = sourceToGather;
    }

    public void setBinaryFeatureGeneration(boolean binaryFeatureGeneration) {
        this.binaryFeature = binaryFeatureGeneration;
    }

    public void setScriptGeneration(boolean scriptGeneration) {
        this.scriptGeneration = scriptGeneration;
    }

    public void setGenerateJnlp(boolean value) {
        this.generateJnlp = value;
    }

    public void setSignJars(boolean value) {
        this.signJars = value;
    }

    public void setGenerateSourceReferences(boolean generateSourceRef) {
        this.sourceReferences = generateSourceRef;
    }

    public void setGenerateVersionSuffix(boolean value) {
        this.generateVersionSuffix = value;
    }

    public void setProduct(String product) {
        this.product = product;
    }

    protected void collectElementToAssemble(FeatureEntry entryToCollect) throws CoreException {
        if (this.assemblyData == null) {
            return;
        }
        List correctConfigs = this.selectConfigs((IPlatformEntry)entryToCollect);
        String versionRequested = entryToCollect.getVersion();
        BundleDescription effectivePlugin = null;
        effectivePlugin = this.getSite(false).getRegistry().getResolvedBundle(entryToCollect.getId(), versionRequested);
        Iterator iter = correctConfigs.iterator();
        while (iter.hasNext()) {
            this.assemblyData.addPlugin((Config)iter.next(), effectivePlugin);
        }
    }

    public String getProduct() {
        return this.product;
    }

    public boolean getSignJars() {
        return this.signJars;
    }

    public boolean getGenerateJnlp() {
        return this.generateJnlp;
    }

    public AssemblyInformation getAssemblyData() {
        return this.assemblyData;
    }

    public boolean useWorkspaceBinaries() {
        return this.workspaceBinaries;
    }

    public void setUseWorkspaceBinaries(boolean workspaceBinaries) {
        this.workspaceBinaries = workspaceBinaries;
    }
}

