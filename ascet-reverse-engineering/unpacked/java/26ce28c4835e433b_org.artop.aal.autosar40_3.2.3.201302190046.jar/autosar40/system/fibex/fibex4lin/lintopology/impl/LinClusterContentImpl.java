/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.system.fibex.fibex4lin.lintopology.impl;

import autosar40.system.fibex.fibex4lin.lintopology.LinClusterContent;
import autosar40.system.fibex.fibex4lin.lintopology.LintopologyPackage;
import autosar40.system.fibex.fibexcore.coretopology.impl.CommunicationClusterContentImpl;
import org.eclipse.emf.ecore.EClass;

public abstract class LinClusterContentImpl
extends CommunicationClusterContentImpl
implements LinClusterContent {
    protected LinClusterContentImpl() {
    }

    protected EClass eStaticClass() {
        return LintopologyPackage.Literals.LIN_CLUSTER_CONTENT;
    }
}

