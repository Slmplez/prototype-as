/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar40.system.fibex.fibex4lin.lintopology.impl;

import autosar40.system.fibex.fibex4lin.lintopology.LinCluster;
import autosar40.system.fibex.fibex4lin.lintopology.LinClusterConditional;
import autosar40.system.fibex.fibex4lin.lintopology.LinCommunicationConnector;
import autosar40.system.fibex.fibex4lin.lintopology.LinConfigurableFrame;
import autosar40.system.fibex.fibex4lin.lintopology.LinMaster;
import autosar40.system.fibex.fibex4lin.lintopology.LinMasterConditional;
import autosar40.system.fibex.fibex4lin.lintopology.LinOrderedConfigurableFrame;
import autosar40.system.fibex.fibex4lin.lintopology.LinPhysicalChannel;
import autosar40.system.fibex.fibex4lin.lintopology.LinSlave;
import autosar40.system.fibex.fibex4lin.lintopology.LinSlaveConditional;
import autosar40.system.fibex.fibex4lin.lintopology.LintopologyFactory;
import autosar40.system.fibex.fibex4lin.lintopology.LintopologyPackage;
import autosar40.system.fibex.fibex4lin.lintopology.impl.LinClusterConditionalImpl;
import autosar40.system.fibex.fibex4lin.lintopology.impl.LinClusterImpl;
import autosar40.system.fibex.fibex4lin.lintopology.impl.LinCommunicationConnectorImpl;
import autosar40.system.fibex.fibex4lin.lintopology.impl.LinConfigurableFrameImpl;
import autosar40.system.fibex.fibex4lin.lintopology.impl.LinMasterConditionalImpl;
import autosar40.system.fibex.fibex4lin.lintopology.impl.LinMasterImpl;
import autosar40.system.fibex.fibex4lin.lintopology.impl.LinOrderedConfigurableFrameImpl;
import autosar40.system.fibex.fibex4lin.lintopology.impl.LinPhysicalChannelImpl;
import autosar40.system.fibex.fibex4lin.lintopology.impl.LinSlaveConditionalImpl;
import autosar40.system.fibex.fibex4lin.lintopology.impl.LinSlaveImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class LintopologyFactoryImpl
extends EFactoryImpl
implements LintopologyFactory {
    public static LintopologyFactory init() {
        try {
            LintopologyFactory theLintopologyFactory = (LintopologyFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/system/f/fl/lt");
            if (theLintopologyFactory != null) {
                return theLintopologyFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new LintopologyFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createLinCluster();
            }
            case 1: {
                return this.createLinClusterConditional();
            }
            case 3: {
                return this.createLinCommunicationConnector();
            }
            case 4: {
                return this.createLinOrderedConfigurableFrame();
            }
            case 5: {
                return this.createLinConfigurableFrame();
            }
            case 7: {
                return this.createLinMaster();
            }
            case 8: {
                return this.createLinMasterConditional();
            }
            case 11: {
                return this.createLinPhysicalChannel();
            }
            case 13: {
                return this.createLinSlaveConditional();
            }
            case 14: {
                return this.createLinSlave();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public LinCluster createLinCluster() {
        LinClusterImpl linCluster = new LinClusterImpl();
        return linCluster;
    }

    public LinClusterConditional createLinClusterConditional() {
        LinClusterConditionalImpl linClusterConditional = new LinClusterConditionalImpl();
        return linClusterConditional;
    }

    public LinCommunicationConnector createLinCommunicationConnector() {
        LinCommunicationConnectorImpl linCommunicationConnector = new LinCommunicationConnectorImpl();
        return linCommunicationConnector;
    }

    public LinOrderedConfigurableFrame createLinOrderedConfigurableFrame() {
        LinOrderedConfigurableFrameImpl linOrderedConfigurableFrame = new LinOrderedConfigurableFrameImpl();
        return linOrderedConfigurableFrame;
    }

    public LinConfigurableFrame createLinConfigurableFrame() {
        LinConfigurableFrameImpl linConfigurableFrame = new LinConfigurableFrameImpl();
        return linConfigurableFrame;
    }

    public LinMaster createLinMaster() {
        LinMasterImpl linMaster = new LinMasterImpl();
        return linMaster;
    }

    public LinMasterConditional createLinMasterConditional() {
        LinMasterConditionalImpl linMasterConditional = new LinMasterConditionalImpl();
        return linMasterConditional;
    }

    public LinPhysicalChannel createLinPhysicalChannel() {
        LinPhysicalChannelImpl linPhysicalChannel = new LinPhysicalChannelImpl();
        return linPhysicalChannel;
    }

    public LinSlaveConditional createLinSlaveConditional() {
        LinSlaveConditionalImpl linSlaveConditional = new LinSlaveConditionalImpl();
        return linSlaveConditional;
    }

    public LinSlave createLinSlave() {
        LinSlaveImpl linSlave = new LinSlaveImpl();
        return linSlave;
    }

    public LintopologyPackage getLintopologyPackage() {
        return (LintopologyPackage)this.getEPackage();
    }

    @Deprecated
    public static LintopologyPackage getPackage() {
        return LintopologyPackage.eINSTANCE;
    }
}

