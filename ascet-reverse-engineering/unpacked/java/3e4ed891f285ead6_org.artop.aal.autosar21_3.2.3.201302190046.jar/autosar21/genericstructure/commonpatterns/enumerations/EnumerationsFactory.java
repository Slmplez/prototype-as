/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.genericstructure.commonpatterns.enumerations;

import autosar21.genericstructure.commonpatterns.enumerations.EnumerationsPackage;
import autosar21.genericstructure.commonpatterns.enumerations.impl.EnumerationsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface EnumerationsFactory
extends EFactory {
    public static final EnumerationsFactory eINSTANCE = EnumerationsFactoryImpl.init();

    public EnumerationsPackage getEnumerationsPackage();
}

