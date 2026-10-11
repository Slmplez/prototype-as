/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package com.etas.amd620.core.Implementationtypes;

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
import com.etas.amd620.core.Implementationtypes.impl.ImplementationtypesFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ImplementationtypesFactory
extends EFactory {
    public static final ImplementationtypesFactory eINSTANCE = ImplementationtypesFactoryImpl.init();

    public ColorT createColorT();

    public DocumentRoot createDocumentRoot();

    public FileReferenceT createFileReferenceT();

    public FormattedTextT createFormattedTextT();

    public GenericDataT createGenericDataT();

    public IconT createIconT();

    public ImplementationTypesType createImplementationTypesType();

    public ImplementationTypeType createImplementationTypeType();

    public IntervalT createIntervalT();

    public ItemRefT createItemRefT();

    public NotesT createNotesT();

    public NoteType createNoteType();

    public OptionT createOptionT();

    public PointT createPointT();

    public SizeT createSizeT();

    public TimeStampT createTimeStampT();

    public ViewType createViewType();

    public ImplementationtypesPackage getImplementationtypesPackage();
}

