/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.system.fibex.fibex4ttcan.ttcantopology;

import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcanCluster;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcanClusterConditional;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcanCommunicationConnector;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcanCommunicationController;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcanCommunicationControllerConditional;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcanPhysicalChannel;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcantopologyPackage;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.impl.TtcantopologyFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface TtcantopologyFactory
extends EFactory {
    public static final TtcantopologyFactory eINSTANCE = TtcantopologyFactoryImpl.init();

    public TtcanCluster createTtcanCluster();

    public TtcanClusterConditional createTtcanClusterConditional();

    public TtcanCommunicationConnector createTtcanCommunicationConnector();

    public TtcanCommunicationController createTtcanCommunicationController();

    public TtcanCommunicationControllerConditional createTtcanCommunicationControllerConditional();

    public TtcanPhysicalChannel createTtcanPhysicalChannel();

    public TtcantopologyPackage getTtcantopologyPackage();
}

