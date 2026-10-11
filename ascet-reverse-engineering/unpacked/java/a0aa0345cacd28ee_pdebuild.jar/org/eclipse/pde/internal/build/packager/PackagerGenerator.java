/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.build.packager;

import java.util.List;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.internal.build.AssemblyInformation;
import org.eclipse.pde.internal.build.BuildScriptGenerator;
import org.eclipse.pde.internal.build.Utils;
import org.eclipse.pde.internal.build.packager.DeltaPackScriptGenerator;
import org.eclipse.pde.internal.build.packager.PackageScriptGenerator;
import org.eclipse.pde.internal.build.site.BuildTimeSiteFactory;

public class PackagerGenerator
extends BuildScriptGenerator {
    private String featureList = null;
    private String propertyFile;
    private boolean groupConfigs;

    public PackagerGenerator() {
        this.generateBuildScript = false;
        this.children = true;
        this.groupConfigs = false;
    }

    public void setFeatureList(String features) {
        this.featureList = features;
    }

    protected void sortElements(List features, List plugins) {
        String[] allFeatures = Utils.getArrayFromString(this.featureList);
        int i = 0;
        while (i < allFeatures.length) {
            features.add(allFeatures[i]);
            ++i;
        }
    }

    protected void generatePackageScripts(AssemblyInformation assemblageInformation, String[] featureInfo, BuildTimeSiteFactory factory) throws CoreException {
        PackageScriptGenerator assembler = null;
        assembler = this.groupConfigs ? new DeltaPackScriptGenerator(workingDirectory, assemblageInformation, featureInfo[0]) : new PackageScriptGenerator(workingDirectory, assemblageInformation, featureInfo[0]);
        assembler.setSignJars(this.signJars);
        assembler.setGenerateJnlp(this.generateJnlp);
        assembler.setArchivesFormat(this.getArchivesFormat());
        assembler.setPropertyFile(this.propertyFile);
        assembler.setBackwardCompatibleName(true);
        assembler.setBuildSiteFactory(factory);
        assembler.setProduct(this.product);
        assembler.setProductQualifier(this.productQualifier);
        assembler.setVersionsList(this.generateVersionsList);
        assembler.generate();
    }

    public void setPropertyFile(String propertyFile) {
        this.propertyFile = propertyFile;
    }

    public void groupConfigs(boolean value) {
        this.groupConfigs = value;
    }
}

