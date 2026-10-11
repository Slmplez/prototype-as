/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DiagnosticChain
 */
package autosar3x.swcomponent.applicationattributes;

import autosar3x.genericstructure.commonpatterns.annotation.GeneralAnnotation;
import autosar3x.swcomponent.applicationattributes.FilterDebouncingEnum;
import autosar3x.swcomponent.applicationattributes.PulseTestEnum;
import autosar3x.swcomponent.applicationattributes.ReportFeature;
import autosar3x.swcomponent.applicationattributes.WakeUp;
import autosar3x.swcomponent.components.PortPrototype;
import autosar3x.swcomponent.portinterface.ArgumentPrototype;
import autosar3x.swcomponent.portinterface.DataElementPrototype;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IoHwAbstractionServerAnnotation
extends GeneralAnnotation {
    public PortPrototype getPortPrototype();

    public void setPortPrototype(PortPrototype var1);

    public Integer getAge();

    public void setAge(Integer var1);

    public void unsetAge();

    public boolean isSetAge();

    public ArgumentPrototype getArgumentPrototype();

    public void setArgumentPrototype(ArgumentPrototype var1);

    public Integer getBswRangeMax();

    public void setBswRangeMax(Integer var1);

    public void unsetBswRangeMax();

    public boolean isSetBswRangeMax();

    public Integer getBswRangeMin();

    public void setBswRangeMin(Integer var1);

    public void unsetBswRangeMin();

    public boolean isSetBswRangeMin();

    public Double getBswResolution();

    public void setBswResolution(Double var1);

    public void unsetBswResolution();

    public boolean isSetBswResolution();

    public DataElementPrototype getDataElementPrototype();

    public void setDataElementPrototype(DataElementPrototype var1);

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

    public ReportFeature getSupportsReportRunnable();

    public void setSupportsReportRunnable(ReportFeature var1);

    public WakeUp getSupportsWakeUpRunnable();

    public void setSupportsWakeUpRunnable(WakeUp var1);

    public String getUnit();

    public void setUnit(String var1);

    public void unsetUnit();

    public boolean isSetUnit();

    public boolean _portsinterfaceisaclientserverinterfaceusingtheoperationsGETandSET(DiagnosticChain var1, Map<Object, Object> var2);
}

