/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gimplementation.GImplementation
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.commonstructure.implementation;

import autosar40.commonstructure.implementation.Code;
import autosar40.commonstructure.implementation.Compiler;
import autosar40.commonstructure.implementation.DependencyOnArtifact;
import autosar40.commonstructure.implementation.Linker;
import autosar40.commonstructure.implementation.ProgramminglanguageEnum;
import autosar40.commonstructure.measurementcalibrationsupport.McSupportData;
import autosar40.commonstructure.resourceconsumption.ResourceConsumption;
import autosar40.commonstructure.swcbswmapping.SwcBswMapping;
import autosar40.ecuresource.HwElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import gautosar.gcommonstructure.gimplementation.GImplementation;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface Implementation
extends ARElement,
GImplementation {
    public EList<Code> getCodeDescriptors();

    public EList<Compiler> getCompilers();

    public EList<DependencyOnArtifact> getGeneratedArtifacts();

    public EList<HwElement> getHwElements();

    public EList<Linker> getLinkers();

    public McSupportData getMcSupport();

    public void setMcSupport(McSupportData var1);

    public ProgramminglanguageEnum getProgrammingLanguage();

    public void setProgrammingLanguage(ProgramminglanguageEnum var1);

    public void unsetProgrammingLanguage();

    public boolean isSetProgrammingLanguage();

    public EList<DependencyOnArtifact> getRequiredArtifacts();

    public EList<DependencyOnArtifact> getRequiredGeneratorTools();

    public ResourceConsumption getResourceConsumption();

    public void setResourceConsumption(ResourceConsumption var1);

    public String getSwVersion();

    public void setSwVersion(String var1);

    public void unsetSwVersion();

    public boolean isSetSwVersion();

    public SwcBswMapping getSwcBswMapping();

    public void setSwcBswMapping(SwcBswMapping var1);

    public String getUsedCodeGenerator();

    public void setUsedCodeGenerator(String var1);

    public void unsetUsedCodeGenerator();

    public boolean isSetUsedCodeGenerator();

    public Long getVendorId();

    public void setVendorId(Long var1);

    public void unsetVendorId();

    public boolean isSetVendorId();

    public PositiveIntegerDatatype getVendorIdData();

    public void setVendorIdData(PositiveIntegerDatatype var1);
}

