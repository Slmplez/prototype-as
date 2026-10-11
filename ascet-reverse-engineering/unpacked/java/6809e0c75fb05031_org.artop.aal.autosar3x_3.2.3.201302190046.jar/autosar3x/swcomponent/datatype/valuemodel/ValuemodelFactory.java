/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.swcomponent.datatype.valuemodel;

import autosar3x.swcomponent.datatype.valuemodel.V;
import autosar3x.swcomponent.datatype.valuemodel.ValuemodelPackage;
import autosar3x.swcomponent.datatype.valuemodel.Vf;
import autosar3x.swcomponent.datatype.valuemodel.Vt;
import autosar3x.swcomponent.datatype.valuemodel.impl.ValuemodelFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ValuemodelFactory
extends EFactory {
    public static final ValuemodelFactory eINSTANCE = ValuemodelFactoryImpl.init();

    public Vt createVt();

    public V createV();

    public Vf createVf();

    public ValuemodelPackage getValuemodelPackage();
}

