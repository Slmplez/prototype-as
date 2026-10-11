/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TDEventModeDeclaration;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TDEventOperation;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TDEventVariableDataPrototype;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TdeventvfbPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.impl.TdeventvfbFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface TdeventvfbFactory
extends EFactory {
    public static final TdeventvfbFactory eINSTANCE = TdeventvfbFactoryImpl.init();

    public TDEventModeDeclaration createTDEventModeDeclaration();

    public TDEventOperation createTDEventOperation();

    public TDEventVariableDataPrototype createTDEventVariableDataPrototype();

    public TdeventvfbPackage getTdeventvfbPackage();
}

