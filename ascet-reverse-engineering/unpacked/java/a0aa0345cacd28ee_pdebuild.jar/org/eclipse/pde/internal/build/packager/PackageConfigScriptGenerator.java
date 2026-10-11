/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.pde.internal.build.packager;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Properties;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.build.AbstractScriptGenerator;
import org.eclipse.pde.internal.build.AssembleConfigScriptGenerator;
import org.eclipse.pde.internal.build.Config;
import org.eclipse.pde.internal.build.Messages;
import org.eclipse.pde.internal.build.Utils;
import org.eclipse.pde.internal.build.ant.FileSet;
import org.eclipse.pde.internal.build.builder.BuildDirector;
import org.eclipse.pde.internal.build.builder.ModelBuildScriptGenerator;
import org.eclipse.pde.internal.build.site.BuildTimeFeature;

public class PackageConfigScriptGenerator
extends AssembleConfigScriptGenerator {
    private Properties packagingProperties;
    private Collection archiveRootProviders = Collections.EMPTY_LIST;

    public void initialize(String directoryName, String feature, Config configurationInformation, Collection elementList, Collection featureList, Collection allFeaturesList, Collection rootProviders) throws CoreException {
        super.initialize(directoryName, feature, configurationInformation, elementList, featureList, allFeaturesList, new ArrayList(0));
        this.archiveRootProviders = rootProviders != null ? rootProviders : Collections.EMPTY_LIST;
    }

    protected Collection getArchiveRootFileProviders() {
        if (this.archiveRootProviders.size() > 0) {
            return this.archiveRootProviders;
        }
        return super.getArchiveRootFileProviders();
    }

    private String getFinalName(BundleDescription bundle, String shape) {
        if (!AbstractScriptGenerator.getPropertyAsBoolean("packagerAsNormalizer")) {
            Path path = new Path(bundle.getLocation());
            if (shape.equals("file") && !"jar".equalsIgnoreCase(path.getFileExtension())) {
                return path.lastSegment().concat(".jar");
            }
            return path.lastSegment();
        }
        if (shape.equals("file")) {
            return String.valueOf(ModelBuildScriptGenerator.getNormalizedName(bundle)) + ".jar";
        }
        return ModelBuildScriptGenerator.getNormalizedName(bundle);
    }

    private String getFinalName(BuildTimeFeature feature) {
        if (!AbstractScriptGenerator.getPropertyAsBoolean("packagerAsNormalizer")) {
            Path featurePath = new Path(feature.getURL().getPath());
            return featurePath.segment(featurePath.segmentCount() - 2);
        }
        return String.valueOf(feature.getId()) + "_" + feature.getVersion();
    }

    protected void generateGatherBinPartsTarget() {
        String location;
        this.script.printTargetDeclaration("gather.bin.parts", null, null, null, null);
        String excludedFiles = null;
        if (AbstractScriptGenerator.getPropertyAsBoolean("packagerAsNormalizer")) {
            excludedFiles = "build.properties, .project, .classpath";
        }
        Path baseLocation = null;
        try {
            String url = this.getSite(false).getSiteContentProvider().getInstalledBaseURL();
            if (url != null) {
                baseLocation = new Path(url);
            }
        }
        catch (CoreException coreException) {}
        ArrayList<FileSet> p2Features = BuildDirector.p2Gathering ? new ArrayList<FileSet>() : null;
        ArrayList<FileSet> p2Bundles = BuildDirector.p2Gathering ? new ArrayList<FileSet>() : null;
        int i = 0;
        while (i < this.plugins.length) {
            Path pluginLocation = new Path(this.plugins[i].getLocation());
            location = pluginLocation.toOSString();
            boolean isFolder = this.isFolder(pluginLocation);
            if (baseLocation != null && baseLocation.isPrefixOf((IPath)pluginLocation)) {
                IPath relative = pluginLocation.removeFirstSegments(baseLocation.segmentCount());
                location = new Path(Utils.getPropertyFormat("baseLocation")).append(relative).toOSString();
            }
            if (BuildDirector.p2Gathering) {
                p2Bundles.add(new FileSet(pluginLocation.removeLastSegments(1).toOSString(), null, pluginLocation.lastSegment(), null, null, null, null));
            } else if (isFolder) {
                this.script.printCopyTask(null, String.valueOf(Utils.getPropertyFormat(this.PROPERTY_ECLIPSE_PLUGINS)) + '/' + this.getFinalName(this.plugins[i], "folder"), new FileSet[]{new FileSet(location, null, null, null, excludedFiles, null, null)}, false, false);
            } else {
                this.script.printCopyFileTask(location, String.valueOf(Utils.getPropertyFormat(this.PROPERTY_ECLIPSE_PLUGINS)) + '/' + this.getFinalName(this.plugins[i], "file"), false);
            }
            ++i;
        }
        i = 0;
        while (i < this.features.length) {
            Path featureLocation = new Path(this.features[i].getRootLocation());
            location = featureLocation.toOSString();
            if (baseLocation != null && baseLocation.isPrefixOf((IPath)featureLocation)) {
                IPath relative = featureLocation.removeFirstSegments(baseLocation.segmentCount());
                location = new Path(Utils.getPropertyFormat("baseLocation")).append(relative).toOSString();
            }
            if (BuildDirector.p2Gathering) {
                p2Features.add(new FileSet(featureLocation.removeLastSegments(1).toOSString(), null, featureLocation.lastSegment(), null, null, null, null));
            } else {
                this.script.printCopyTask(null, String.valueOf(Utils.getPropertyFormat(this.PROPERTY_ECLIPSE_FEATURES)) + '/' + this.getFinalName(this.features[i]), new FileSet[]{new FileSet(location, null, null, null, null, null, null)}, false, false);
            }
            ++i;
        }
        if (BuildDirector.p2Gathering) {
            String repo = "file:" + PackageConfigScriptGenerator.getWorkingDirectory() + "/buildRepo";
            this.script.printP2PublishFeaturesAndBundles(repo, repo, p2Bundles.toArray(new FileSet[p2Bundles.size()]), p2Features.toArray(new FileSet[p2Features.size()]), Utils.getPropertyFormat("p2.category.site"), Utils.getPropertyFormat("p2.category.prefix"), Utils.getPropertyFormat("p2.category.definition"), Utils.getPropertyFormat("p2.category.version"), this.contextMetadata);
        }
        if (this.packagingProperties.size() != 0) {
            String tmp;
            String filesToPackage = null;
            filesToPackage = this.packagingProperties.getProperty("root", null);
            if (filesToPackage != null) {
                filesToPackage = String.valueOf(filesToPackage) + ',';
            }
            if ((tmp = this.packagingProperties.getProperty("root." + this.configInfo.toString("."), null)) != null) {
                filesToPackage = String.valueOf(filesToPackage) + tmp;
            }
            if (filesToPackage == null) {
                filesToPackage = "**/**";
            }
            FileSet rootFiles = new FileSet(String.valueOf(Utils.getPropertyFormat("tempDirectory")) + '/' + this.configInfo.toStringReplacingAny(".", "ANY") + "/eclipse", null, filesToPackage, null, null, null, null);
            String target = String.valueOf(Utils.getPropertyFormat("eclipse.base")) + '/' + this.configInfo.toStringReplacingAny(".", "ANY") + '/' + Utils.getPropertyFormat("collectingFolder");
            this.script.printCopyTask(null, target, new FileSet[]{rootFiles}, false, false);
            Utils.generatePermissions(this.packagingProperties, this.configInfo, "eclipse.base", this.script);
        }
        this.script.printTargetEnd();
        this.script.println();
    }

    public String getTargetName() {
        String config = this.getTargetConfig();
        return "package." + this.getTargetElement() + (config.length() > 0 ? "." : "") + config;
    }

    private boolean isFolder(Path pluginLocation) {
        return pluginLocation.toFile().isDirectory();
    }

    public void setPackagingPropertiesLocation(String packagingPropertiesLocation) throws CoreException {
        this.packagingProperties = new Properties();
        if (packagingPropertiesLocation == null || packagingPropertiesLocation.equals("")) {
            return;
        }
        BufferedInputStream propertyStream = null;
        try {
            propertyStream = new BufferedInputStream(new FileInputStream(packagingPropertiesLocation));
            try {
                this.packagingProperties.load(propertyStream);
            }
            finally {
                ((InputStream)propertyStream).close();
            }
        }
        catch (FileNotFoundException e) {
            String message = NLS.bind((String)Messages.exception_readingFile, (Object)packagingPropertiesLocation);
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 10, message, (Throwable)e));
        }
        catch (IOException e) {
            String message = NLS.bind((String)Messages.exception_readingFile, (Object)packagingPropertiesLocation);
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 10, message, (Throwable)e));
        }
        if (this.packagingProperties.size() > 0) {
            if (this.rootFileProviders == null) {
                this.rootFileProviders = new ArrayList(1);
            }
            this.rootFileProviders.add("elt");
        }
    }

    protected void generateGatherSourceTarget() {
        this.script.printTargetDeclaration("gather.sources", null, null, null, null);
        this.script.printTargetEnd();
        this.script.println();
    }

    protected FileSet[] generatePermissions(String root, boolean zip) {
        if (this.packagingProperties != null && this.packagingProperties.size() > 0) {
            return new FileSet[0];
        }
        return super.generatePermissions(root, zip);
    }

    protected void generateGZipTarget(boolean assembling) {
        super.generateGZipTarget(false);
    }

    public void generateTarGZTasks(boolean assembling) {
        super.generateTarGZTasks(false);
    }

    protected void generateDirectorTarget(boolean assembling) {
        super.generateDirectorTarget(false);
    }

    protected void generateMirrorTask(boolean assembling) {
        super.generateMirrorTask(false);
    }

    protected void generateCleanupAssembly(boolean assembling) {
        super.generateCleanupAssembly(false);
    }

    protected void generateArchivingTarget(boolean assembling) {
        super.generateArchivingTarget(false);
    }

    protected Object[] getFinalShape(BundleDescription bundle) {
        if (AbstractScriptGenerator.getPropertyAsBoolean("packagerMode")) {
            String shape = this.isFolder(new Path(bundle.getLocation())) ? "folder" : "file";
            return new Object[]{this.getFinalName(bundle, shape), shape};
        }
        return this.shapeAdvisor.getFinalShape(bundle);
    }

    protected Object[] getFinalShape(BuildTimeFeature feature) {
        if (AbstractScriptGenerator.getPropertyAsBoolean("packagerMode")) {
            return new Object[]{this.getFinalName(feature), "folder"};
        }
        return this.shapeAdvisor.getFinalShape(feature);
    }

    protected void printP2GenerationModeCondition() {
        this.script.printConditionIsSet("p2.generation.mode", "final", "p2.final.mode.override", "incremental");
    }
}

