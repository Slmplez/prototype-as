/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar3x.swcomponent.datatype.valuemodel.impl;

import autosar3x.swcomponent.datatype.valuemodel.V;
import autosar3x.swcomponent.datatype.valuemodel.ValuemodelFactory;
import autosar3x.swcomponent.datatype.valuemodel.ValuemodelPackage;
import autosar3x.swcomponent.datatype.valuemodel.Vf;
import autosar3x.swcomponent.datatype.valuemodel.Vt;
import autosar3x.swcomponent.datatype.valuemodel.impl.VImpl;
import autosar3x.swcomponent.datatype.valuemodel.impl.VfImpl;
import autosar3x.swcomponent.datatype.valuemodel.impl.VtImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class ValuemodelFactoryImpl
extends EFactoryImpl
implements ValuemodelFactory {
    public static ValuemodelFactory init() {
        try {
            ValuemodelFactory theValuemodelFactory = (ValuemodelFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/swc/d/vm");
            if (theValuemodelFactory != null) {
                return theValuemodelFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new ValuemodelFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 1: {
                return this.createVt();
            }
            case 2: {
                return this.createV();
            }
            case 3: {
                return this.createVf();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Vt createVt() {
        VtImpl vt = new VtImpl();
        return vt;
    }

    public V createV() {
        VImpl v = new VImpl();
        return v;
    }

    public Vf createVf() {
        VfImpl vf = new VfImpl();
        return vf;
    }

    public ValuemodelPackage getValuemodelPackage() {
        return (ValuemodelPackage)this.getEPackage();
    }

    @Deprecated
    public static ValuemodelPackage getPackage() {
        return ValuemodelPackage.eINSTANCE;
    }
}

