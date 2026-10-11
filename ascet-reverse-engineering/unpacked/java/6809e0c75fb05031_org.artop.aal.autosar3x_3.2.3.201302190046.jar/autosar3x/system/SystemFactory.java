/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.system;

import autosar3x.system.SoftwareComposition;
import autosar3x.system.System;
import autosar3x.system.SystemMapping;
import autosar3x.system.SystemPackage;
import autosar3x.system.impl.SystemFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface SystemFactory
extends EFactory {
    public static final SystemFactory eINSTANCE = SystemFactoryImpl.init();

    public SoftwareComposition createSoftwareComposition();

    public SystemMapping createSystemMapping();

    public System createSystem();

    public SystemPackage getSystemPackage();
}

