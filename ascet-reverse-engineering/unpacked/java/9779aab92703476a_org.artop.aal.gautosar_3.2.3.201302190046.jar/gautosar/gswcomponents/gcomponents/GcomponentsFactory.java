/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package gautosar.gswcomponents.gcomponents;

import gautosar.gswcomponents.gcomponents.GcomponentsPackage;
import gautosar.gswcomponents.gcomponents.impl.GcomponentsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface GcomponentsFactory
extends EFactory {
    public static final GcomponentsFactory eINSTANCE = GcomponentsFactoryImpl.init();

    public GcomponentsPackage getGcomponentsPackage();
}

