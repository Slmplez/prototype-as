/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventswcinternalbehavior;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventswcinternalbehavior.TDEventSwcInternalBehavior;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventswcinternalbehavior.TdeventswcinternalbehaviorPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventswcinternalbehavior.impl.TdeventswcinternalbehaviorFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface TdeventswcinternalbehaviorFactory
extends EFactory {
    public static final TdeventswcinternalbehaviorFactory eINSTANCE = TdeventswcinternalbehaviorFactoryImpl.init();

    public TDEventSwcInternalBehavior createTDEventSwcInternalBehavior();

    public TdeventswcinternalbehaviorPackage getTdeventswcinternalbehaviorPackage();
}

