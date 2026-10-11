/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package gautosar.gswcomponents.gswcinternalbehavior;

import gautosar.gswcomponents.gswcinternalbehavior.GswcinternalbehaviorPackage;
import gautosar.gswcomponents.gswcinternalbehavior.impl.GswcinternalbehaviorFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface GswcinternalbehaviorFactory
extends EFactory {
    public static final GswcinternalbehaviorFactory eINSTANCE = GswcinternalbehaviorFactoryImpl.init();

    public GswcinternalbehaviorPackage getGswcinternalbehaviorPackage();
}

