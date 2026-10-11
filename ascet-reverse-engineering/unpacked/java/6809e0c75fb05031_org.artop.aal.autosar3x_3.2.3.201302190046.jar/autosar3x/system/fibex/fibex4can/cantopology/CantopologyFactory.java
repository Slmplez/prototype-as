/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.system.fibex.fibex4can.cantopology;

import autosar3x.system.fibex.fibex4can.cantopology.CanCluster;
import autosar3x.system.fibex.fibex4can.cantopology.CanCommunicationConnector;
import autosar3x.system.fibex.fibex4can.cantopology.CanCommunicationController;
import autosar3x.system.fibex.fibex4can.cantopology.CanControllerConfiguration;
import autosar3x.system.fibex.fibex4can.cantopology.CanControllerConfigurationRequirements;
import autosar3x.system.fibex.fibex4can.cantopology.CantopologyPackage;
import autosar3x.system.fibex.fibex4can.cantopology.impl.CantopologyFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface CantopologyFactory
extends EFactory {
    public static final CantopologyFactory eINSTANCE = CantopologyFactoryImpl.init();

    public CanCluster createCanCluster();

    public CanCommunicationConnector createCanCommunicationConnector();

    public CanCommunicationController createCanCommunicationController();

    public CanControllerConfiguration createCanControllerConfiguration();

    public CanControllerConfigurationRequirements createCanControllerConfigurationRequirements();

    public CantopologyPackage getCantopologyPackage();
}

