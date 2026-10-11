/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.system.fibex.fibex4can.cantopology;

import autosar40.system.fibex.fibex4can.cantopology.CanCluster;
import autosar40.system.fibex.fibex4can.cantopology.CanClusterConditional;
import autosar40.system.fibex.fibex4can.cantopology.CanCommunicationConnector;
import autosar40.system.fibex.fibex4can.cantopology.CanCommunicationController;
import autosar40.system.fibex.fibex4can.cantopology.CanCommunicationControllerConditional;
import autosar40.system.fibex.fibex4can.cantopology.CanControllerConfiguration;
import autosar40.system.fibex.fibex4can.cantopology.CanControllerConfigurationRequirements;
import autosar40.system.fibex.fibex4can.cantopology.CanPhysicalChannel;
import autosar40.system.fibex.fibex4can.cantopology.CantopologyPackage;
import autosar40.system.fibex.fibex4can.cantopology.impl.CantopologyFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface CantopologyFactory
extends EFactory {
    public static final CantopologyFactory eINSTANCE = CantopologyFactoryImpl.init();

    public CanCluster createCanCluster();

    public CanClusterConditional createCanClusterConditional();

    public CanCommunicationConnector createCanCommunicationConnector();

    public CanCommunicationController createCanCommunicationController();

    public CanCommunicationControllerConditional createCanCommunicationControllerConditional();

    public CanControllerConfiguration createCanControllerConfiguration();

    public CanControllerConfigurationRequirements createCanControllerConfigurationRequirements();

    public CanPhysicalChannel createCanPhysicalChannel();

    public CantopologyPackage getCantopologyPackage();
}

