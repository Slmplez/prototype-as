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
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefs.util;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefs.InstancerefsPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefs.OperationArgumentInComponentInstanceRef;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefs.VariableInComponentInstanceRef;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefs.util.InstancerefsSwitch;
import autosar40.genericstructure.abstractstructure.AtpInstanceRef;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class InstancerefsAdapterFactory
extends AdapterFactoryImpl {
    protected static InstancerefsPackage modelPackage;
    protected InstancerefsSwitch<Adapter> modelSwitch = new InstancerefsSwitch<Adapter>(){

        @Override
        public Adapter caseVariableInComponentInstanceRef(VariableInComponentInstanceRef object) {
            return InstancerefsAdapterFactory.this.createVariableInComponentInstanceRefAdapter();
        }

        @Override
        public Adapter caseOperationArgumentInComponentInstanceRef(OperationArgumentInComponentInstanceRef object) {
            return InstancerefsAdapterFactory.this.createOperationArgumentInComponentInstanceRefAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return InstancerefsAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return InstancerefsAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseAtpInstanceRef(AtpInstanceRef object) {
            return InstancerefsAdapterFactory.this.createAtpInstanceRefAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return InstancerefsAdapterFactory.this.createEObjectAdapter();
        }
    };

    public InstancerefsAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = InstancerefsPackage.eINSTANCE;
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

    public Adapter createVariableInComponentInstanceRefAdapter() {
        return null;
    }

    public Adapter createOperationArgumentInComponentInstanceRefAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createAtpInstanceRefAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

