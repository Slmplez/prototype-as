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
package autosar40.system.networkmanagement.impl;

import autosar40.system.networkmanagement.CanNmCluster;
import autosar40.system.networkmanagement.CanNmClusterCoupling;
import autosar40.system.networkmanagement.CanNmEcu;
import autosar40.system.networkmanagement.CanNmNode;
import autosar40.system.networkmanagement.CanNmRangeConfig;
import autosar40.system.networkmanagement.FlexrayNmCluster;
import autosar40.system.networkmanagement.FlexrayNmClusterCoupling;
import autosar40.system.networkmanagement.FlexrayNmEcu;
import autosar40.system.networkmanagement.FlexrayNmNode;
import autosar40.system.networkmanagement.FlexrayNmScheduleVariant;
import autosar40.system.networkmanagement.NetworkmanagementFactory;
import autosar40.system.networkmanagement.NetworkmanagementPackage;
import autosar40.system.networkmanagement.NmConfig;
import autosar40.system.networkmanagement.NmCoordinator;
import autosar40.system.networkmanagement.NmEcu;
import autosar40.system.networkmanagement.NmNode;
import autosar40.system.networkmanagement.UdpNmCluster;
import autosar40.system.networkmanagement.UdpNmClusterCoupling;
import autosar40.system.networkmanagement.UdpNmEcu;
import autosar40.system.networkmanagement.UdpNmNode;
import autosar40.system.networkmanagement.impl.CanNmClusterCouplingImpl;
import autosar40.system.networkmanagement.impl.CanNmClusterImpl;
import autosar40.system.networkmanagement.impl.CanNmEcuImpl;
import autosar40.system.networkmanagement.impl.CanNmNodeImpl;
import autosar40.system.networkmanagement.impl.CanNmRangeConfigImpl;
import autosar40.system.networkmanagement.impl.FlexrayNmClusterCouplingImpl;
import autosar40.system.networkmanagement.impl.FlexrayNmClusterImpl;
import autosar40.system.networkmanagement.impl.FlexrayNmEcuImpl;
import autosar40.system.networkmanagement.impl.FlexrayNmNodeImpl;
import autosar40.system.networkmanagement.impl.NmConfigImpl;
import autosar40.system.networkmanagement.impl.NmCoordinatorImpl;
import autosar40.system.networkmanagement.impl.NmEcuImpl;
import autosar40.system.networkmanagement.impl.NmNodeImpl;
import autosar40.system.networkmanagement.impl.UdpNmClusterCouplingImpl;
import autosar40.system.networkmanagement.impl.UdpNmClusterImpl;
import autosar40.system.networkmanagement.impl.UdpNmEcuImpl;
import autosar40.system.networkmanagement.impl.UdpNmNodeImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class NetworkmanagementFactoryImpl
extends EFactoryImpl
implements NetworkmanagementFactory {
    public static NetworkmanagementFactory init() {
        try {
            NetworkmanagementFactory theNetworkmanagementFactory = (NetworkmanagementFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/system/nm");
            if (theNetworkmanagementFactory != null) {
                return theNetworkmanagementFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new NetworkmanagementFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 1: {
                return this.createCanNmCluster();
            }
            case 3: {
                return this.createNmNode();
            }
            case 4: {
                return this.createNmEcu();
            }
            case 5: {
                return this.createNmCoordinator();
            }
            case 6: {
                return this.createCanNmClusterCoupling();
            }
            case 8: {
                return this.createCanNmEcu();
            }
            case 9: {
                return this.createCanNmNode();
            }
            case 10: {
                return this.createCanNmRangeConfig();
            }
            case 11: {
                return this.createFlexrayNmCluster();
            }
            case 12: {
                return this.createFlexrayNmClusterCoupling();
            }
            case 13: {
                return this.createFlexrayNmEcu();
            }
            case 14: {
                return this.createFlexrayNmNode();
            }
            case 15: {
                return this.createNmConfig();
            }
            case 16: {
                return this.createUdpNmCluster();
            }
            case 17: {
                return this.createUdpNmClusterCoupling();
            }
            case 18: {
                return this.createUdpNmEcu();
            }
            case 19: {
                return this.createUdpNmNode();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 20: {
                return this.createFlexrayNmScheduleVariantFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 20: {
                return this.convertFlexrayNmScheduleVariantToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public CanNmCluster createCanNmCluster() {
        CanNmClusterImpl canNmCluster = new CanNmClusterImpl();
        return canNmCluster;
    }

    public NmNode createNmNode() {
        NmNodeImpl nmNode = new NmNodeImpl();
        return nmNode;
    }

    public NmEcu createNmEcu() {
        NmEcuImpl nmEcu = new NmEcuImpl();
        return nmEcu;
    }

    public NmCoordinator createNmCoordinator() {
        NmCoordinatorImpl nmCoordinator = new NmCoordinatorImpl();
        return nmCoordinator;
    }

    public CanNmClusterCoupling createCanNmClusterCoupling() {
        CanNmClusterCouplingImpl canNmClusterCoupling = new CanNmClusterCouplingImpl();
        return canNmClusterCoupling;
    }

    public CanNmEcu createCanNmEcu() {
        CanNmEcuImpl canNmEcu = new CanNmEcuImpl();
        return canNmEcu;
    }

    public CanNmNode createCanNmNode() {
        CanNmNodeImpl canNmNode = new CanNmNodeImpl();
        return canNmNode;
    }

    public CanNmRangeConfig createCanNmRangeConfig() {
        CanNmRangeConfigImpl canNmRangeConfig = new CanNmRangeConfigImpl();
        return canNmRangeConfig;
    }

    public FlexrayNmCluster createFlexrayNmCluster() {
        FlexrayNmClusterImpl flexrayNmCluster = new FlexrayNmClusterImpl();
        return flexrayNmCluster;
    }

    public FlexrayNmClusterCoupling createFlexrayNmClusterCoupling() {
        FlexrayNmClusterCouplingImpl flexrayNmClusterCoupling = new FlexrayNmClusterCouplingImpl();
        return flexrayNmClusterCoupling;
    }

    public FlexrayNmEcu createFlexrayNmEcu() {
        FlexrayNmEcuImpl flexrayNmEcu = new FlexrayNmEcuImpl();
        return flexrayNmEcu;
    }

    public FlexrayNmNode createFlexrayNmNode() {
        FlexrayNmNodeImpl flexrayNmNode = new FlexrayNmNodeImpl();
        return flexrayNmNode;
    }

    public NmConfig createNmConfig() {
        NmConfigImpl nmConfig = new NmConfigImpl();
        return nmConfig;
    }

    public UdpNmCluster createUdpNmCluster() {
        UdpNmClusterImpl udpNmCluster = new UdpNmClusterImpl();
        return udpNmCluster;
    }

    public UdpNmClusterCoupling createUdpNmClusterCoupling() {
        UdpNmClusterCouplingImpl udpNmClusterCoupling = new UdpNmClusterCouplingImpl();
        return udpNmClusterCoupling;
    }

    public UdpNmEcu createUdpNmEcu() {
        UdpNmEcuImpl udpNmEcu = new UdpNmEcuImpl();
        return udpNmEcu;
    }

    public UdpNmNode createUdpNmNode() {
        UdpNmNodeImpl udpNmNode = new UdpNmNodeImpl();
        return udpNmNode;
    }

    public FlexrayNmScheduleVariant createFlexrayNmScheduleVariantFromString(EDataType eDataType, String initialValue) {
        FlexrayNmScheduleVariant result = FlexrayNmScheduleVariant.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertFlexrayNmScheduleVariantToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public NetworkmanagementPackage getNetworkmanagementPackage() {
        return (NetworkmanagementPackage)this.getEPackage();
    }

    @Deprecated
    public static NetworkmanagementPackage getPackage() {
        return NetworkmanagementPackage.eINSTANCE;
    }
}

