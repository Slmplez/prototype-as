/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.system.fibex.fibexcore.coretopology;

import autosar3x.system.fibex.fibexcore.FibexElement;
import autosar3x.system.fibex.fibexcore.corecommunication.IPduGroup;
import autosar3x.system.fibex.fibexcore.corecommunication.PdurIPduGroup;
import autosar3x.system.fibex.fibexcore.coretopology.CommunicationConnector;
import autosar3x.system.fibex.fibexcore.coretopology.CommunicationController;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EcuInstance
extends FibexElement {
    public EList<IPduGroup> getAssociatedIPduGroups();

    public EList<PdurIPduGroup> getAssociatedPdurIPduGroups();

    public Integer getComConfigurationId();

    public void setComConfigurationId(Integer var1);

    public void unsetComConfigurationId();

    public boolean isSetComConfigurationId();

    public Double getComProcessingPeriod();

    public void setComProcessingPeriod(Double var1);

    public void unsetComProcessingPeriod();

    public boolean isSetComProcessingPeriod();

    public Double getComProcessingPeriodGw();

    public void setComProcessingPeriodGw(Double var1);

    public void unsetComProcessingPeriodGw();

    public boolean isSetComProcessingPeriodGw();

    public Double getComProcessingPeriodRx();

    public void setComProcessingPeriodRx(Double var1);

    public void unsetComProcessingPeriodRx();

    public boolean isSetComProcessingPeriodRx();

    public EList<CommunicationController> getCommControllers();

    public EList<CommunicationConnector> getConnectors();

    public Integer getDiagnosticAddress();

    public void setDiagnosticAddress(Integer var1);

    public void unsetDiagnosticAddress();

    public boolean isSetDiagnosticAddress();

    public Integer getPduRConfigurationId();

    public void setPduRConfigurationId(Integer var1);

    public void unsetPduRConfigurationId();

    public boolean isSetPduRConfigurationId();

    public EList<Integer> getResponseAddress();

    public void unsetResponseAddress();

    public boolean isSetResponseAddress();

    public Boolean getSleepModeSupported();

    public void setSleepModeSupported(Boolean var1);

    public void unsetSleepModeSupported();

    public boolean isSetSleepModeSupported();

    public Boolean getWakeUpOverBusSupported();

    public void setWakeUpOverBusSupported(Boolean var1);

    public void unsetWakeUpOverBusSupported();

    public boolean isSetWakeUpOverBusSupported();
}

