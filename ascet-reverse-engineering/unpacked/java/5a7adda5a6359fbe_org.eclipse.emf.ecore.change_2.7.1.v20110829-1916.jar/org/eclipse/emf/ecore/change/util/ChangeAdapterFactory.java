/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EObject
 */
package org.eclipse.emf.ecore.change.util;

import java.util.Map;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.change.ChangeDescription;
import org.eclipse.emf.ecore.change.ChangePackage;
import org.eclipse.emf.ecore.change.FeatureChange;
import org.eclipse.emf.ecore.change.FeatureMapEntry;
import org.eclipse.emf.ecore.change.ListChange;
import org.eclipse.emf.ecore.change.ResourceChange;
import org.eclipse.emf.ecore.change.util.ChangeSwitch;

public class ChangeAdapterFactory
extends AdapterFactoryImpl {
    protected static ChangePackage modelPackage;
    protected ChangeSwitch<Adapter> modelSwitch = new ChangeSwitch<Adapter>(){

        @Override
        public Adapter caseChangeDescription(ChangeDescription object) {
            return ChangeAdapterFactory.this.createChangeDescriptionAdapter();
        }

        @Override
        public Adapter caseEObjectToChangesMapEntry(Map.Entry<EObject, EList<FeatureChange>> object) {
            return ChangeAdapterFactory.this.createEObjectToChangesMapEntryAdapter();
        }

        @Override
        public Adapter caseFeatureChange(FeatureChange object) {
            return ChangeAdapterFactory.this.createFeatureChangeAdapter();
        }

        @Override
        public Adapter caseListChange(ListChange object) {
            return ChangeAdapterFactory.this.createListChangeAdapter();
        }

        @Override
        public Adapter caseResourceChange(ResourceChange object) {
            return ChangeAdapterFactory.this.createResourceChangeAdapter();
        }

        @Override
        public Adapter caseFeatureMapEntry(FeatureMapEntry object) {
            return ChangeAdapterFactory.this.createFeatureMapEntryAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return ChangeAdapterFactory.this.createEObjectAdapter();
        }
    };

    public ChangeAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = ChangePackage.eINSTANCE;
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
        return (Adapter)this.modelSwitch.doSwitch((EObject)target);
    }

    public Adapter createChangeDescriptionAdapter() {
        return null;
    }

    public Adapter createEObjectToChangesMapEntryAdapter() {
        return null;
    }

    public Adapter createFeatureChangeAdapter() {
        return null;
    }

    public Adapter createListChangeAdapter() {
        return null;
    }

    public Adapter createResourceChangeAdapter() {
        return null;
    }

    public Adapter createFeatureMapEntryAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

