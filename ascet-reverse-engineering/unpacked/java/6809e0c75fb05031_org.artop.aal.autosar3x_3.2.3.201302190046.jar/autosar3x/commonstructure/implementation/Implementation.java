/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gimplementation.GImplementation
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.commonstructure.implementation;

import autosar3x.commonstructure.implementation.Code;
import autosar3x.commonstructure.implementation.Compiler;
import autosar3x.commonstructure.implementation.Dependency;
import autosar3x.commonstructure.implementation.Linker;
import autosar3x.commonstructure.implementation.ProgramminglanguageEnum;
import autosar3x.commonstructure.resourceconsumption.ResourceConsumption;
import autosar3x.ecuresource.processingunit.ProcessingUnit;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import gautosar.gcommonstructure.gimplementation.GImplementation;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface Implementation
extends ARElement,
GImplementation {
    public EList<Code> getCodeDescriptors();

    public String getCodeGenerator();

    public void setCodeGenerator(String var1);

    public void unsetCodeGenerator();

    public boolean isSetCodeGenerator();

    public EList<Compiler> getCompilers();

    public EList<Dependency> getImplementationDependencies();

    public EList<Linker> getLinkers();

    public EList<ProcessingUnit> getProcessors();

    public ProgramminglanguageEnum getProgrammingLanguage();

    public void setProgrammingLanguage(ProgramminglanguageEnum var1);

    public void unsetProgrammingLanguage();

    public boolean isSetProgrammingLanguage();

    public ResourceConsumption getResourceConsumption();

    public void setResourceConsumption(ResourceConsumption var1);

    public Integer getSwMajorVersion();

    public void setSwMajorVersion(Integer var1);

    public void unsetSwMajorVersion();

    public boolean isSetSwMajorVersion();

    public Integer getSwMinorVersion();

    public void setSwMinorVersion(Integer var1);

    public void unsetSwMinorVersion();

    public boolean isSetSwMinorVersion();

    public Integer getSwPatchVersion();

    public void setSwPatchVersion(Integer var1);

    public void unsetSwPatchVersion();

    public boolean isSetSwPatchVersion();

    public Integer getVendorId();

    public void setVendorId(Integer var1);

    public void unsetVendorId();

    public boolean isSetVendorId();
}

