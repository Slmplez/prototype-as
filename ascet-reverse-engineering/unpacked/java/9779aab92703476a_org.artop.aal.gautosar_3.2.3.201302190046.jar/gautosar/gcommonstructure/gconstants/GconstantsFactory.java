/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package gautosar.gcommonstructure.gconstants;

import gautosar.gcommonstructure.gconstants.GconstantsPackage;
import gautosar.gcommonstructure.gconstants.impl.GconstantsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface GconstantsFactory
extends EFactory {
    public static final GconstantsFactory eINSTANCE = GconstantsFactoryImpl.init();

    public GconstantsPackage getGconstantsPackage();
}

