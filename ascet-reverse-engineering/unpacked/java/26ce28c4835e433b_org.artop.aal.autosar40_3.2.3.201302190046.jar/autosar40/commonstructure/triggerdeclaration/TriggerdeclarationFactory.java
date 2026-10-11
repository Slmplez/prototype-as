/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.commonstructure.triggerdeclaration;

import autosar40.commonstructure.triggerdeclaration.Trigger;
import autosar40.commonstructure.triggerdeclaration.TriggerMapping;
import autosar40.commonstructure.triggerdeclaration.TriggerRefConditional;
import autosar40.commonstructure.triggerdeclaration.TriggerdeclarationPackage;
import autosar40.commonstructure.triggerdeclaration.impl.TriggerdeclarationFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface TriggerdeclarationFactory
extends EFactory {
    public static final TriggerdeclarationFactory eINSTANCE = TriggerdeclarationFactoryImpl.init();

    public Trigger createTrigger();

    public TriggerMapping createTriggerMapping();

    public TriggerRefConditional createTriggerRefConditional();

    public TriggerdeclarationPackage getTriggerdeclarationPackage();
}

