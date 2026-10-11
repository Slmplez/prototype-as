/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.pde.internal.build.packager;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Collection;
import java.util.HashSet;
import java.util.Properties;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.build.AssembleConfigScriptGenerator;
import org.eclipse.pde.internal.build.AssembleScriptGenerator;
import org.eclipse.pde.internal.build.AssemblyInformation;
import org.eclipse.pde.internal.build.Config;
import org.eclipse.pde.internal.build.Messages;
import org.eclipse.pde.internal.build.ProductFile;
import org.eclipse.pde.internal.build.Utils;
import org.eclipse.pde.internal.build.ant.AntScript;
import org.eclipse.pde.internal.build.builder.BuildDirector;
import org.eclipse.pde.internal.build.packager.PackageConfigScriptGenerator;

public class PackageScriptGenerator
extends AssembleScriptGenerator {
    private String packagingPropertiesLocation;
    private boolean backwardCompatibleName = false;

    public PackageScriptGenerator(String directory, AssemblyInformation assemblageInformation, String featureId) {
        super(directory, assemblageInformation, featureId);
    }

    protected void printProjectDeclaration() {
        this.script.printProjectDeclaration("Package all config of " + this.featureId, "main", null);
    }

    protected AssembleConfigScriptGenerator getConfigScriptGenerator() {
        return new PackageConfigScriptGenerator();
    }

    protected String getScriptName() {
        if (this.backwardCompatibleName) {
            return "package.all.xml";
        }
        return "package." + (this.featureId.equals("") ? "" : String.valueOf(this.featureId) + '.') + "all.xml";
    }

    public void setPropertyFile(String propertyFile) {
        this.packagingPropertiesLocation = propertyFile;
    }

    protected Collection[] getConfigInfos(Config aConfig) {
        return new Collection[]{this.assemblageInformation.getBinaryPlugins(aConfig), this.assemblageInformation.getBinaryFeatures(aConfig), this.assemblageInformation.getFeatures(aConfig), BuildDirector.p2Gathering ? this.assemblageInformation.getRootFileProviders(aConfig) : new HashSet(0)};
    }

    protected void generateP2ConfigFileTargetCall() {
    }

    protected void basicGenerateAssembleConfigFileTargetCall(Config aConfig, Collection binaryPlugins, Collection binaryFeatures, Collection allFeatures, Collection rootFiles) throws CoreException {
        this.configScriptGenerator.initialize(this.directory, this.featureId, aConfig, binaryPlugins, binaryFeatures, allFeatures, rootFiles);
        ((PackageConfigScriptGenerator)this.configScriptGenerator).setPackagingPropertiesLocation(this.packagingPropertiesLocation);
        this.configScriptGenerator.setArchiveFormat((String)this.archivesFormat.get(aConfig));
        this.configScriptGenerator.setGroupConfigs(this.groupConfigs || BuildDirector.p2Gathering);
        PackageScriptGenerator.setForceUpdateJar(forceUpdateJarFormat);
        this.configScriptGenerator.setBuildSiteFactory(this.siteFactory);
        this.configScriptGenerator.setProductQualifier(this.productQualifier);
        this.configScriptGenerator.generate();
        this.script.printTab();
        this.script.print("<assemble ");
        String config = this.configScriptGenerator.getTargetConfig();
        this.script.printAttribute("config", config, true);
        this.script.printAttribute("element", this.configScriptGenerator.getTargetElement(), true);
        this.script.printAttribute("dot", config.length() > 0 ? "." : "", true);
        this.script.printAttribute("scriptPrefix", "package", true);
        this.script.println("/>");
    }

    public void setBackwardCompatibleName(boolean value) {
        this.backwardCompatibleName = value;
    }

    protected void printDefaultAssembleCondition() {
        if (this.backwardCompatibleName) {
            this.script.printConditionIsSet("defaultAssemble.@{config}", "defaultAssemble", "defaultAssemblyEnabled", "assemble@{dot}@{config}.xml");
        } else {
            this.script.printConditionIsSet("defaultAssemble.@{config}", "defaultAssemble", "defaultAssemblyEnabled", "assemble.@{element}@{dot}@{config}");
        }
    }

    protected void generateMetadataTarget() {
        if (this.configScriptGenerator.haveP2Bundles()) {
            this.script.printTargetDeclaration("generate.p2.metadata", null, "generate.p2.metadata", null, null);
            ProductFile product = this.configScriptGenerator.getProductFile();
            String productPath = null;
            if (product != null) {
                File productFile = new File(product.getLocation());
                String modLocation = String.valueOf(this.getProductDir()) + productFile.getName();
                this.script.printAvailableTask("p2.generation.product.mod", modLocation, modLocation);
                this.script.printProperty("p2.generation.product.mod", product.getLocation());
                productPath = Utils.getPropertyFormat("p2.generation.product.mod");
            }
            this.script.printProperty("p2.append", "true");
            this.script.printProperty("p2.compress", "false");
            this.script.printProperty("p2.metadata.repo.name", "");
            this.script.printProperty("p2.artifact.repo.name", "");
            String versionAdvice = null;
            if (this.versionsList && product != null) {
                versionAdvice = product.useFeatures() ? String.valueOf(PackageScriptGenerator.getWorkingDirectory()) + '/' + "finalFeaturesVersions" + ".properties" : String.valueOf(PackageScriptGenerator.getWorkingDirectory()) + '/' + "finalPluginsVersions" + ".properties";
            }
            PackageScriptGenerator.generateP2FinalCall(this.script, productPath, versionAdvice);
            this.script.printTargetEnd();
        }
    }

    private static void generateP2FinalCall(AntScript script, String productFileLocation, String versionAdvice) {
        script.printTab();
        script.print("<p2.generator ");
        script.printAttribute("append", Utils.getPropertyFormat("p2.append"), true);
        script.printAttribute("flavor", Utils.getPropertyFormat("p2.flavor"), true);
        script.printAttribute("compress", Utils.getPropertyFormat("p2.compress"), true);
        script.printAttribute("metadataRepository", Utils.getPropertyFormat("p2.metadata.repo"), true);
        script.printAttribute("artifactRepository", Utils.getPropertyFormat("p2.artifact.repo"), true);
        script.printAttribute("metadataRepositoryName", Utils.getPropertyFormat("p2.metadata.repo.name"), true);
        script.printAttribute("artifactRepositoryName", Utils.getPropertyFormat("p2.artifact.repo.name"), true);
        script.printAttribute("publishArtifacts", Utils.getPropertyFormat("p2.publish.artifacts"), true);
        script.printAttribute("mode", "final", true);
        if (productFileLocation != null) {
            script.printAttribute("productFile", productFileLocation, true);
            if (versionAdvice != null) {
                script.printAttribute("versionAdvice", versionAdvice, true);
            }
        } else {
            script.printAttribute("root", Utils.getPropertyFormat("p2.root.name"), true);
            script.printAttribute("rootVersion", Utils.getPropertyFormat("p2.root.version"), true);
        }
        script.println("/>");
    }

    public static String generateP2ProductScript(String workingDir, String productFileLocation, Properties versionAdvice) throws CoreException {
        if (!PackageScriptGenerator.loadP2Class()) {
            return null;
        }
        File working = new File(workingDir);
        working.mkdirs();
        File adviceFile = null;
        if (versionAdvice != null) {
            adviceFile = new File(working, "versionAdvice.properties");
            try {
                BufferedOutputStream os = new BufferedOutputStream(new FileOutputStream(adviceFile));
                try {
                    versionAdvice.store(os, null);
                }
                finally {
                    ((OutputStream)os).close();
                }
            }
            catch (IOException e) {
                String message = NLS.bind((String)Messages.exception_writingFile, (Object)adviceFile.toString());
                throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 12, message, (Throwable)e));
            }
        }
        AntScript p2Script = null;
        try {
            p2Script = PackageScriptGenerator.newAntScript(workingDir, "p2product.xml");
            p2Script.printProjectDeclaration("P2 Product IU Generation", "main", ".");
            p2Script.println();
            p2Script.printProperty("p2.append", "true");
            p2Script.printProperty("p2.compress", "false");
            p2Script.printProperty("p2.metadata.repo.name", "");
            p2Script.printProperty("p2.artifact.repo.name", "");
            p2Script.printTargetDeclaration("main", null, "generate.p2.metadata", null, "Generate the final Product IU");
            PackageScriptGenerator.generateP2FinalCall(p2Script, productFileLocation, adviceFile != null ? adviceFile.getAbsolutePath() : null);
            p2Script.printTargetEnd();
            p2Script.printProjectEnd();
        }
        finally {
            if (p2Script != null) {
                p2Script.close();
            }
        }
        return String.valueOf(workingDir) + "/p2product.xml";
    }
}

