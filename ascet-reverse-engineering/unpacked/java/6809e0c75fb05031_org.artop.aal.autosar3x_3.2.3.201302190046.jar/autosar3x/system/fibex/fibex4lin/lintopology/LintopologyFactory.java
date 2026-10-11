/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.system.fibex.fibex4lin.lintopology;

import autosar3x.system.fibex.fibex4lin.lintopology.LinCluster;
import autosar3x.system.fibex.fibex4lin.lintopology.LinMaster;
import autosar3x.system.fibex.fibex4lin.lintopology.LinSlave;
import autosar3x.system.fibex.fibex4lin.lintopology.LintopologyPackage;
import autosar3x.system.fibex.fibex4lin.lintopology.impl.LintopologyFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface LintopologyFactory
extends EFactory {
    public static final LintopologyFactory eINSTANCE = LintopologyFactoryImpl.init();

    public LinCluster createLinCluster();

    public LinMaster createLinMaster();

    public LinSlave createLinSlave();

    public LintopologyPackage getLintopologyPackage();
}

