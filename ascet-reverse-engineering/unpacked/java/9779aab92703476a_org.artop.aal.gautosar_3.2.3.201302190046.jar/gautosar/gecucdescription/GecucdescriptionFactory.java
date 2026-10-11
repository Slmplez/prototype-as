/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package gautosar.gecucdescription;

import gautosar.gecucdescription.GecucdescriptionPackage;
import gautosar.gecucdescription.impl.GecucdescriptionFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface GecucdescriptionFactory
extends EFactory {
    public static final GecucdescriptionFactory eINSTANCE = GecucdescriptionFactoryImpl.init();

    public GecucdescriptionPackage getGecucdescriptionPackage();
}

