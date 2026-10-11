/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.fibex.fibexcore.coretopology;

import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.system.fibex.fibexcore.coretopology.CommConnectorPort;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationController;
import autosar40.system.fibex.fibexcore.coretopology.EcuInstance;
import autosar40.system.fibex.fibexcore.coretopology.PncGatewayTypeEnum;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface CommunicationConnector
extends Identifiable {
    public EcuInstance getEcuInstance();

    public void setEcuInstance(EcuInstance var1);

    public CommunicationController getCommController();

    public void setCommController(CommunicationController var1);

    public EList<CommConnectorPort> getEcuCommPortInstances();

    public PncGatewayTypeEnum getPncGatewayType();

    public void setPncGatewayType(PncGatewayTypeEnum var1);

    public void unsetPncGatewayType();

    public boolean isSetPncGatewayType();
}

