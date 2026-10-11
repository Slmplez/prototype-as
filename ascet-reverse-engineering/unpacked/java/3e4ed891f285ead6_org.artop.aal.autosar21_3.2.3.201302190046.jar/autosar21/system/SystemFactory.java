/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.system;

import autosar21.system.CommunicationMatrixInstance;
import autosar21.system.GatewayInstance;
import autosar21.system.SoftwareComposition;
import autosar21.system.System;
import autosar21.system.SystemCommunication;
import autosar21.system.SystemMapping;
import autosar21.system.SystemPackage;
import autosar21.system.SystemTopologyInstance;
import autosar21.system.impl.SystemFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface SystemFactory
extends EFactory {
    public static final SystemFactory eINSTANCE = SystemFactoryImpl.init();

    public SystemTopologyInstance createSystemTopologyInstance();

    public CommunicationMatrixInstance createCommunicationMatrixInstance();

    public GatewayInstance createGatewayInstance();

    public System createSystem();

    public SystemCommunication createSystemCommunication();

    public SystemMapping createSystemMapping();

    public SoftwareComposition createSoftwareComposition();

    public SystemPackage getSystemPackage();
}

