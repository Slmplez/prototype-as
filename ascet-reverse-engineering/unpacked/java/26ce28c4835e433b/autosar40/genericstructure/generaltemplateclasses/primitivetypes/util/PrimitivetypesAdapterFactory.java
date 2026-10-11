/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.genericstructure.generaltemplateclasses.primitivetypes.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.BooleanContainer;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.FloatContainer;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.IntegerContainer;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.PrimitivetypesPackage;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.StringContainer;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.util.PrimitivetypesSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class PrimitivetypesAdapterFactory
extends AdapterFactoryImpl {
    protected static PrimitivetypesPackage modelPackage;
    protected PrimitivetypesSwitch<Adapter> modelSwitch = new PrimitivetypesSwitch<Adapter>(){

        @Override
        public Adapter caseStringContainer(StringContainer object) {
            return PrimitivetypesAdapterFactory.this.createStringContainerAdapter();
        }

        @Override
        public Adapter caseFloatContainer(FloatContainer object) {
            return PrimitivetypesAdapterFactory.this.createFloatContainerAdapter();
        }

        @Override
        public Adapter caseIntegerContainer(IntegerContainer object) {
            return PrimitivetypesAdapterFactory.this.createIntegerContainerAdapter();
        }

        @Override
        public Adapter caseBooleanContainer(BooleanContainer object) {
            return PrimitivetypesAdapterFactory.this.createBooleanContainerAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return PrimitivetypesAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return PrimitivetypesAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return PrimitivetypesAdapterFactory.this.createEObjectAdapter();
        }
    };

    public PrimitivetypesAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = PrimitivetypesPackage.eINSTANCE;
        }
    }

    public boolean isFactoryForType(Object object) {
        if (object == modelPackage) {
            return true;
        }
        if (object instanceof EObject) {
            return ((EObject)object).eClass().getEPackage() == modelPackage;
        }
        return false;
    }

    public Adapter createAdapter(Notifier target) {
        return this.modelSwitch.doSwitch((EObject)target);
    }

    public Adapter createStringContainerAdapter() {
        return null;
    }

    public Adapter createFloatContainerAdapter() {
        return null;
    }

    public Adapter createIntegerContainerAdapter() {
        return null;
    }

    public Adapter createBooleanContainerAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

