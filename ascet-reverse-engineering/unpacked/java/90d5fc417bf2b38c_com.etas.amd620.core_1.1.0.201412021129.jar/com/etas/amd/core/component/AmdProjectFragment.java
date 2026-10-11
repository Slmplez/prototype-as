/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd.core.component;

import com.etas.amd620.core.ComponentProject.BuildConfigurationType;
import com.etas.amd620.core.ComponentProject.CodeGeneratorT;
import com.etas.amd620.core.ComponentProject.CodeGeneratorType;
import com.etas.amd620.core.ComponentProject.CompilerType;
import com.etas.amd620.core.ComponentProject.ComponentProjectFactory;
import com.etas.amd620.core.ComponentProject.DataConfigurationType;
import com.etas.amd620.core.ComponentProject.DocumentRoot;
import com.etas.amd620.core.ComponentProject.FileReferenceT;
import com.etas.amd620.core.ComponentProject.ImplementationConfigurationType;
import com.etas.amd620.core.ComponentProject.ModelConfigurationT;
import com.etas.amd620.core.ComponentProject.OperatingSystemType;
import com.etas.amd620.core.ComponentProject.OsLogicType;
import com.etas.amd620.core.ComponentProject.PlatformType;
import com.etas.amd620.core.ComponentProject.ProjectType;
import com.etas.amd620.core.ComponentProject.TargetType1;
import com.etas.amd620.core.ComponentProject.TypeType;

public class AmdProjectFragment {
    private ProjectType projectT = ComponentProjectFactory.eINSTANCE.createProjectType();

    public AmdProjectFragment(String asdOSID) {
        this.projectT.setToolVersion("V6.2.0");
        this.projectT.setSchemaVersion("6.2.0.1");
        ImplementationConfigurationType implConfiguration = ComponentProjectFactory.eINSTANCE.createImplementationConfigurationType();
        implConfiguration.setImplementationSetName("Impl");
        this.projectT.setImplementationConfiguration(implConfiguration);
        DataConfigurationType dataConfig = ComponentProjectFactory.eINSTANCE.createDataConfigurationType();
        dataConfig.setDataSetName("Data");
        this.projectT.setDataConfiguration(dataConfig);
        OsLogicType osLogic = ComponentProjectFactory.eINSTANCE.createOsLogicType();
        this.projectT.setOsLogic(osLogic);
        ModelConfigurationT modelConfig = ComponentProjectFactory.eINSTANCE.createModelConfigurationT();
        this.projectT.setModelConfiguration(modelConfig);
        BuildConfigurationType buildConfig = ComponentProjectFactory.eINSTANCE.createBuildConfigurationType();
        buildConfig.setBuildConfigKey("default");
        buildConfig.setPlatform(AmdProjectFragment.createPlatformConfig("G_ANSI", "G_ANSI", "MS_Visual_CPP_2008", asdOSID));
        buildConfig.setBuildSettings(ComponentProjectFactory.eINSTANCE.createBuildSettingsType());
        this.projectT.setBuildConfiguration(buildConfig);
    }

    public void updateProjectConfigWithFormula(String fileName) {
        FileReferenceT fileRef = ComponentProjectFactory.eINSTANCE.createFileReferenceT();
        fileRef.setType(TypeType.FORMULA);
        fileRef.setValue(fileName);
        this.projectT.getModelConfiguration().setFormulasFile(fileRef);
    }

    public DocumentRoot getDocumentRoot() {
        DocumentRoot root = ComponentProjectFactory.eINSTANCE.createDocumentRoot();
        root.setProject(this.projectT);
        return root;
    }

    private static PlatformType createPlatformConfig(String targetName, String targetKey, String compilerName, String osKey) {
        PlatformType platformConfig = ComponentProjectFactory.eINSTANCE.createPlatformType();
        platformConfig.setPlatformKey(String.valueOf(targetKey) + "_" + compilerName + "_" + osKey);
        TargetType1 target = ComponentProjectFactory.eINSTANCE.createTargetType1();
        target.setKey(targetKey);
        target.setName(targetName);
        platformConfig.setTarget(target);
        CompilerType compiler = ComponentProjectFactory.eINSTANCE.createCompilerType();
        compiler.setName(compilerName);
        compiler.setPath("");
        platformConfig.setCompiler(compiler);
        CodeGeneratorType codeGen = ComponentProjectFactory.eINSTANCE.createCodeGeneratorType();
        codeGen.setType(CodeGeneratorT.IMPLEMENTATIONCONTROLLER);
        platformConfig.setCodeGenerator(codeGen);
        OperatingSystemType opSys = ComponentProjectFactory.eINSTANCE.createOperatingSystemType();
        opSys.setType(osKey);
        platformConfig.setOperatingSystem(opSys);
        return platformConfig;
    }
}

