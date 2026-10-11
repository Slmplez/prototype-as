/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcimplementation.GSwcImplementation
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.swcomponent.implementation;

import autosar21.ecuresource.processingunit.ProcessingUnit;
import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.swcomponent.implementation.Code;
import autosar21.swcomponent.implementation.Compiler;
import autosar21.swcomponent.implementation.Dependency;
import autosar21.swcomponent.implementation.ImplementationProgrammingLanguageEnum;
import autosar21.swcomponent.internalbehavior.InternalBehavior;
import autosar21.swcomponent.resources.ResourceConsumption;
import gautosar.gswcomponents.gswcimplementation.GSwcImplementation;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface Implementation
extends ARElement,
GSwcImplementation {
    public InternalBehavior getBehavior();

    public void setBehavior(InternalBehavior var1);

    public Code getCodeDescriptor();

    public void setCodeDescriptor(Code var1);

    public String getCodeGenerator();

    public void setCodeGenerator(String var1);

    public void unsetCodeGenerator();

    public boolean isSetCodeGenerator();

    public EList<Compiler> getCompilers();

    public EList<Dependency> getImplementationDependencies();

    public EList<ProcessingUnit> getProcessors();

    public ImplementationProgrammingLanguageEnum getProgrammingLanguage();

    public void setProgrammingLanguage(ImplementationProgrammingLanguageEnum var1);

    public void unsetProgrammingLanguage();

    public boolean isSetProgrammingLanguage();

    public String getRequiredRTEVendor();

    public void setRequiredRTEVendor(String var1);

    public void unsetRequiredRTEVendor();

    public boolean isSetRequiredRTEVendor();

    public ResourceConsumption getResourceConsumption();

    public void setResourceConsumption(ResourceConsumption var1);
}

