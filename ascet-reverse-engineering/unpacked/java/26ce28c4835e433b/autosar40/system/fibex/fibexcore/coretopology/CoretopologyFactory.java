/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.system.fibex.fibexcore.coretopology;

import autosar40.system.fibex.fibexcore.coretopology.CommunicationConnectorRefConditional;
import autosar40.system.fibex.fibexcore.coretopology.CoretopologyPackage;
import autosar40.system.fibex.fibexcore.coretopology.CycleCounter;
import autosar40.system.fibex.fibexcore.coretopology.CycleRepetition;
import autosar40.system.fibex.fibexcore.coretopology.EcuInstance;
import autosar40.system.fibex.fibexcore.coretopology.impl.CoretopologyFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface CoretopologyFactory
extends EFactory {
    public static final CoretopologyFactory eINSTANCE = CoretopologyFactoryImpl.init();

    public CommunicationConnectorRefConditional createCommunicationConnectorRefConditional();

    public CycleCounter createCycleCounter();

    public CycleRepetition createCycleRepetition();

    public EcuInstance createEcuInstance();

    public CoretopologyPackage getCoretopologyPackage();
}

