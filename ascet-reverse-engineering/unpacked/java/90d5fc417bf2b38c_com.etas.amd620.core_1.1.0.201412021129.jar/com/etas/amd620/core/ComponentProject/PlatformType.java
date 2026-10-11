/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentProject;

import com.etas.amd620.core.ComponentProject.CodeGeneratorType;
import com.etas.amd620.core.ComponentProject.CompilerType;
import com.etas.amd620.core.ComponentProject.OperatingSystemType;
import com.etas.amd620.core.ComponentProject.TargetType1;
import org.eclipse.emf.ecore.EObject;

public interface PlatformType
extends EObject {
    public TargetType1 getTarget();

    public void setTarget(TargetType1 var1);

    public CompilerType getCompiler();

    public void setCompiler(CompilerType var1);

    public CodeGeneratorType getCodeGenerator();

    public void setCodeGenerator(CodeGeneratorType var1);

    public OperatingSystemType getOperatingSystem();

    public void setOperatingSystem(OperatingSystemType var1);

    public String getPlatformKey();

    public void setPlatformKey(String var1);
}

