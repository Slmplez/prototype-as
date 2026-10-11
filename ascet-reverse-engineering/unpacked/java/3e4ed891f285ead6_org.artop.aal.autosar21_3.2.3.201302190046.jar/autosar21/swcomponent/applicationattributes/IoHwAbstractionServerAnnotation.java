/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DiagnosticChain
 */
package autosar21.swcomponent.applicationattributes;

import autosar21.swcomponent.applicationattributes.FailureMonitoring;
import autosar21.swcomponent.applicationattributes.IoHwAbstractionServerAnnotationFilteringDebouncingEnum;
import autosar21.swcomponent.applicationattributes.IoHwAbstractionServerAnnotationPulseTestEnum;
import autosar21.swcomponent.applicationattributes.PortAnnotation;
import autosar21.swcomponent.applicationattributes.ReportFeature;
import autosar21.swcomponent.applicationattributes.WakeUp;
import autosar21.swcomponent.portinterface.ArgumentPrototype;
import autosar21.swcomponent.portinterface.DataElementPrototype;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IoHwAbstractionServerAnnotation
extends PortAnnotation {
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

    public FailureMonitoring getFailureMonitoring();

    public void setFailureMonitoring(FailureMonitoring var1);

    public IoHwAbstractionServerAnnotationFilteringDebouncingEnum getFilteringDebouncing();

    public void setFilteringDebouncing(IoHwAbstractionServerAnnotationFilteringDebouncingEnum var1);

    public void unsetFilteringDebouncing();

    public boolean isSetFilteringDebouncing();

    public IoHwAbstractionServerAnnotationPulseTestEnum getPulseTest();

    public void setPulseTest(IoHwAbstractionServerAnnotationPulseTestEnum var1);

    public void unsetPulseTest();

    public boolean isSetPulseTest();

    public ReportFeature getReportFeature();

    public void setReportFeature(ReportFeature var1);

    public String getUnit();

    public void setUnit(String var1);

    public void unsetUnit();

    public boolean isSetUnit();

    public WakeUp getWakeUp();

    public void setWakeUp(WakeUp var1);

    public boolean _portsinterfaceisaclientserverinterfaceusingtheoperationsGETandSET(DiagnosticChain var1, Map<Object, Object> var2);
}

