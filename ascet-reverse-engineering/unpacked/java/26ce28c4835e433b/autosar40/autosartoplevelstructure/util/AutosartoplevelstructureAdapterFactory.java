/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GAUTOSAR
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.autosartoplevelstructure.util;

import autosar40.autosartoplevelstructure.AUTOSAR;
import autosar40.autosartoplevelstructure.AutosartoplevelstructurePackage;
import autosar40.autosartoplevelstructure.util.AutosartoplevelstructureSwitch;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GAUTOSAR;
import java.util.Map;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class AutosartoplevelstructureAdapterFactory
extends AdapterFactoryImpl {
    protected static AutosartoplevelstructurePackage modelPackage;
    protected AutosartoplevelstructureSwitch<Adapter> modelSwitch = new AutosartoplevelstructureSwitch<Adapter>(){

        @Override
        public Adapter caseAUTOSAR(AUTOSAR object) {
            return AutosartoplevelstructureAdapterFactory.this.createAUTOSARAdapter();
        }

        @Override
        public Adapter caseAUTOSARAllExtensionsMapEntry(Map.Entry<String, EObject> object) {
            return AutosartoplevelstructureAdapterFactory.this.createAUTOSARAllExtensionsMapEntryAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return AutosartoplevelstructureAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return AutosartoplevelstructureAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGAUTOSAR(GAUTOSAR object) {
            return AutosartoplevelstructureAdapterFactory.this.createGAUTOSARAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return AutosartoplevelstructureAdapterFactory.this.createEObjectAdapter();
        }
    };

    public AutosartoplevelstructureAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = AutosartoplevelstructurePackage.eINSTANCE;
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

    public Adapter createAUTOSARAdapter() {
        return null;
    }

    public Adapter createAUTOSARAllExtensionsMapEntryAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createGAUTOSARAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

