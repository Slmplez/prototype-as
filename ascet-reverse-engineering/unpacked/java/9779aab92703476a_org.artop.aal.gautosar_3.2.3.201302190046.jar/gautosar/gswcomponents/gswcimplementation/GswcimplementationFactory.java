/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package gautosar.gswcomponents.gswcimplementation;

import gautosar.gswcomponents.gswcimplementation.GswcimplementationPackage;
import gautosar.gswcomponents.gswcimplementation.impl.GswcimplementationFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface GswcimplementationFactory
extends EFactory {
    public static final GswcimplementationFactory eINSTANCE = GswcimplementationFactoryImpl.init();

    public GswcimplementationPackage getGswcimplementationPackage();
}

