/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DiagnosticChain
 */
package autosar40.swcomponent.applicationattributes;

import autosar40.genericstructure.generaltemplateclasses.generalannotation.GeneralAnnotation;
import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.MultidimensionalTime;
import autosar40.swcomponent.applicationattributes.FilterDebouncingEnum;
import autosar40.swcomponent.applicationattributes.PulseTestEnum;
import autosar40.swcomponent.components.PortPrototype;
import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;
import autosar40.swcomponent.portinterface.ArgumentDataPrototype;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IoHwAbstractionServerAnnotation
extends GeneralAnnotation {
    public PortPrototype getPortPrototype();

    public void setPortPrototype(PortPrototype var1);

    public MultidimensionalTime getAge();

    public void setAge(MultidimensionalTime var1);

    public ArgumentDataPrototype getArgument();

    public void setArgument(ArgumentDataPrototype var1);

    public Double getBswResolution();

    public void setBswResolution(Double var1);

    public void unsetBswResolution();

    public boolean isSetBswResolution();

    public VariableDataPrototype getDataElement();

    public void setDataElement(VariableDataPrototype var1);

    public PortPrototype getFailureMonitoring();

    public void setFailureMonitoring(PortPrototype var1);

    public FilterDebouncingEnum getFilteringDebouncing();

    public void setFilteringDebouncing(FilterDebouncingEnum var1);

    public void unsetFilteringDebouncing();

    public boolean isSetFilteringDebouncing();

    public PulseTestEnum getPulseTest();

    public void setPulseTest(PulseTestEnum var1);

    public void unsetPulseTest();

    public boolean isSetPulseTest();

    public boolean _portsinterfaceisaclientserverinterfaceusingtheoperationsGETandSET(DiagnosticChain var1, Map<Object, Object> var2);
}

