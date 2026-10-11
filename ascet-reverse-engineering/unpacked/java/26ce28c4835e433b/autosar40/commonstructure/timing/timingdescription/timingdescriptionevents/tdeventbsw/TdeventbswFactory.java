/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw.TDEventBswModeDeclaration;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw.TDEventBswModule;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw.TdeventbswPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw.impl.TdeventbswFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface TdeventbswFactory
extends EFactory {
    public static final TdeventbswFactory eINSTANCE = TdeventbswFactoryImpl.init();

    public TDEventBswModeDeclaration createTDEventBswModeDeclaration();

    public TDEventBswModule createTDEventBswModule();

    public TdeventbswPackage getTdeventbswPackage();
}

