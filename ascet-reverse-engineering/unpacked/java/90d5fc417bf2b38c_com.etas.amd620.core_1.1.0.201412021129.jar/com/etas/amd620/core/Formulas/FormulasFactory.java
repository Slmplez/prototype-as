/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package com.etas.amd620.core.Formulas;

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
import com.etas.amd620.core.Formulas.impl.FormulasFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface FormulasFactory
extends EFactory {
    public static final FormulasFactory eINSTANCE = FormulasFactoryImpl.init();

    public ColorT createColorT();

    public DocumentRoot createDocumentRoot();

    public FileReferenceT createFileReferenceT();

    public FormattedTextT createFormattedTextT();

    public FormulaComplexType createFormulaComplexType();

    public FormulasType createFormulasType();

    public GenericDataT createGenericDataT();

    public IconT createIconT();

    public IntervalT createIntervalT();

    public ItemRefT createItemRefT();

    public NotesT createNotesT();

    public NoteType createNoteType();

    public OptionT createOptionT();

    public ParameterType createParameterType();

    public PointT createPointT();

    public SizeT createSizeT();

    public TimeStampT createTimeStampT();

    public ViewType createViewType();

    public FormulasPackage getFormulasPackage();
}

