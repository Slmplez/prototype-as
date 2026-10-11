/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.system.fibex.fibexcore.coretopology;

import autosar3x.system.fibex.fibexcore.coretopology.CommunicationCluster;
import autosar3x.system.fibex.fibexcore.coretopology.CommunicationConnector;
import autosar3x.system.fibex.fibexcore.coretopology.CommunicationController;
import autosar3x.system.fibex.fibexcore.coretopology.CoretopologyPackage;
import autosar3x.system.fibex.fibexcore.coretopology.EcuInstance;
import autosar3x.system.fibex.fibexcore.coretopology.PhysicalChannel;
import autosar3x.system.fibex.fibexcore.coretopology.impl.CoretopologyFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface CoretopologyFactory
extends EFactory {
    public static final CoretopologyFactory eINSTANCE = CoretopologyFactoryImpl.init();

    public CommunicationCluster createCommunicationCluster();

    public PhysicalChannel createPhysicalChannel();

    public CommunicationConnector createCommunicationConnector();

    public CommunicationController createCommunicationController();

    public EcuInstance createEcuInstance();

    public CoretopologyPackage getCoretopologyPackage();
}

