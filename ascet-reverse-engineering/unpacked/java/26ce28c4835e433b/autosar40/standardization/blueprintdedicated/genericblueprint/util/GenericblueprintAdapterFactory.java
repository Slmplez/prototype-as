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
package autosar40.standardization.blueprintdedicated.genericblueprint.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintMapping;
import autosar40.standardization.blueprintdedicated.genericblueprint.BlueprintMapping;
import autosar40.standardization.blueprintdedicated.genericblueprint.GenericblueprintPackage;
import autosar40.standardization.blueprintdedicated.genericblueprint.util.GenericblueprintSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class GenericblueprintAdapterFactory
extends AdapterFactoryImpl {
    protected static GenericblueprintPackage modelPackage;
    protected GenericblueprintSwitch<Adapter> modelSwitch = new GenericblueprintSwitch<Adapter>(){

        @Override
        public Adapter caseBlueprintMapping(BlueprintMapping object) {
            return GenericblueprintAdapterFactory.this.createBlueprintMappingAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return GenericblueprintAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return GenericblueprintAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseAtpBlueprintMapping(AtpBlueprintMapping object) {
            return GenericblueprintAdapterFactory.this.createAtpBlueprintMappingAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return GenericblueprintAdapterFactory.this.createEObjectAdapter();
        }
    };

    public GenericblueprintAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = GenericblueprintPackage.eINSTANCE;
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

    public Adapter createBlueprintMappingAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createAtpBlueprintMappingAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

