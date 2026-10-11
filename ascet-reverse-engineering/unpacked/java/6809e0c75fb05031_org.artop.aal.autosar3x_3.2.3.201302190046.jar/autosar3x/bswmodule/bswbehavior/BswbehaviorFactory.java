/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.bswmodule.bswbehavior;

import autosar3x.bswmodule.bswbehavior.BswBehavior;
import autosar3x.bswmodule.bswbehavior.BswCyclicEvent;
import autosar3x.bswmodule.bswbehavior.BswInterruptEntity;
import autosar3x.bswmodule.bswbehavior.BswModuleEntity;
import autosar3x.bswmodule.bswbehavior.BswSchedulableEntity;
import autosar3x.bswmodule.bswbehavior.BswSporadicEvent;
import autosar3x.bswmodule.bswbehavior.BswbehaviorPackage;
import autosar3x.bswmodule.bswbehavior.impl.BswbehaviorFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface BswbehaviorFactory
extends EFactory {
    public static final BswbehaviorFactory eINSTANCE = BswbehaviorFactoryImpl.init();

    public BswBehavior createBswBehavior();

    public BswSchedulableEntity createBswSchedulableEntity();

    public BswCyclicEvent createBswCyclicEvent();

    public BswInterruptEntity createBswInterruptEntity();

    public BswSporadicEvent createBswSporadicEvent();

    public BswModuleEntity createBswModuleEntity();

    public BswbehaviorPackage getBswbehaviorPackage();
}

