/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcomplex;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcomplex.TDEventComplex;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcomplex.TdeventcomplexPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcomplex.impl.TdeventcomplexFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface TdeventcomplexFactory
extends EFactory {
    public static final TdeventcomplexFactory eINSTANCE = TdeventcomplexFactoryImpl.init();

    public TDEventComplex createTDEventComplex();

    public TdeventcomplexPackage getTdeventcomplexPackage();
}

