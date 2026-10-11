/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.datatype.valuemodel;

import autosar21.swcomponent.datatype.valuemodel.V;
import autosar21.swcomponent.datatype.valuemodel.ValuemodelPackage;
import autosar21.swcomponent.datatype.valuemodel.Vf;
import autosar21.swcomponent.datatype.valuemodel.Vt;
import autosar21.swcomponent.datatype.valuemodel.impl.ValuemodelFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ValuemodelFactory
extends EFactory {
    public static final ValuemodelFactory eINSTANCE = ValuemodelFactoryImpl.init();

    public V createV();

    public Vf createVf();

    public Vt createVt();

    public ValuemodelPackage getValuemodelPackage();
}

