/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package gautosar.gswcomponents.gcomposition.ginstancerefs;

import gautosar.gswcomponents.gcomposition.ginstancerefs.GinstancerefsPackage;
import gautosar.gswcomponents.gcomposition.ginstancerefs.impl.GinstancerefsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface GinstancerefsFactory
extends EFactory {
    public static final GinstancerefsFactory eINSTANCE = GinstancerefsFactoryImpl.init();

    public GinstancerefsPackage getGinstancerefsPackage();
}

