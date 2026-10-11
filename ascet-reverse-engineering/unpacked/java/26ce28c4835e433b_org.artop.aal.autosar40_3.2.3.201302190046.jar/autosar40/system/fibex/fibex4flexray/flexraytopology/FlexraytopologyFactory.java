/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.system.fibex.fibex4flexray.flexraytopology;

import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayCluster;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayClusterConditional;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayCommunicationConnector;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayCommunicationController;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayCommunicationControllerConditional;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayFifoConfiguration;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayFifoRange;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayPhysicalChannel;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexraytopologyPackage;
import autosar40.system.fibex.fibex4flexray.flexraytopology.impl.FlexraytopologyFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface FlexraytopologyFactory
extends EFactory {
    public static final FlexraytopologyFactory eINSTANCE = FlexraytopologyFactoryImpl.init();

    public FlexrayCluster createFlexrayCluster();

    public FlexrayClusterConditional createFlexrayClusterConditional();

    public FlexrayCommunicationConnector createFlexrayCommunicationConnector();

    public FlexrayCommunicationController createFlexrayCommunicationController();

    public FlexrayCommunicationControllerConditional createFlexrayCommunicationControllerConditional();

    public FlexrayFifoConfiguration createFlexrayFifoConfiguration();

    public FlexrayPhysicalChannel createFlexrayPhysicalChannel();

    public FlexrayFifoRange createFlexrayFifoRange();

    public FlexraytopologyPackage getFlexraytopologyPackage();
}

