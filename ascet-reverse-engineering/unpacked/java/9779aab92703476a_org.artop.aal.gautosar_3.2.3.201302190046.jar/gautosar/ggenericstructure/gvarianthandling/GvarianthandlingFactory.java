/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package gautosar.ggenericstructure.gvarianthandling;

import gautosar.ggenericstructure.gvarianthandling.GvarianthandlingPackage;
import gautosar.ggenericstructure.gvarianthandling.impl.GvarianthandlingFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface GvarianthandlingFactory
extends EFactory {
    public static final GvarianthandlingFactory eINSTANCE = GvarianthandlingFactoryImpl.init();

    public GvarianthandlingPackage getGvarianthandlingPackage();
}

