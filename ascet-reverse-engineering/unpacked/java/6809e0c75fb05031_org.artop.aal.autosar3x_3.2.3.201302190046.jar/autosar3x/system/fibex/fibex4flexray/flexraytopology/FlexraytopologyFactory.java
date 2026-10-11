/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.system.fibex.fibex4flexray.flexraytopology;

import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexRayCommunicationConnector;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexrayCluster;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexrayCommunicationController;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexrayFifoConfiguration;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexrayFifoRange;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexrayPhysicalChannel;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexraytopologyPackage;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.impl.FlexraytopologyFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface FlexraytopologyFactory
extends EFactory {
    public static final FlexraytopologyFactory eINSTANCE = FlexraytopologyFactoryImpl.init();

    public FlexrayCluster createFlexrayCluster();

    public FlexRayCommunicationConnector createFlexRayCommunicationConnector();

    public FlexrayCommunicationController createFlexrayCommunicationController();

    public FlexrayFifoConfiguration createFlexrayFifoConfiguration();

    public FlexrayPhysicalChannel createFlexrayPhysicalChannel();

    public FlexrayFifoRange createFlexrayFifoRange();

    public FlexraytopologyPackage getFlexraytopologyPackage();
}

