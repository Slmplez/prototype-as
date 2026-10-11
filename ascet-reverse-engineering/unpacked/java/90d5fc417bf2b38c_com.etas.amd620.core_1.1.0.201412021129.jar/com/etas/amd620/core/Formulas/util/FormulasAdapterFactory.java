/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.Formulas.util;

import com.etas.amd620.core.Formulas.ColorT;
import com.etas.amd620.core.Formulas.DocumentRoot;
import com.etas.amd620.core.Formulas.FileReferenceT;
import com.etas.amd620.core.Formulas.FormattedTextT;
import com.etas.amd620.core.Formulas.FormulaComplexType;
import com.etas.amd620.core.Formulas.FormulasPackage;
import com.etas.amd620.core.Formulas.FormulasType;
import com.etas.amd620.core.Formulas.GenericDataT;
import com.etas.amd620.core.Formulas.IconT;
import com.etas.amd620.core.Formulas.IntervalT;
import com.etas.amd620.core.Formulas.ItemRefT;
import com.etas.amd620.core.Formulas.NoteType;
import com.etas.amd620.core.Formulas.NotesT;
import com.etas.amd620.core.Formulas.OptionT;
import com.etas.amd620.core.Formulas.ParameterType;
import com.etas.amd620.core.Formulas.PointT;
import com.etas.amd620.core.Formulas.SizeT;
import com.etas.amd620.core.Formulas.TimeStampT;
import com.etas.amd620.core.Formulas.ViewType;
import com.etas.amd620.core.Formulas.util.FormulasSwitch;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class FormulasAdapterFactory
extends AdapterFactoryImpl {
    protected static FormulasPackage modelPackage;
    protected FormulasSwitch<Adapter> modelSwitch = new FormulasSwitch<Adapter>(){

        @Override
        public Adapter caseColorT(ColorT object) {
            return FormulasAdapterFactory.this.createColorTAdapter();
        }

        @Override
        public Adapter caseDocumentRoot(DocumentRoot object) {
            return FormulasAdapterFactory.this.createDocumentRootAdapter();
        }

        @Override
        public Adapter caseFileReferenceT(FileReferenceT object) {
            return FormulasAdapterFactory.this.createFileReferenceTAdapter();
        }

        @Override
        public Adapter caseFormattedTextT(FormattedTextT object) {
            return FormulasAdapterFactory.this.createFormattedTextTAdapter();
        }

        @Override
        public Adapter caseFormulaComplexType(FormulaComplexType object) {
            return FormulasAdapterFactory.this.createFormulaComplexTypeAdapter();
        }

        @Override
        public Adapter caseFormulasType(FormulasType object) {
            return FormulasAdapterFactory.this.createFormulasTypeAdapter();
        }

        @Override
        public Adapter caseGenericDataT(GenericDataT object) {
            return FormulasAdapterFactory.this.createGenericDataTAdapter();
        }

        @Override
        public Adapter caseIconT(IconT object) {
            return FormulasAdapterFactory.this.createIconTAdapter();
        }

        @Override
        public Adapter caseIntervalT(IntervalT object) {
            return FormulasAdapterFactory.this.createIntervalTAdapter();
        }

        @Override
        public Adapter caseItemRefT(ItemRefT object) {
            return FormulasAdapterFactory.this.createItemRefTAdapter();
        }

        @Override
        public Adapter caseNotesT(NotesT object) {
            return FormulasAdapterFactory.this.createNotesTAdapter();
        }

        @Override
        public Adapter caseNoteType(NoteType object) {
            return FormulasAdapterFactory.this.createNoteTypeAdapter();
        }

        @Override
        public Adapter caseOptionT(OptionT object) {
            return FormulasAdapterFactory.this.createOptionTAdapter();
        }

        @Override
        public Adapter caseParameterType(ParameterType object) {
            return FormulasAdapterFactory.this.createParameterTypeAdapter();
        }

        @Override
        public Adapter casePointT(PointT object) {
            return FormulasAdapterFactory.this.createPointTAdapter();
        }

        @Override
        public Adapter caseSizeT(SizeT object) {
            return FormulasAdapterFactory.this.createSizeTAdapter();
        }

        @Override
        public Adapter caseTimeStampT(TimeStampT object) {
            return FormulasAdapterFactory.this.createTimeStampTAdapter();
        }

        @Override
        public Adapter caseViewType(ViewType object) {
            return FormulasAdapterFactory.this.createViewTypeAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return FormulasAdapterFactory.this.createEObjectAdapter();
        }
    };

    public FormulasAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = FormulasPackage.eINSTANCE;
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

    public Adapter createFormulaComplexTypeAdapter() {
        return null;
    }

    public Adapter createFormulasTypeAdapter() {
        return null;
    }

    public Adapter createGenericDataTAdapter() {
        return null;
    }

    public Adapter createIconTAdapter() {
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

    public Adapter createParameterTypeAdapter() {
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

