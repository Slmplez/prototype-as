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
package autosar40.standardization.blueprintdedicated.portinterfaceblueprint.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintMapping;
import autosar40.standardization.blueprintdedicated.portinterfaceblueprint.PortInterfaceBlueprintMapping;
import autosar40.standardization.blueprintdedicated.portinterfaceblueprint.PortinterfaceblueprintPackage;
import autosar40.standardization.blueprintdedicated.portinterfaceblueprint.util.PortinterfaceblueprintSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class PortinterfaceblueprintAdapterFactory
extends AdapterFactoryImpl {
    protected static PortinterfaceblueprintPackage modelPackage;
    protected PortinterfaceblueprintSwitch<Adapter> modelSwitch = new PortinterfaceblueprintSwitch<Adapter>(){

        @Override
        public Adapter casePortInterfaceBlueprintMapping(PortInterfaceBlueprintMapping object) {
            return PortinterfaceblueprintAdapterFactory.this.createPortInterfaceBlueprintMappingAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return PortinterfaceblueprintAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return PortinterfaceblueprintAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseAtpBlueprintMapping(AtpBlueprintMapping object) {
            return PortinterfaceblueprintAdapterFactory.this.createAtpBlueprintMappingAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return PortinterfaceblueprintAdapterFactory.this.createEObjectAdapter();
        }
    };

    public PortinterfaceblueprintAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = PortinterfaceblueprintPackage.eINSTANCE;
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

    public Adapter createPortInterfaceBlueprintMappingAdapter() {
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

