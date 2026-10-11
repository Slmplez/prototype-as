/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbswinternalbehavior;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbswinternalbehavior.TDEventBswInternalBehavior;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbswinternalbehavior.TdeventbswinternalbehaviorPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbswinternalbehavior.impl.TdeventbswinternalbehaviorFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface TdeventbswinternalbehaviorFactory
extends EFactory {
    public static final TdeventbswinternalbehaviorFactory eINSTANCE = TdeventbswinternalbehaviorFactoryImpl.init();

    public TDEventBswInternalBehavior createTDEventBswInternalBehavior();

    public TdeventbswinternalbehaviorPackage getTdeventbswinternalbehaviorPackage();
}

