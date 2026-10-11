/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.commonstructure.timing.timingdescription;

import autosar40.commonstructure.timing.timingdescription.TimingDescriptionEventChain;
import autosar40.commonstructure.timing.timingdescription.TimingdescriptionPackage;
import autosar40.commonstructure.timing.timingdescription.impl.TimingdescriptionFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface TimingdescriptionFactory
extends EFactory {
    public static final TimingdescriptionFactory eINSTANCE = TimingdescriptionFactoryImpl.init();

    public TimingDescriptionEventChain createTimingDescriptionEventChain();

    public TimingdescriptionPackage getTimingdescriptionPackage();
}

