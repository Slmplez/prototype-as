/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package gautosar.gswcomponents.gdatatype.gcomputationmethod;

import gautosar.gswcomponents.gdatatype.gcomputationmethod.GcomputationmethodPackage;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.impl.GcomputationmethodFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface GcomputationmethodFactory
extends EFactory {
    public static final GcomputationmethodFactory eINSTANCE = GcomputationmethodFactoryImpl.init();

    public GcomputationmethodPackage getGcomputationmethodPackage();
}

