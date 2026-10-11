/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.swcomponent.swcinternalbehavior.trigger;

import autosar40.swcomponent.swcinternalbehavior.trigger.ExternalTriggeringPoint;
import autosar40.swcomponent.swcinternalbehavior.trigger.InternalTriggeringPoint;
import autosar40.swcomponent.swcinternalbehavior.trigger.TriggerPackage;
import autosar40.swcomponent.swcinternalbehavior.trigger.impl.TriggerFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface TriggerFactory
extends EFactory {
    public static final TriggerFactory eINSTANCE = TriggerFactoryImpl.init();

    public ExternalTriggeringPoint createExternalTriggeringPoint();

    public InternalTriggeringPoint createInternalTriggeringPoint();

    public TriggerPackage getTriggerPackage();
}

