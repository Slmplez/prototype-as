/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.fibex.fibexcore.coretopology;

import autosar40.system.fibex.fibexcore.FibexElement;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalIPduGroup;
import autosar40.system.fibex.fibexcore.corecommunication.PdurIPduGroup;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationConnector;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationController;
import autosar40.system.swmapping.EcuPartition;
import autosar40.system.transportprotocols.CanTpAddress;
import autosar40.system.transportprotocols.TpAddress;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EcuInstance
extends FibexElement {
    public EList<ISignalIPduGroup> getAssociatedComIPduGroups();

    public EList<PdurIPduGroup> getAssociatedPdurIPduGroups();

    public EList<CanTpAddress> getCanTpAddress();

    public Double getComConfigurationGwTimeBase();

    public void setComConfigurationGwTimeBase(Double var1);

    public void unsetComConfigurationGwTimeBase();

    public boolean isSetComConfigurationGwTimeBase();

    public Double getComConfigurationRxTimeBase();

    public void setComConfigurationRxTimeBase(Double var1);

    public void unsetComConfigurationRxTimeBase();

    public boolean isSetComConfigurationRxTimeBase();

    public Double getComConfigurationTxTimeBase();

    public void setComConfigurationTxTimeBase(Double var1);

    public void unsetComConfigurationTxTimeBase();

    public boolean isSetComConfigurationTxTimeBase();

    public Boolean getComEnableMDTForCyclicTransmission();

    public void setComEnableMDTForCyclicTransmission(Boolean var1);

    public void unsetComEnableMDTForCyclicTransmission();

    public boolean isSetComEnableMDTForCyclicTransmission();

    public EList<CommunicationController> getCommControllers();

    public EList<CommunicationConnector> getConnectors();

    public Integer getDiagnosticAddress();

    public void setDiagnosticAddress(Integer var1);

    public void unsetDiagnosticAddress();

    public boolean isSetDiagnosticAddress();

    public EList<EcuPartition> getPartitions();

    public Boolean getSleepModeSupported();

    public void setSleepModeSupported(Boolean var1);

    public void unsetSleepModeSupported();

    public boolean isSetSleepModeSupported();

    public EList<TpAddress> getTpAddress();

    public Boolean getWakeUpOverBusSupported();

    public void setWakeUpOverBusSupported(Boolean var1);

    public void unsetWakeUpOverBusSupported();

    public boolean isSetWakeUpOverBusSupported();

    public IntegerDatatype getDiagnosticAddressData();

    public void setDiagnosticAddressData(IntegerDatatype var1);
}

