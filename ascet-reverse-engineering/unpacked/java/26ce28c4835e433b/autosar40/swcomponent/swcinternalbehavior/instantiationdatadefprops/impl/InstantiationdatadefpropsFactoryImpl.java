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
package autosar40.swcomponent.swcinternalbehavior.instantiationdatadefprops.impl;

import autosar40.swcomponent.swcinternalbehavior.instantiationdatadefprops.InstantiationDataDefProps;
import autosar40.swcomponent.swcinternalbehavior.instantiationdatadefprops.InstantiationdatadefpropsFactory;
import autosar40.swcomponent.swcinternalbehavior.instantiationdatadefprops.InstantiationdatadefpropsPackage;
import autosar40.swcomponent.swcinternalbehavior.instantiationdatadefprops.impl.InstantiationDataDefPropsImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class InstantiationdatadefpropsFactoryImpl
extends EFactoryImpl
implements InstantiationdatadefpropsFactory {
    public static InstantiationdatadefpropsFactory init() {
        try {
            InstantiationdatadefpropsFactory theInstantiationdatadefpropsFactory = (InstantiationdatadefpropsFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/swc/sib/iddp");
            if (theInstantiationdatadefpropsFactory != null) {
                return theInstantiationdatadefpropsFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new InstantiationdatadefpropsFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createInstantiationDataDefProps();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public InstantiationDataDefProps createInstantiationDataDefProps() {
        InstantiationDataDefPropsImpl instantiationDataDefProps = new InstantiationDataDefPropsImpl();
        return instantiationDataDefProps;
    }

    public InstantiationdatadefpropsPackage getInstantiationdatadefpropsPackage() {
        return (InstantiationdatadefpropsPackage)this.getEPackage();
    }

    @Deprecated
    public static InstantiationdatadefpropsPackage getPackage() {
        return InstantiationdatadefpropsPackage.eINSTANCE;
    }
}

