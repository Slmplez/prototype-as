/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar40.system.fibex.fibex4flexray.flexraytopology.impl;

import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayChannelName;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayCluster;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayClusterConditional;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayCommunicationConnector;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayCommunicationController;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayCommunicationControllerConditional;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayFifoConfiguration;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayFifoRange;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayPhysicalChannel;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexraytopologyFactory;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexraytopologyPackage;
import autosar40.system.fibex.fibex4flexray.flexraytopology.impl.FlexrayClusterConditionalImpl;
import autosar40.system.fibex.fibex4flexray.flexraytopology.impl.FlexrayClusterImpl;
import autosar40.system.fibex.fibex4flexray.flexraytopology.impl.FlexrayCommunicationConnectorImpl;
import autosar40.system.fibex.fibex4flexray.flexraytopology.impl.FlexrayCommunicationControllerConditionalImpl;
import autosar40.system.fibex.fibex4flexray.flexraytopology.impl.FlexrayCommunicationControllerImpl;
import autosar40.system.fibex.fibex4flexray.flexraytopology.impl.FlexrayFifoConfigurationImpl;
import autosar40.system.fibex.fibex4flexray.flexraytopology.impl.FlexrayFifoRangeImpl;
import autosar40.system.fibex.fibex4flexray.flexraytopology.impl.FlexrayPhysicalChannelImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class FlexraytopologyFactoryImpl
extends EFactoryImpl
implements FlexraytopologyFactory {
    public static FlexraytopologyFactory init() {
        try {
            FlexraytopologyFactory theFlexraytopologyFactory = (FlexraytopologyFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/system/f/ff/ft");
            if (theFlexraytopologyFactory != null) {
                return theFlexraytopologyFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new FlexraytopologyFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createFlexrayCluster();
            }
            case 1: {
                return this.createFlexrayClusterConditional();
            }
            case 3: {
                return this.createFlexrayCommunicationConnector();
            }
            case 4: {
                return this.createFlexrayCommunicationController();
            }
            case 5: {
                return this.createFlexrayCommunicationControllerConditional();
            }
            case 7: {
                return this.createFlexrayFifoConfiguration();
            }
            case 8: {
                return this.createFlexrayPhysicalChannel();
            }
            case 9: {
                return this.createFlexrayFifoRange();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 10: {
                return this.createFlexrayChannelNameFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 10: {
                return this.convertFlexrayChannelNameToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public FlexrayCluster createFlexrayCluster() {
        FlexrayClusterImpl flexrayCluster = new FlexrayClusterImpl();
        return flexrayCluster;
    }

    public FlexrayClusterConditional createFlexrayClusterConditional() {
        FlexrayClusterConditionalImpl flexrayClusterConditional = new FlexrayClusterConditionalImpl();
        return flexrayClusterConditional;
    }

    public FlexrayCommunicationConnector createFlexrayCommunicationConnector() {
        FlexrayCommunicationConnectorImpl flexrayCommunicationConnector = new FlexrayCommunicationConnectorImpl();
        return flexrayCommunicationConnector;
    }

    public FlexrayCommunicationController createFlexrayCommunicationController() {
        FlexrayCommunicationControllerImpl flexrayCommunicationController = new FlexrayCommunicationControllerImpl();
        return flexrayCommunicationController;
    }

    public FlexrayCommunicationControllerConditional createFlexrayCommunicationControllerConditional() {
        FlexrayCommunicationControllerConditionalImpl flexrayCommunicationControllerConditional = new FlexrayCommunicationControllerConditionalImpl();
        return flexrayCommunicationControllerConditional;
    }

    public FlexrayFifoConfiguration createFlexrayFifoConfiguration() {
        FlexrayFifoConfigurationImpl flexrayFifoConfiguration = new FlexrayFifoConfigurationImpl();
        return flexrayFifoConfiguration;
    }

    public FlexrayPhysicalChannel createFlexrayPhysicalChannel() {
        FlexrayPhysicalChannelImpl flexrayPhysicalChannel = new FlexrayPhysicalChannelImpl();
        return flexrayPhysicalChannel;
    }

    public FlexrayFifoRange createFlexrayFifoRange() {
        FlexrayFifoRangeImpl flexrayFifoRange = new FlexrayFifoRangeImpl();
        return flexrayFifoRange;
    }

    public FlexrayChannelName createFlexrayChannelNameFromString(EDataType eDataType, String initialValue) {
        FlexrayChannelName result = FlexrayChannelName.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertFlexrayChannelNameToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public FlexraytopologyPackage getFlexraytopologyPackage() {
        return (FlexraytopologyPackage)this.getEPackage();
    }

    @Deprecated
    public static FlexraytopologyPackage getPackage() {
        return FlexraytopologyPackage.eINSTANCE;
    }
}

