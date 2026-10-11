/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package gautosar.gswcomponents.gswcinternalbehavior.gdataelements;

import gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GdataelementsPackage;
import gautosar.gswcomponents.gswcinternalbehavior.gdataelements.impl.GdataelementsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface GdataelementsFactory
extends EFactory {
    public static final GdataelementsFactory eINSTANCE = GdataelementsFactoryImpl.init();

    public GdataelementsPackage getGdataelementsPackage();
}

