/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package gautosar.gswcomponents.gcomposition;

import gautosar.gswcomponents.gcomposition.GcompositionPackage;
import gautosar.gswcomponents.gcomposition.impl.GcompositionFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface GcompositionFactory
extends EFactory {
    public static final GcompositionFactory eINSTANCE = GcompositionFactoryImpl.init();

    public GcompositionPackage getGcompositionPackage();
}

