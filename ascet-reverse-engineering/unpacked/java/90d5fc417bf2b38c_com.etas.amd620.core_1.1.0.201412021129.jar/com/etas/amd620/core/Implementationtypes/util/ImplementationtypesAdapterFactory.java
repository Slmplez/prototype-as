/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.Implementationtypes.util;

import com.etas.amd620.core.Implementationtypes.ColorT;
import com.etas.amd620.core.Implementationtypes.DocumentRoot;
import com.etas.amd620.core.Implementationtypes.FileReferenceT;
import com.etas.amd620.core.Implementationtypes.FormattedTextT;
import com.etas.amd620.core.Implementationtypes.GenericDataT;
import com.etas.amd620.core.Implementationtypes.IconT;
import com.etas.amd620.core.Implementationtypes.ImplementationTypeType;
import com.etas.amd620.core.Implementationtypes.ImplementationTypesType;
import com.etas.amd620.core.Implementationtypes.ImplementationtypesPackage;
import com.etas.amd620.core.Implementationtypes.IntervalT;
import com.etas.amd620.core.Implementationtypes.ItemRefT;
import com.etas.amd620.core.Implementationtypes.NoteType;
import com.etas.amd620.core.Implementationtypes.NotesT;
import com.etas.amd620.core.Implementationtypes.OptionT;
import com.etas.amd620.core.Implementationtypes.PointT;
import com.etas.amd620.core.Implementationtypes.SizeT;
import com.etas.amd620.core.Implementationtypes.TimeStampT;
import com.etas.amd620.core.Implementationtypes.ViewType;
import com.etas.amd620.core.Implementationtypes.util.ImplementationtypesSwitch;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class ImplementationtypesAdapterFactory
extends AdapterFactoryImpl {
    protected static ImplementationtypesPackage modelPackage;
    protected ImplementationtypesSwitch<Adapter> modelSwitch = new ImplementationtypesSwitch<Adapter>(){

        @Override
        public Adapter caseColorT(ColorT object) {
            return ImplementationtypesAdapterFactory.this.createColorTAdapter();
        }

        @Override
        public Adapter caseDocumentRoot(DocumentRoot object) {
            return ImplementationtypesAdapterFactory.this.createDocumentRootAdapter();
        }

        @Override
        public Adapter caseFileReferenceT(FileReferenceT object) {
            return ImplementationtypesAdapterFactory.this.createFileReferenceTAdapter();
        }

        @Override
        public Adapter caseFormattedTextT(FormattedTextT object) {
            return ImplementationtypesAdapterFactory.this.createFormattedTextTAdapter();
        }

        @Override
        public Adapter caseGenericDataT(GenericDataT object) {
            return ImplementationtypesAdapterFactory.this.createGenericDataTAdapter();
        }

        @Override
        public Adapter caseIconT(IconT object) {
            return ImplementationtypesAdapterFactory.this.createIconTAdapter();
        }

        @Override
        public Adapter caseImplementationTypesType(ImplementationTypesType object) {
            return ImplementationtypesAdapterFactory.this.createImplementationTypesTypeAdapter();
        }

        @Override
        public Adapter caseImplementationTypeType(ImplementationTypeType object) {
            return ImplementationtypesAdapterFactory.this.createImplementationTypeTypeAdapter();
        }

        @Override
        public Adapter caseIntervalT(IntervalT object) {
            return ImplementationtypesAdapterFactory.this.createIntervalTAdapter();
        }

        @Override
        public Adapter caseItemRefT(ItemRefT object) {
            return ImplementationtypesAdapterFactory.this.createItemRefTAdapter();
        }

        @Override
        public Adapter caseNotesT(NotesT object) {
            return ImplementationtypesAdapterFactory.this.createNotesTAdapter();
        }

        @Override
        public Adapter caseNoteType(NoteType object) {
            return ImplementationtypesAdapterFactory.this.createNoteTypeAdapter();
        }

        @Override
        public Adapter caseOptionT(OptionT object) {
            return ImplementationtypesAdapterFactory.this.createOptionTAdapter();
        }

        @Override
        public Adapter casePointT(PointT object) {
            return ImplementationtypesAdapterFactory.this.createPointTAdapter();
        }

        @Override
        public Adapter caseSizeT(SizeT object) {
            return ImplementationtypesAdapterFactory.this.createSizeTAdapter();
        }

        @Override
        public Adapter caseTimeStampT(TimeStampT object) {
            return ImplementationtypesAdapterFactory.this.createTimeStampTAdapter();
        }

        @Override
        public Adapter caseViewType(ViewType object) {
            return ImplementationtypesAdapterFactory.this.createViewTypeAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return ImplementationtypesAdapterFactory.this.createEObjectAdapter();
        }
    };

    public ImplementationtypesAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = ImplementationtypesPackage.eINSTANCE;
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

    public Adapter createColorTAdapter() {
        return null;
    }

    public Adapter createDocumentRootAdapter() {
        return null;
    }

    public Adapter createFileReferenceTAdapter() {
        return null;
    }

    public Adapter createFormattedTextTAdapter() {
        return null;
    }

    public Adapter createGenericDataTAdapter() {
        return null;
    }

    public Adapter createIconTAdapter() {
        return null;
    }

    public Adapter createImplementationTypesTypeAdapter() {
        return null;
    }

    public Adapter createImplementationTypeTypeAdapter() {
        return null;
    }

    public Adapter createIntervalTAdapter() {
        return null;
    }

    public Adapter createItemRefTAdapter() {
        return null;
    }

    public Adapter createNotesTAdapter() {
        return null;
    }

    public Adapter createNoteTypeAdapter() {
        return null;
    }

    public Adapter createOptionTAdapter() {
        return null;
    }

    public Adapter createPointTAdapter() {
        return null;
    }

    public Adapter createSizeTAdapter() {
        return null;
    }

    public Adapter createTimeStampTAdapter() {
        return null;
    }

    public Adapter createViewTypeAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

