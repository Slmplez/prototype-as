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
package autosar21.swcomponent.datatype.valuemodel.impl;

import autosar21.swcomponent.datatype.valuemodel.V;
import autosar21.swcomponent.datatype.valuemodel.ValuemodelFactory;
import autosar21.swcomponent.datatype.valuemodel.ValuemodelPackage;
import autosar21.swcomponent.datatype.valuemodel.Vf;
import autosar21.swcomponent.datatype.valuemodel.Vt;
import autosar21.swcomponent.datatype.valuemodel.impl.VImpl;
import autosar21.swcomponent.datatype.valuemodel.impl.VfImpl;
import autosar21.swcomponent.datatype.valuemodel.impl.VtImpl;
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
            ValuemodelFactory theValuemodelFactory = (ValuemodelFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/swc/d/vm");
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
            case 0: {
                return this.createV();
            }
            case 2: {
                return this.createVf();
            }
            case 3: {
                return this.createVt();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public V createV() {
        VImpl v = new VImpl();
        return v;
    }

    public Vf createVf() {
        VfImpl vf = new VfImpl();
        return vf;
    }

    public Vt createVt() {
        VtImpl vt = new VtImpl();
        return vt;
    }

    public ValuemodelPackage getValuemodelPackage() {
        return (ValuemodelPackage)this.getEPackage();
    }

    @Deprecated
    public static ValuemodelPackage getPackage() {
        return ValuemodelPackage.eINSTANCE;
    }
}

