/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.system.fibex.fibex4lin.lintopology;

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
import autosar40.system.fibex.fibex4lin.lintopology.LintopologyPackage;
import autosar40.system.fibex.fibex4lin.lintopology.impl.LintopologyFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface LintopologyFactory
extends EFactory {
    public static final LintopologyFactory eINSTANCE = LintopologyFactoryImpl.init();

    public LinCluster createLinCluster();

    public LinClusterConditional createLinClusterConditional();

    public LinCommunicationConnector createLinCommunicationConnector();

    public LinOrderedConfigurableFrame createLinOrderedConfigurableFrame();

    public LinConfigurableFrame createLinConfigurableFrame();

    public LinMaster createLinMaster();

    public LinMasterConditional createLinMasterConditional();

    public LinPhysicalChannel createLinPhysicalChannel();

    public LinSlaveConditional createLinSlaveConditional();

    public LinSlave createLinSlave();

    public LintopologyPackage getLintopologyPackage();
}

