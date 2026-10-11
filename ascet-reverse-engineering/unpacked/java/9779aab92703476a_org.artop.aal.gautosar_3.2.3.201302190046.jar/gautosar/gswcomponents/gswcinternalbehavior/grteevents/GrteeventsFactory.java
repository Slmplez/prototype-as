/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package gautosar.gswcomponents.gswcinternalbehavior.grteevents;

import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GrteeventsPackage;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.impl.GrteeventsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface GrteeventsFactory
extends EFactory {
    public static final GrteeventsFactory eINSTANCE = GrteeventsFactoryImpl.init();

    public GrteeventsPackage getGrteeventsPackage();
}

