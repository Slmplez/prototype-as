/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.build;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Properties;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.internal.build.AbstractScriptGenerator;
import org.eclipse.pde.internal.build.AssembleConfigScriptGenerator;
import org.eclipse.pde.internal.build.AssemblyInformation;
import org.eclipse.pde.internal.build.Config;
import org.eclipse.pde.internal.build.P2ConfigScriptGenerator;
import org.eclipse.pde.internal.build.ProductFile;
import org.eclipse.pde.internal.build.Utils;
import org.eclipse.pde.internal.build.builder.BuildDirector;

public class AssembleScriptGenerator
extends AbstractScriptGenerator {
    protected String directory;
    protected AssemblyInformation assemblageInformation;
    protected String featureId;
    protected HashMap archivesFormat;
    protected boolean groupConfigs = false;
    protected boolean versionsList = false;
    protected String productLocation = null;
    protected AssembleConfigScriptGenerator configScriptGenerator;

    public AssembleScriptGenerator(String directory, AssemblyInformation assemblageInformation, String featureId) {
        this.directory = directory;
        this.assemblageInformation = assemblageInformation;
        this.featureId = featureId;
        this.configScriptGenerator = this.getConfigScriptGenerator();
    }

    protected String getScriptName() {
        return "assemble." + (this.featureId.equals("") ? "" : String.valueOf(this.featureId) + '.') + "all.xml";
    }

    protected String getProductDir() {
        return String.valueOf(Utils.getPropertyFormat("buildDirectory")) + '/' + "features" + '/' + "org.eclipse.pde.build.container.feature" + "/product/";
    }

    protected AssembleConfigScriptGenerator getConfigScriptGenerator() {
        return new AssembleConfigScriptGenerator();
    }

    public void generate() throws CoreException {
        this.configScriptGenerator.setBuildSiteFactory(this.siteFactory);
        try {
            this.openScript(this.directory, this.getScriptName());
            this.printProjectDeclaration();
            this.printAssembleMacroDef();
            this.generatePrologue();
            this.generateMainTarget();
            this.generateReplaceProductTarget();
            this.generateMetadataTarget();
            this.script.printProjectEnd();
        }
        finally {
            if (this.script != null) {
                this.script.close();
            }
            this.script = null;
        }
    }

    protected void printProjectDeclaration() {
        this.script.printProjectDeclaration("Assemble All Config of " + this.featureId, "main", null);
    }

    protected void generatePrologue() {
        if (this.productQualifier != null) {
            this.script.printProperty("p2.product.qualifier", this.productQualifier);
        }
        this.script.println();
    }

    protected void printDefaultAssembleCondition() {
        this.script.printConditionIsSet("defaultAssemble.@{config}", "defaultAssemble", "defaultAssemblyEnabled", "assemble.@{element}@{dot}@{config}");
    }

    protected void printAssembleMacroDef() {
        ArrayList<String> attributes = new ArrayList<String>(2);
        attributes.add("config");
        attributes.add("element");
        attributes.add("dot");
        attributes.add("scriptPrefix");
        this.script.printMacroDef("assemble", attributes);
        this.printDefaultAssembleCondition();
        this.script.printConditionIsSet("customOrDefault.@{config}", "assemble.@{element}@{dot}@{config}", "assemble.@{element}@{dot}@{config}", "${defaultAssemble.@{config}}");
        Properties properties = new Properties();
        properties.put("assembleScriptName", "@{scriptPrefix}.@{element}@{dot}@{config}.xml");
        properties.put("element", "@{element}");
        properties.put("config", "@{config}");
        this.script.printAntTask(Utils.getPropertyFormat("customTargets"), null, "${customOrDefault.@{config}}", null, null, properties);
        this.script.printEndMacroDef();
    }

    protected void generateMainTarget() throws CoreException {
        this.script.printTargetDeclaration("main", null, null, null, null);
        if (BuildDirector.p2Gathering) {
            this.generateP2ConfigFileTargetCall();
        } else if (this.configScriptGenerator.getProductFile() != null && this.configScriptGenerator.haveP2Bundles()) {
            this.script.printAntCallTask("replace.p2.product", true, null);
        }
        if (this.shouldGroupConfigs()) {
            LinkedHashSet allPlugins = new LinkedHashSet();
            LinkedHashSet allFeatures = new LinkedHashSet();
            LinkedHashSet features = new LinkedHashSet();
            LinkedHashSet rootFiles = new LinkedHashSet();
            Iterator allConfigs = AssembleScriptGenerator.getConfigInfos().iterator();
            while (allConfigs.hasNext()) {
                Collection[] configInfo = this.getConfigInfos((Config)allConfigs.next());
                allPlugins.addAll(configInfo[0]);
                allFeatures.addAll(configInfo[1]);
                features.addAll(configInfo[2]);
                rootFiles.addAll(configInfo[3]);
            }
            this.basicGenerateAssembleConfigFileTargetCall(new Config("group", "group", "group"), allPlugins, allFeatures, features, rootFiles);
        } else {
            Iterator allConfigs = AssembleScriptGenerator.getConfigInfos().iterator();
            while (allConfigs.hasNext()) {
                Config current = (Config)allConfigs.next();
                Collection[] configInfo = this.getConfigInfos(current);
                this.basicGenerateAssembleConfigFileTargetCall(current, configInfo[0], configInfo[1], configInfo[2], configInfo[3]);
            }
        }
        if (this.configScriptGenerator.haveP2Bundles() && !BuildDirector.p2Gathering) {
            this.script.printAntCallTask("generate.p2.metadata", true, null);
        }
        this.script.printTargetEnd();
    }

    protected boolean shouldGroupConfigs() {
        if (!BuildDirector.p2Gathering) {
            return this.groupConfigs;
        }
        return this.configScriptGenerator.getProductFile() == null;
    }

    protected Collection[] getConfigInfos(Config aConfig) {
        return new Collection[]{this.assemblageInformation.getCompiledPlugins(aConfig), this.assemblageInformation.getCompiledFeatures(aConfig), this.assemblageInformation.getFeatures(aConfig), this.assemblageInformation.getRootFileProviders(aConfig)};
    }

    protected void generateP2ConfigFileTargetCall() {
        P2ConfigScriptGenerator p2ConfigGenerator = new P2ConfigScriptGenerator(this.assemblageInformation, true);
        p2ConfigGenerator.setProduct(this.productLocation);
        p2ConfigGenerator.setBuildSiteFactory(this.siteFactory);
        p2ConfigGenerator.initialize(this.directory, this.featureId);
        p2ConfigGenerator.setSignJars(this.configScriptGenerator.isSigning());
        p2ConfigGenerator.setVersionsList(this.versionsList);
        p2ConfigGenerator.setContextMetadata(this.contextMetadata);
        p2ConfigGenerator.setContextArtifacts(this.contextArtifacts);
        p2ConfigGenerator.setProductQualifier(this.productQualifier);
        p2ConfigGenerator.generate();
        this.script.printTab();
        this.script.print("<assemble ");
        this.script.printAttribute("config", "p2", true);
        this.script.printAttribute("element", p2ConfigGenerator.getTargetElement(), true);
        this.script.printAttribute("dot", ".", true);
        this.script.printAttribute("scriptPrefix", "assemble", true);
        this.script.println("/>");
    }

    protected void basicGenerateAssembleConfigFileTargetCall(Config aConfig, Collection binaryPlugins, Collection binaryFeatures, Collection allFeatures, Collection rootFiles) throws CoreException {
        this.configScriptGenerator.initialize(this.directory, this.featureId, aConfig, binaryPlugins, binaryFeatures, allFeatures, rootFiles);
        this.configScriptGenerator.setArchiveFormat((String)this.archivesFormat.get(aConfig));
        this.configScriptGenerator.setBuildSiteFactory(this.siteFactory);
        this.configScriptGenerator.setGroupConfigs(this.groupConfigs);
        this.configScriptGenerator.setProductQualifier(this.productQualifier);
        this.configScriptGenerator.generate();
        this.script.printTab();
        this.script.print("<assemble ");
        String config = this.configScriptGenerator.getTargetConfig();
        this.script.printAttribute("config", config, true);
        this.script.printAttribute("element", this.configScriptGenerator.getTargetElement(), true);
        this.script.printAttribute("dot", config.length() > 0 ? "." : "", true);
        this.script.printAttribute("scriptPrefix", "assemble", true);
        this.script.println("/>");
    }

    protected void generateReplaceProductTarget() {
        ProductFile product = this.configScriptGenerator.getProductFile();
        if (product != null) {
            String productPath = product.getLocation();
            File productFile = new File(productPath);
            String newProduct = String.valueOf(this.getProductDir()) + productFile.getName();
            File p2Inf = new File(productFile.getParentFile(), "p2.inf");
            this.script.printTargetDeclaration("replace.p2.product", null, null, null, null);
            this.script.printCopyFileTask(productPath, newProduct, true);
            if (p2Inf.exists()) {
                this.script.printCopyTask(p2Inf.getAbsolutePath(), this.getProductDir(), null, false, true);
            }
            this.generateProductReplaceTask(product, newProduct, this.assemblageInformation);
            this.script.printTargetEnd();
            this.script.println();
        }
    }

    protected void generateMetadataTarget() {
        if (BuildDirector.p2Gathering) {
            return;
        }
        if (this.configScriptGenerator.haveP2Bundles()) {
            ProductFile product = this.configScriptGenerator.getProductFile();
            this.script.printTargetDeclaration("generate.p2.metadata", null, "generate.p2.metadata", "runPackager", null);
            this.script.printConditionIsSet("mode", "incremental", "runPackager", "final");
            this.script.printProperty("p2.append", "true");
            this.script.printProperty("p2.metadata.repo.name", "");
            this.script.printProperty("p2.artifact.repo.name", "");
            if (product != null) {
                File productFile = new File(product.getLocation());
                String modLocation = String.valueOf(this.getProductDir()) + productFile.getName();
                this.script.printAvailableTask("p2.generation.product.mod", modLocation, modLocation);
                this.script.printProperty("p2.generation.product.mod", product.getLocation());
            }
            this.script.printTab();
            this.script.print("<p2.generator ");
            this.script.printAttribute("append", Utils.getPropertyFormat("p2.append"), true);
            this.script.printAttribute("flavor", Utils.getPropertyFormat("p2.flavor"), true);
            this.script.printAttribute("metadataRepository", Utils.getPropertyFormat("p2.metadata.repo"), true);
            this.script.printAttribute("artifactRepository", Utils.getPropertyFormat("p2.artifact.repo"), true);
            this.script.printAttribute("metadataRepositoryName", Utils.getPropertyFormat("p2.metadata.repo.name"), true);
            this.script.printAttribute("artifactRepositoryName", Utils.getPropertyFormat("p2.artifact.repo.name"), true);
            this.script.printAttribute("publishArtifacts", Utils.getPropertyFormat("p2.publish.artifacts"), true);
            this.script.printAttribute("mode", "${mode}", true);
            if (product != null) {
                this.script.printAttribute("productFile", Utils.getPropertyFormat("p2.generation.product.mod"), true);
                if (this.versionsList) {
                    if (product.useFeatures()) {
                        this.script.printAttribute("versionAdvice", String.valueOf(AssembleScriptGenerator.getWorkingDirectory()) + '/' + "finalFeaturesVersions" + ".properties", true);
                    } else {
                        this.script.printAttribute("versionAdvice", String.valueOf(AssembleScriptGenerator.getWorkingDirectory()) + '/' + "finalPluginsVersions" + ".properties", true);
                    }
                }
            } else {
                this.script.printAttribute("root", Utils.getPropertyFormat("p2.root.name"), true);
                this.script.printAttribute("rootVersion", Utils.getPropertyFormat("p2.root.version"), true);
            }
            this.script.println("/>");
            this.script.printTargetEnd();
        }
    }

    public void setSignJars(boolean value) {
        this.configScriptGenerator.setSignJars(value);
    }

    public void setProduct(String value) {
        this.productLocation = value;
        this.configScriptGenerator.setProduct(value);
    }

    public void setGenerateJnlp(boolean value) {
        this.configScriptGenerator.setGenerateJnlp(value);
    }

    public void setArchivesFormat(HashMap outputFormat) {
        this.archivesFormat = outputFormat;
    }

    public void setGroupConfigs(boolean group) {
        this.groupConfigs = group;
    }

    public void setVersionsList(boolean versionsList) {
        this.versionsList = versionsList;
    }
}

