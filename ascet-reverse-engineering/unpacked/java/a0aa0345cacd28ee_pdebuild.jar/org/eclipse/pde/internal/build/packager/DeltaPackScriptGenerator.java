/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.build.packager;

import java.util.Collection;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.internal.build.AssemblyInformation;
import org.eclipse.pde.internal.build.Config;
import org.eclipse.pde.internal.build.packager.PackageScriptGenerator;

public class DeltaPackScriptGenerator
extends PackageScriptGenerator {
    public DeltaPackScriptGenerator(String directory, AssemblyInformation assemblageInformation, String featureId) {
        super(directory, assemblageInformation, featureId);
        this.groupConfigs = true;
    }

    protected void basicGenerateAssembleConfigFileTargetCall(Config aConfig, Collection binaryPlugins, Collection binaryFeatures, Collection allFeatures, Collection rootFiles) throws CoreException {
        super.basicGenerateAssembleConfigFileTargetCall(new Config("delta", "delta", "delta"), binaryPlugins, binaryFeatures, allFeatures, rootFiles);
    }
}

