/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package gautosar.gcommonstructure.ginternalbehavior;

import gautosar.gcommonstructure.ginternalbehavior.GinternalbehaviorPackage;
import gautosar.gcommonstructure.ginternalbehavior.impl.GinternalbehaviorFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface GinternalbehaviorFactory
extends EFactory {
    public static final GinternalbehaviorFactory eINSTANCE = GinternalbehaviorFactoryImpl.init();

    public GinternalbehaviorPackage getGinternalbehaviorPackage();
}

