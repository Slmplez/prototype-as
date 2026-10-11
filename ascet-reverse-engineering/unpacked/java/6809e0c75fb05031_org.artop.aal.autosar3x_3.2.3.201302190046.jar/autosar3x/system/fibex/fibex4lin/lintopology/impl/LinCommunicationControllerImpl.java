/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.system.fibex.fibex4lin.lintopology.impl;

import autosar3x.system.fibex.fibex4lin.lintopology.LinCommunicationController;
import autosar3x.system.fibex.fibex4lin.lintopology.LintopologyPackage;
import autosar3x.system.fibex.fibexcore.coretopology.impl.CommunicationControllerImpl;
import org.eclipse.emf.ecore.EClass;

public class LinCommunicationControllerImpl
extends CommunicationControllerImpl
implements LinCommunicationController {
    protected LinCommunicationControllerImpl() {
    }

    protected EClass eStaticClass() {
        return LintopologyPackage.Literals.LIN_COMMUNICATION_CONTROLLER;
    }
}

