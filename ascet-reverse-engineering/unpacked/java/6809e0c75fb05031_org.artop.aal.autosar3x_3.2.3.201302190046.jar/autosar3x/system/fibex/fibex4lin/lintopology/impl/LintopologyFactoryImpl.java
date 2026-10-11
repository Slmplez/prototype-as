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
package autosar3x.system.fibex.fibex4lin.lintopology.impl;

import autosar3x.system.fibex.fibex4lin.lintopology.LinCluster;
import autosar3x.system.fibex.fibex4lin.lintopology.LinCommunicationController;
import autosar3x.system.fibex.fibex4lin.lintopology.LinMaster;
import autosar3x.system.fibex.fibex4lin.lintopology.LinSlave;
import autosar3x.system.fibex.fibex4lin.lintopology.LintopologyFactory;
import autosar3x.system.fibex.fibex4lin.lintopology.LintopologyPackage;
import autosar3x.system.fibex.fibex4lin.lintopology.impl.LinClusterImpl;
import autosar3x.system.fibex.fibex4lin.lintopology.impl.LinCommunicationControllerImpl;
import autosar3x.system.fibex.fibex4lin.lintopology.impl.LinMasterImpl;
import autosar3x.system.fibex.fibex4lin.lintopology.impl.LinSlaveImpl;
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
            LintopologyFactory theLintopologyFactory = (LintopologyFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/s/f/fl/lt");
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
                return this.createLinMaster();
            }
            case 2: {
                return this.createLinSlave();
            }
            case 3: {
                return this.createLinCommunicationController();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public LinCluster createLinCluster() {
        LinClusterImpl linCluster = new LinClusterImpl();
        return linCluster;
    }

    public LinMaster createLinMaster() {
        LinMasterImpl linMaster = new LinMasterImpl();
        return linMaster;
    }

    public LinSlave createLinSlave() {
        LinSlaveImpl linSlave = new LinSlaveImpl();
        return linSlave;
    }

    public LinCommunicationController createLinCommunicationController() {
        LinCommunicationControllerImpl linCommunicationController = new LinCommunicationControllerImpl();
        return linCommunicationController;
    }

    public LintopologyPackage getLintopologyPackage() {
        return (LintopologyPackage)this.getEPackage();
    }

    @Deprecated
    public static LintopologyPackage getPackage() {
        return LintopologyPackage.eINSTANCE;
    }
}

